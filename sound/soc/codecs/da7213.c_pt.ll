; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/da7213.c_pt.bc'
source_filename = "../sound/soc/codecs/da7213.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.da7213_priv = type { ptr, [2 x %struct.regulator_bulk_data], ptr, i32, i32, i32, i8, i8, i8, i8, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.da7213_platform_data = type { i32, i32, i32, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.92, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.92 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.87, [128 x i8] }
%union.anon.87 = type { %union.anon.89 }
%union.anon.89 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_da7213__295_2047_da7213_i2c_driver_init6 = internal global ptr @da7213_i2c_driver_init, section ".initcall6.init", align 4
@da7213_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @da7213_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da7213_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7213_pm, ptr null, ptr null }, ptr @da7213_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_da7213_i2c_driver_exit = internal global ptr @da7213_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [52 x i8] c"snd_soc_da7213.description=ASoC DA7213 Codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [73 x i8] c"snd_soc_da7213.author=Adam Thomson <Adam.Thomson.Opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [52 x i8] c"snd_soc_da7213.file=sound/soc/codecs/snd-soc-da7213\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [27 x i8] c"snd_soc_da7213.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da7213\00", [25 x i8] zeroinitializer }, align 32
@da7213_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da7212\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da7213\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@da7213_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7213_runtime_suspend, ptr @da7213_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@da7213_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da7213\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@da7213_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1968, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get supplies: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da7213_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/da7213.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da7213_i2c_probe._entry_ptr = internal global ptr @da7213_i2c_probe._entry, section ".printk_index", align 4
@da7213_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da7213_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @da7213_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7213_reg_defaults, i32 80, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"da7213:1980:(&da7213_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@da7213_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1983, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@da7213_i2c_probe._entry_ptr.9 = internal global ptr @da7213_i2c_probe._entry.7, section ".printk_index", align 4
@soc_component_dev_da7213 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @da7213_snd_controls, i32 65, ptr @da7213_dapm_widgets, i32 41, ptr @da7213_audio_map, i32 74, ptr @da7213_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7213_set_component_sysclk, ptr @da7213_set_component_pll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7213_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@da7213_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.324, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @da7213_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.220, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.223, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@da7213_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1996, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to register da7213 component: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@da7213_i2c_probe._entry_ptr.12 = internal global ptr @da7213_i2c_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDDA\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VDDIO\00", [26 x i8] zeroinitializer }, align 32
@da7213_reg_defaults = internal constant { [80 x %struct.reg_default], [160 x i8] } { [80 x %struct.reg_default] [%struct.reg_default { i32 33, i32 16 }, %struct.reg_default { i32 34, i32 10 }, %struct.reg_default { i32 35, i32 128 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 32 }, %struct.reg_default { i32 39, i32 12 }, %struct.reg_default { i32 40, i32 1 }, %struct.reg_default { i32 41, i32 8 }, %struct.reg_default { i32 42, i32 50 }, %struct.reg_default { i32 48, i32 53 }, %struct.reg_default { i32 49, i32 53 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 3 }, %struct.reg_default { i32 53, i32 3 }, %struct.reg_default { i32 54, i32 111 }, %struct.reg_default { i32 55, i32 111 }, %struct.reg_default { i32 56, i32 128 }, %struct.reg_default { i32 57, i32 1 }, %struct.reg_default { i32 58, i32 1 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 136 }, %struct.reg_default { i32 66, i32 136 }, %struct.reg_default { i32 67, i32 8 }, %struct.reg_default { i32 68, i32 128 }, %struct.reg_default { i32 69, i32 111 }, %struct.reg_default { i32 70, i32 111 }, %struct.reg_default { i32 71, i32 97 }, %struct.reg_default { i32 72, i32 57 }, %struct.reg_default { i32 73, i32 57 }, %struct.reg_default { i32 74, i32 48 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 96, i32 68 }, %struct.reg_default { i32 97, i32 68 }, %struct.reg_default { i32 98, i32 17 }, %struct.reg_default { i32 99, i32 64 }, %struct.reg_default { i32 100, i32 64 }, %struct.reg_default { i32 101, i32 64 }, %struct.reg_default { i32 102, i32 64 }, %struct.reg_default { i32 103, i32 64 }, %struct.reg_default { i32 104, i32 64 }, %struct.reg_default { i32 105, i32 72 }, %struct.reg_default { i32 106, i32 64 }, %struct.reg_default { i32 107, i32 65 }, %struct.reg_default { i32 108, i32 64 }, %struct.reg_default { i32 109, i32 64 }, %struct.reg_default { i32 110, i32 16 }, %struct.reg_default { i32 111, i32 16 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 145, i32 0 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 149, i32 50 }, %struct.reg_default { i32 150, i32 149 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 153, i32 0 }, %struct.reg_default { i32 154, i32 0 }, %struct.reg_default { i32 155, i32 0 }, %struct.reg_default { i32 156, i32 63 }, %struct.reg_default { i32 157, i32 63 }, %struct.reg_default { i32 158, i32 0 }, %struct.reg_default { i32 159, i32 255 }, %struct.reg_default { i32 160, i32 113 }, %struct.reg_default { i32 161, i32 0 }, %struct.reg_default { i32 162, i32 0 }, %struct.reg_default { i32 166, i32 0 }, %struct.reg_default { i32 167, i32 0 }, %struct.reg_default { i32 171, i32 0 }, %struct.reg_default { i32 172, i32 0 }, %struct.reg_default { i32 173, i32 0 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 176, i32 0 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }], [160 x i8] zeroinitializer }, align 32
@da7213_snd_controls = internal constant { [65 x %struct.snd_kcontrol_new], [784 x i8] } { [65 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @aux_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @da7213_put_mixin_gain, %union.anon.98 { ptr @mixin_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hp_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @lineout_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_adc_audio_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_adc_voice_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_dac_audio_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_dac_voice_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_dac_soft_mute_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_gain_ramp_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_dac_ng_setup_time to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_dac_ng_rampup_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_dac_ng_rampdown_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @da7213_put_alc_sw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_alc_attack_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_alc_release_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_alc_hold_time to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_alc_integ_attack_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_alc_integ_release_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_analog_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_analog_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }], [784 x i8] zeroinitializer }, align 32
@da7213_audio_map = internal constant { [74 x %struct.snd_soc_dapm_route], [984 x i8] } { [74 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.211, ptr null, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr null, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.243, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.244, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.245, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.243, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.244, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.245, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr null, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr null, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr @.str.246, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr @.str.54, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr @.str.56, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr @.str.250, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr @.str.252, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr @.str.56, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr @.str.54, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr @.str.256, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr @.str.215, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr @.str.216, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr @.str.258, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr @.str.259, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.215, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.216, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.258, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.259, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr null, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr @.str.260, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr @.str.261, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr @.str.258, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr @.str.259, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr @.str.260, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr @.str.261, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr @.str.258, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr @.str.259, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr null, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.246, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.256, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.250, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.265, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.267, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.269, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.271, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.252, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.250, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.256, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.276, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.278, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.271, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.269, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr null, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr null, ptr @.str.230, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr null, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr null, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr null, ptr @.str.234, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr null, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr null, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr null, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr null, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr null, ptr @.str.233, ptr null, %struct.snd_soc_dobj zeroinitializer }], [984 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mic 1 Volume\00", [19 x i8] zeroinitializer }, align 32
@mic_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 57, i32 57, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mic 2 Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 58, i32 58, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Aux Volume\00", [21 x i8] zeroinitializer }, align 32
@aux_vol_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 17, i32 1, i32 8, i32 -5400, i32 0, i32 18, i32 63, i32 1, i32 8, i32 -5250, i32 150], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 48, i32 49, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mixin PGA Volume\00", [47 x i8] zeroinitializer }, align 32
@mixin_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 52, i32 53, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Volume\00", [21 x i8] zeroinitializer }, align 32
@digital_gain_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 7, i32 1, i32 8, i32 -9999999, i32 65536, i32 8, i32 127, i32 1, i32 8, i32 -7800, i32 75], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 54, i32 55, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 69, i32 70, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@hp_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5700, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 72, i32 73, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Lineout Volume\00", [17 x i8] zeroinitializer }, align 32
@lineout_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4800, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 74, i32 74, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC EQ Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 67, i32 67, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ1 Volume\00", [17 x i8] zeroinitializer }, align 32
@eq_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1050, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 65, i32 65, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ2 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 65, i32 65, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ3 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 66, i32 66, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ4 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 66, i32 66, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ5 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 67, i32 67, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC HPF Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC HPF Cutoff\00", [17 x i8] zeroinitializer }, align 32
@da7213_adc_audio_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 56, i8 4, i8 4, i32 4, i32 3, ptr @da7213_audio_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC Voice Mode Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Voice Cutoff\00", [47 x i8] zeroinitializer }, align 32
@da7213_adc_voice_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 56, i8 0, i8 0, i32 8, i32 7, ptr @da7213_voice_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC HPF Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 68, i32 68, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC HPF Cutoff\00", [17 x i8] zeroinitializer }, align 32
@da7213_dac_audio_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 4, i8 4, i32 4, i32 3, ptr @da7213_audio_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Voice Mode Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 68, i32 68, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAC Voice Cutoff\00", [47 x i8] zeroinitializer }, align 32
@da7213_dac_voice_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 0, i8 0, i32 8, i32 7, ptr @da7213_voice_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mic 1 Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 99, i32 99, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mic 2 Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Aux Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 96, i32 97, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mixin PGA Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 102, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 103, i32 104, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 108, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Lineout Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 109, i32 109, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Soft Mute Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC Soft Mute Rate\00", [45 x i8] zeroinitializer }, align 32
@da7213_dac_soft_mute_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 64, i8 4, i8 4, i32 7, i32 7, ptr @da7213_dac_soft_mute_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Aux ZC Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 96, i32 97, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mixin PGA ZC Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 102, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone ZC Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 108, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Aux Gain Ramping Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 96, i32 97, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mixin Gain Ramping Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 102, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADC Gain Ramping Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 103, i32 104, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DAC Gain Ramping Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 105, i32 106, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Headphone Gain Ramping Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 108, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Lineout Gain Ramping Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 109, i32 109, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Gain Ramping Rate\00", [46 x i8] zeroinitializer }, align 32
@da7213_gain_ramp_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 146, i8 0, i8 0, i32 4, i32 3, ptr @da7213_gain_ramp_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC NG Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 178, i32 178, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC NG Setup Time\00", [46 x i8] zeroinitializer }, align 32
@da7213_dac_ng_setup_time = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 175, i8 0, i8 0, i32 4, i32 3, ptr @da7213_dac_ng_setup_time_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC NG Rampup Rate\00", [45 x i8] zeroinitializer }, align 32
@da7213_dac_ng_rampup_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 175, i8 2, i8 2, i32 2, i32 1, ptr @da7213_dac_ng_rampup_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC NG Rampdown Rate\00", [43 x i8] zeroinitializer }, align 32
@da7213_dac_ng_rampdown_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 175, i8 3, i8 3, i32 2, i32 1, ptr @da7213_dac_ng_rampdown_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC NG OFF Threshold\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 176, i32 176, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC NG ON Threshold\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 177, i32 177, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC Mono Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 3, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC Invert Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 153, i32 153, i32 3, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 51, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 3, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ALC Attack Rate\00", [16 x i8] zeroinitializer }, align 32
@da7213_alc_attack_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 154, i8 0, i8 0, i32 13, i32 15, ptr @da7213_alc_attack_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ALC Release Rate\00", [47 x i8] zeroinitializer }, align 32
@da7213_alc_release_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 154, i8 4, i8 4, i32 11, i32 15, ptr @da7213_alc_release_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ALC Hold Time\00", [18 x i8] zeroinitializer }, align 32
@da7213_alc_hold_time = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 155, i8 0, i8 0, i32 16, i32 15, ptr @da7213_alc_hold_time_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALC Integ Attack Rate\00", [42 x i8] zeroinitializer }, align 32
@da7213_alc_integ_attack_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 155, i8 4, i8 4, i32 4, i32 3, ptr @da7213_alc_integ_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALC Integ Release Rate\00", [41 x i8] zeroinitializer }, align 32
@da7213_alc_integ_release_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 155, i8 6, i8 6, i32 4, i32 3, ptr @da7213_alc_integ_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ALC Noise Threshold Volume\00", [37 x i8] zeroinitializer }, align 32
@alc_threshold_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 156, i32 156, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Min Threshold Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 157, i32 157, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Max Threshold Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 158, i32 158, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ALC Max Attenuation Volume\00", [37 x i8] zeroinitializer }, align 32
@alc_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 159, i32 159, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Max Gain Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 159, i32 159, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ALC Min Analog Gain Volume\00", [37 x i8] zeroinitializer }, align 32
@alc_analog_gain_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 0, i32 1, i32 8, i32 -9999999, i32 65536, i32 1, i32 7, i32 1, i32 8, i32 0, i32 600], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 160, i32 160, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ALC Max Analog Gain Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 160, i32 160, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Anticlip Mode Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 161, i32 161, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ALC Anticlip Level\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 162, i32 162, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@da7213_alc_calib_auto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.3, i32 268, ptr @.str.132, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ALC auto calibration failed with overflow\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7213_alc_calib_auto\00", [42 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da7213_alc_calib_auto._entry_ptr = internal global ptr @da7213_alc_calib_auto._entry, section ".printk_index", align 4
@da7213_audio_hpf_corner_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136], [16 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Fs/24000\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Fs/12000\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Fs/6000\00", [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Fs/3000\00", [24 x i8] zeroinitializer }, align 32
@da7213_voice_hpf_corner_txt = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.5Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"25Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"50Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"150Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"400Hz\00", [26 x i8] zeroinitializer }, align 32
@da7213_dac_soft_mute_rate_txt = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151], [36 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"16\00", [29 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"64\00", [29 x i8] zeroinitializer }, align 32
@da7213_gain_ramp_rate_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155], [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nominal rate * 8\00", [47 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nominal rate * 16\00", [46 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nominal rate / 16\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nominal rate / 32\00", [46 x i8] zeroinitializer }, align 32
@da7213_dac_ng_setup_time_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159], [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"256 samples\00", [20 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"512 samples\00", [20 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1024 samples\00", [19 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"2048 samples\00", [19 x i8] zeroinitializer }, align 32
@da7213_dac_ng_rampup_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.160, ptr @.str.161], [24 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.02 ms/dB\00", [21 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.16 ms/dB\00", [21 x i8] zeroinitializer }, align 32
@da7213_dac_ng_rampdown_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.162, ptr @.str.163], [24 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.64 ms/dB\00", [21 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"20.48 ms/dB\00", [20 x i8] zeroinitializer }, align 32
@da7213_alc_attack_rate_txt = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176], [44 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"44/fs\00", [26 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"88/fs\00", [26 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"176/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"352/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"704/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1408/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2816/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5632/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"11264/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"22528/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"45056/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"90112/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"180224/fs\00", [22 x i8] zeroinitializer }, align 32
@da7213_alc_release_rate_txt = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176], [52 x i8] zeroinitializer }, align 32
@da7213_alc_hold_time_txt = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192], [32 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"62/fs\00", [26 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"124/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"248/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"496/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"992/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1984/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3968/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7936/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"15872/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"31744/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"63488/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"126976/fs\00", [22 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"253952/fs\00", [22 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"507904/fs\00", [22 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1015808/fs\00", [21 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2031616/fs\00", [21 x i8] zeroinitializer }, align 32
@da7213_alc_integ_rate_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196], [16 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/4\00", [28 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1/16\00", [27 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1/256\00", [26 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1/65536\00", [24 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDDMIC\00", [25 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAI\00", [28 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXL\00", [27 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXR\00", [27 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mic 1 Amp Source MUX\00", [43 x i8] zeroinitializer }, align 32
@da7213_mic_1_amp_in_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.203, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_mic_1_amp_in_sel to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mic 2 Amp Source MUX\00", [43 x i8] zeroinitializer }, align 32
@da7213_mic_2_amp_in_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_mic_2_amp_in_sel to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mic 1 PGA\00", [22 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mic 2 PGA\00", [22 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Aux Left PGA\00", [19 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Aux Right PGA\00", [18 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Mixin Left PGA\00", [17 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mixin Right PGA\00", [16 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Bias 1\00", [21 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Bias 2\00", [21 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mixin Left\00", [21 x i8] zeroinitializer }, align 32
@da7213_dapm_mixinl_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.246, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.249 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.250, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mixin Right\00", [20 x i8] zeroinitializer }, align 32
@da7213_dapm_mixinr_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.252, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC Left\00", [23 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Right\00", [22 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAI Left Source MUX\00", [44 x i8] zeroinitializer }, align 32
@da7213_dai_l_src_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.217, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_dai_l_src to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAI Right Source MUX\00", [43 x i8] zeroinitializer }, align 32
@da7213_dai_r_src_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.218, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_dai_r_src to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAIOUTL\00", [24 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAIOUTR\00", [24 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAIINL\00", [25 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAIINR\00", [25 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC Left Source MUX\00", [44 x i8] zeroinitializer }, align 32
@da7213_dac_l_src_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.225, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_dac_l_src to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Right Source MUX\00", [43 x i8] zeroinitializer }, align 32
@da7213_dac_r_src_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7213_dac_r_src to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC Left\00", [23 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC Right\00", [22 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mixout Left\00", [20 x i8] zeroinitializer }, align 32
@da7213_dapm_mixoutl_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.246, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.250, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.264 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.265, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.267, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.269, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.270 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.271, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mixout Right\00", [19 x i8] zeroinitializer }, align 32
@da7213_dapm_mixoutr_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.252, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.273 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.250, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.275 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.276, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.277 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.278, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.271, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.280 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.269, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.281 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mixout Left PGA\00", [16 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mixout Right PGA\00", [47 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Lineout PGA\00", [20 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headphone Left PGA\00", [45 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone Right PGA\00", [44 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINE\00", [27 x i8] zeroinitializer }, align 32
@da7213_dapm_widgets = internal constant { [41 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1836 x i8] } { [41 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 21, ptr @.str.197, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @dapm_regulator_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 41, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @da7213_dai_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7213_mic_1_amp_in_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7213_mic_2_amp_in_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 96, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.208, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.209, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.210, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @da7213_dapm_mixinl_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @da7213_dapm_mixinr_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 103, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 104, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.217, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7213_dai_l_src_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7213_dai_r_src_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.219, ptr @.str.220, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.221, ptr @.str.220, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.222, ptr @.str.223, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.224, ptr @.str.223, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.225, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7213_dac_l_src_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7213_dac_r_src_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 105, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 106, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @da7213_dapm_mixoutl_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.230, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @da7213_dapm_mixoutr_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.231, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 110, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.232, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 111, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.233, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 109, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.234, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 107, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.235, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 108, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.236, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 71, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.237, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.238, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.239, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1836 x i8] zeroinitializer }, align 32
@da7213_dai_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.242, ptr @.str.3, i32 777, ptr @.str.132, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SRM failed to lock\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da7213_dai_event\00", [47 x i8] zeroinitializer }, align 32
@da7213_dai_event._entry_ptr = internal global ptr @da7213_dai_event._entry, section ".printk_index", align 4
@da7213_mic_1_amp_in_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 99, i8 2, i8 2, i32 3, i32 3, ptr @da7213_mic_amp_in_sel_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da7213_mic_amp_in_sel_txt = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.243, ptr @.str.244, ptr @.str.245], [20 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Differential\00", [19 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIC_P\00", [26 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIC_N\00", [26 x i8] zeroinitializer }, align 32
@da7213_mic_2_amp_in_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 100, i8 2, i8 2, i32 3, i32 3, ptr @da7213_mic_amp_in_sel_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Aux Left Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.249 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mixin Right Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Aux Right Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.254 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mixin Left Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@da7213_dai_l_src = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 33, i8 0, i8 0, i32 4, i32 3, ptr @da7213_dai_src_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da7213_dai_src_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.215, ptr @.str.216, ptr @.str.258, ptr @.str.259], [16 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAI Input Left\00", [17 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAI Input Right\00", [16 x i8] zeroinitializer }, align 32
@da7213_dai_r_src = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 33, i8 4, i8 4, i32 4, i32 3, ptr @da7213_dai_src_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da7213_dac_l_src = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 0, i8 0, i32 4, i32 3, ptr @da7213_dac_src_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da7213_dac_src_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.260, ptr @.str.261, ptr @.str.258, ptr @.str.259], [16 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC Output Left\00", [16 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Output Right\00", [47 x i8] zeroinitializer }, align 32
@da7213_dac_r_src = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 4, i8 4, i32 4, i32 3, ptr @da7213_dac_src_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.262 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.264 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC Left Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.266 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Aux Left Invert Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.268 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mixin Left Invert Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.270 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mixin Right Invert Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.275 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAC Right Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Aux Right Invert Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.279 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.280 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.281 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlg,micbias1-lvl\00", [47 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlg,micbias2-lvl\00", [47 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlg,dmic-data-sel\00", [46 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlg,dmic-samplephase\00", [43 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlg,dmic-clkrate\00", [47 x i8] zeroinitializer }, align 32
@da7213_of_micbias_lvl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.289, ptr @.str.3, i32 1680, ptr @.str.132, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid micbias level\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7213_of_micbias_lvl\00", [42 x i8] zeroinitializer }, align 32
@da7213_of_micbias_lvl._entry_ptr = internal global ptr @da7213_of_micbias_lvl._entry, section ".printk_index", align 4
@.str.290 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lrise_rfall\00", [20 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lfall_rrise\00", [20 x i8] zeroinitializer }, align 32
@da7213_of_dmic_data_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.293, ptr @.str.3, i32 1693, ptr @.str.132, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid DMIC data select type\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"da7213_of_dmic_data_sel\00", [40 x i8] zeroinitializer }, align 32
@da7213_of_dmic_data_sel._entry_ptr = internal global ptr @da7213_of_dmic_data_sel._entry, section ".printk_index", align 4
@.str.294 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"on_clkedge\00", [21 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"between_clkedge\00", [16 x i8] zeroinitializer }, align 32
@da7213_of_dmic_samplephase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.297, ptr @.str.3, i32 1706, ptr @.str.132, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid DMIC sample phase\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"da7213_of_dmic_samplephase\00", [37 x i8] zeroinitializer }, align 32
@da7213_of_dmic_samplephase._entry_ptr = internal global ptr @da7213_of_dmic_samplephase._entry, section ".printk_index", align 4
@da7213_of_dmic_clkrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.299, ptr @.str.3, i32 1720, ptr @.str.132, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid DMIC clock rate\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da7213_of_dmic_clkrate\00", [41 x i8] zeroinitializer }, align 32
@da7213_of_dmic_clkrate._entry_ptr = internal global ptr @da7213_of_dmic_clkrate._entry, section ".printk_index", align 4
@da7213_set_component_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.301, ptr @.str.3, i32 1369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported MCLK value %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"da7213_set_component_sysclk\00", [36 x i8] zeroinitializer }, align 32
@da7213_set_component_sysclk._entry_ptr = internal global ptr @da7213_set_component_sysclk._entry, section ".printk_index", align 4
@da7213_set_component_sysclk._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.301, ptr @.str.3, i32 1384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown clock source %d\0A\00", [39 x i8] zeroinitializer }, align 32
@da7213_set_component_sysclk._entry_ptr.304 = internal global ptr @da7213_set_component_sysclk._entry.302, section ".printk_index", align 4
@da7213_set_component_sysclk._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.301, ptr @.str.3, i32 1395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set clock rate %d\0A\00", [35 x i8] zeroinitializer }, align 32
@da7213_set_component_sysclk._entry_ptr.307 = internal global ptr @da7213_set_component_sysclk._entry.305, section ".printk_index", align 4
@_da7213_set_component_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.309, ptr @.str.3, i32 1421, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"32KHz only valid if codec is clock master\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_da7213_set_component_pll\00", [38 x i8] zeroinitializer }, align 32
@_da7213_set_component_pll._entry_ptr = internal global ptr @_da7213_set_component_pll._entry, section ".printk_index", align 4
@_da7213_set_component_pll._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.309, ptr @.str.3, i32 1435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PLL input clock %d below valid range\0A\00", [58 x i8] zeroinitializer }, align 32
@_da7213_set_component_pll._entry_ptr.312 = internal global ptr @_da7213_set_component_pll._entry.310, section ".printk_index", align 4
@_da7213_set_component_pll._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.309, ptr @.str.3, i32 1452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PLL input clock %d above valid range\0A\00", [58 x i8] zeroinitializer }, align 32
@_da7213_set_component_pll._entry_ptr.315 = internal global ptr @_da7213_set_component_pll._entry.313, section ".printk_index", align 4
@_da7213_set_component_pll._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @.str.309, ptr @.str.3, i32 1476, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"32KHz mode only valid with 32KHz MCLK\0A\00", [57 x i8] zeroinitializer }, align 32
@_da7213_set_component_pll._entry_ptr.318 = internal global ptr @_da7213_set_component_pll._entry.316, section ".printk_index", align 4
@_da7213_set_component_pll._entry.319 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.320, ptr @.str.309, ptr @.str.3, i32 1484, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid PLL config\0A\00", [44 x i8] zeroinitializer }, align 32
@_da7213_set_component_pll._entry_ptr.321 = internal global ptr @_da7213_set_component_pll._entry.319, section ".printk_index", align 4
@da7213_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.323, ptr @.str.3, i32 1617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to enable mclk\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7213_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@da7213_set_bias_level._entry_ptr = internal global ptr @da7213_set_bias_level._entry, section ".printk_index", align 4
@.str.324 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da7213-hifi\00", [20 x i8] zeroinitializer }, align 32
@da7213_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @da7213_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7213_mute, ptr null, ptr null, ptr @da7213_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@switch.table.da7213_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 1, i32 9, i32 5, i32 13], [44 x i8] zeroinitializer }, align 32
@switch.table.da7213_set_dai_fmt.325 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 5, i32 5, i32 13, i32 1, i32 9], [44 x i8] zeroinitializer }, align 32
@switch.table.da7213_set_dai_fmt.326 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 2, i32 1, i32 3, i32 3], [44 x i8] zeroinitializer }, align 32
@switch.table.da7213_set_dai_fmt.327 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.da7213_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 8, i32 0, i32 12], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [23 x i64] [i64 21, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 43, i64 163, i64 164, i64 168, i64 169, i64 174]
@__sancov_gen_cov_switch_values.328 = internal global [6 x i64] [i64 4, i64 32, i64 1600, i64 2200, i64 2500, i64 3000]
@__sancov_gen_cov_switch_values.329 = internal global [6 x i64] [i64 4, i64 32, i64 1600, i64 2200, i64 2500, i64 3000]
@__sancov_gen_cov_switch_values.330 = internal global [4 x i64] [i64 2, i64 32, i64 1500000, i64 3000000]
@__sancov_gen_cov_switch_values.331 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.332 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.333 = internal global [4 x i64] [i64 2, i64 32, i64 90316800, i64 98304000]
@__sancov_gen_cov_switch_values.334 = internal global [5 x i64] [i64 3, i64 32, i64 11289600, i64 22579200, i64 45158400]
@__sancov_gen_cov_switch_values.335 = internal global [5 x i64] [i64 3, i64 32, i64 12288000, i64 24576000, i64 49152000]
@__sancov_gen_cov_switch_values.336 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.337 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.338 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.339 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.340 = internal global [12 x i64] [i64 10, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@___asan_gen_.341 = private unnamed_addr constant [18 x i8] c"da7213_i2c_driver\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 2036, i32 26 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 2038, i32 11 }
@___asan_gen_.347 = private unnamed_addr constant [16 x i8] c"da7213_of_match\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1650, i32 34 }
@___asan_gen_.350 = private unnamed_addr constant [10 x i8] c"da7213_pm\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 2025, i32 32 }
@___asan_gen_.353 = private unnamed_addr constant [14 x i8] c"da7213_i2c_id\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 2029, i32 35 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1968, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [21 x i8] c"da7213_regmap_config\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1928, i32 35 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1980, i32 19 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1983, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant [25 x i8] c"soc_component_dev_da7213\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1911, i32 46 }
@___asan_gen_.392 = private unnamed_addr constant [11 x i8] c"da7213_dai\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1535, i32 34 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1995, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1945, i32 25 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1946, i32 26 }
@___asan_gen_.407 = private unnamed_addr constant [20 x i8] c"da7213_reg_defaults\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1041, i32 33 }
@___asan_gen_.410 = private unnamed_addr constant [20 x i8] c"da7213_snd_controls\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 384, i32 38 }
@___asan_gen_.413 = private unnamed_addr constant [17 x i8] c"da7213_audio_map\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 937, i32 40 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 387, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [12 x i8] c"mic_vol_tlv\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 51, i32 14 }
@___asan_gen_.422 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 390, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 393, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [12 x i8] c"aux_vol_tlv\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 32, i32 14 }
@___asan_gen_.433 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 396, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [15 x i8] c"mixin_gain_tlv\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 52, i32 14 }
@___asan_gen_.440 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 401, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [17 x i8] c"digital_gain_tlv\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 39, i32 14 }
@___asan_gen_.447 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 404, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 407, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant [11 x i8] c"hp_vol_tlv\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 54, i32 14 }
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 410, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [16 x i8] c"lineout_vol_tlv\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 55, i32 14 }
@___asan_gen_.465 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 415, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 417, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant [12 x i8] c"eq_gain_tlv\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 53, i32 14 }
@___asan_gen_.476 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 420, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 423, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 426, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 429, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 434, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 436, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [28 x i8] c"da7213_adc_audio_hpf_corner\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 84, i32 8 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 437, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 440, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [28 x i8] c"da7213_adc_voice_hpf_corner\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 69, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 442, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 444, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant [28 x i8] c"da7213_dac_audio_hpf_corner\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 79, i32 8 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 445, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 448, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [28 x i8] c"da7213_dac_voice_hpf_corner\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 64, i32 8 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 451, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 453, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 455, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 457, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 460, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 462, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 464, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 466, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 469, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [26 x i8] c"da7213_dac_soft_mute_rate\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 135, i32 8 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 472, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 474, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 477, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 481, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 484, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 487, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 490, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 493, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 496, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 499, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant [22 x i8] c"da7213_gain_ramp_rate\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 95, i32 8 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 502, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 504, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant [25 x i8] c"da7213_dac_ng_setup_time\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 105, i32 8 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 505, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant [26 x i8] c"da7213_dac_ng_rampup_rate\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 115, i32 8 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 506, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant [28 x i8] c"da7213_dac_ng_rampdown_rate\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 125, i32 8 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 507, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 510, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 515, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 518, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 523, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 528, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 531, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant [23 x i8] c"da7213_alc_attack_rate\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 146, i32 8 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 532, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant [24 x i8] c"da7213_alc_release_rate\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 157, i32 8 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 533, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant [21 x i8] c"da7213_alc_hold_time\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 169, i32 8 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 538, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant [29 x i8] c"da7213_alc_integ_attack_rate\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 179, i32 8 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 543, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant [30 x i8] c"da7213_alc_integ_release_rate\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 184, i32 8 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 544, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant [18 x i8] c"alc_threshold_tlv\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 56, i32 14 }
@___asan_gen_.695 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 547, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 550, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 553, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant [13 x i8] c"alc_gain_tlv\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 57, i32 14 }
@___asan_gen_.710 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 557, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 560, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant [20 x i8] c"alc_analog_gain_tlv\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 45, i32 14 }
@___asan_gen_.721 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 563, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 566, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 569, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 267, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant [28 x i8] c"da7213_audio_hpf_corner_txt\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 75, i32 27 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 76, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 76, i32 14 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 76, i32 26 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 76, i32 37 }
@___asan_gen_.761 = private unnamed_addr constant [28 x i8] c"da7213_voice_hpf_corner_txt\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 60, i32 27 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 61, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 61, i32 11 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 61, i32 19 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 61, i32 27 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 61, i32 36 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 61, i32 45 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 61, i32 54 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 61, i32 63 }
@___asan_gen_.788 = private unnamed_addr constant [30 x i8] c"da7213_dac_soft_mute_rate_txt\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 131, i32 27 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 132, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 132, i32 7 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 132, i32 12 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 132, i32 17 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 132, i32 22 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 132, i32 28 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 132, i32 34 }
@___asan_gen_.812 = private unnamed_addr constant [26 x i8] c"da7213_gain_ramp_rate_txt\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 90, i32 27 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 91, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 91, i32 22 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 91, i32 43 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 92, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant [29 x i8] c"da7213_dac_ng_setup_time_txt\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 101, i32 27 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 102, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 102, i32 17 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 102, i32 32 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 102, i32 48 }
@___asan_gen_.842 = private unnamed_addr constant [25 x i8] c"da7213_dac_ng_rampup_txt\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 111, i32 27 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 112, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 112, i32 16 }
@___asan_gen_.851 = private unnamed_addr constant [27 x i8] c"da7213_dac_ng_rampdown_txt\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 121, i32 27 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 122, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 122, i32 16 }
@___asan_gen_.860 = private unnamed_addr constant [27 x i8] c"da7213_alc_attack_rate_txt\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 141, i32 27 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 142, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 142, i32 11 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 142, i32 20 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 142, i32 30 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 142, i32 40 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 142, i32 50 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 142, i32 61 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 143, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 143, i32 13 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 143, i32 25 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 143, i32 37 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 143, i32 49 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 143, i32 61 }
@___asan_gen_.902 = private unnamed_addr constant [28 x i8] c"da7213_alc_release_rate_txt\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 152, i32 27 }
@___asan_gen_.905 = private unnamed_addr constant [25 x i8] c"da7213_alc_hold_time_txt\00", align 1
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 163, i32 27 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 164, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 164, i32 11 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 164, i32 21 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 164, i32 31 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 164, i32 41 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 164, i32 51 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 164, i32 62 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 165, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 165, i32 13 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 165, i32 25 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 165, i32 37 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 165, i32 49 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 166, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 166, i32 15 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 166, i32 28 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 166, i32 42 }
@___asan_gen_.956 = private unnamed_addr constant [26 x i8] c"da7213_alc_integ_rate_txt\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 175, i32 27 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 176, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 176, i32 9 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 176, i32 17 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 176, i32 26 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 813, i32 2 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 820, i32 2 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 829, i32 2 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 830, i32 2 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 831, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 832, i32 2 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 835, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant [28 x i8] c"da7213_mic_1_amp_in_sel_mux\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 592, i32 38 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 837, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant [28 x i8] c"da7213_mic_2_amp_in_sel_mux\00", align 1
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 599, i32 38 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 841, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 843, i32 2 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 845, i32 2 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 847, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 849, i32 2 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 851, i32 2 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 855, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 858, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 863, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant [28 x i8] c"da7213_dapm_mixinl_controls\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 646, i32 38 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 866, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant [28 x i8] c"da7213_dapm_mixinr_controls\00", align 1
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 662, i32 38 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 871, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 873, i32 2 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 877, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant [21 x i8] c"da7213_dai_l_src_mux\00", align 1
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 611, i32 38 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 879, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant [21 x i8] c"da7213_dai_r_src_mux\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 618, i32 38 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 881, i32 2 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 882, i32 2 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 889, i32 2 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 890, i32 2 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 891, i32 2 }
@___asan_gen_.1076 = private unnamed_addr constant [21 x i8] c"da7213_dac_l_src_mux\00", align 1
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 631, i32 38 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 893, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant [21 x i8] c"da7213_dac_r_src_mux\00", align 1
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 638, i32 38 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 897, i32 2 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 899, i32 2 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 903, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant [29 x i8] c"da7213_dapm_mixoutl_controls\00", align 1
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 678, i32 38 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 906, i32 2 }
@___asan_gen_.1100 = private unnamed_addr constant [29 x i8] c"da7213_dapm_mixoutr_controls\00", align 1
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 703, i32 38 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 911, i32 2 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 913, i32 2 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 915, i32 2 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 917, i32 2 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 919, i32 2 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 923, i32 2 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 927, i32 2 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 928, i32 2 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 929, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant [20 x i8] c"da7213_dapm_widgets\00", align 1
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 809, i32 41 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 777, i32 4 }
@___asan_gen_.1142 = private unnamed_addr constant [24 x i8] c"da7213_mic_1_amp_in_sel\00", align 1
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 588, i32 8 }
@___asan_gen_.1145 = private unnamed_addr constant [26 x i8] c"da7213_mic_amp_in_sel_txt\00", align 1
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 584, i32 27 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 585, i32 2 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 585, i32 18 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 585, i32 27 }
@___asan_gen_.1157 = private unnamed_addr constant [24 x i8] c"da7213_mic_2_amp_in_sel\00", align 1
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 595, i32 8 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 647, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.1164 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.1165 = private unnamed_addr constant [21 x i8] c".compoundliteral.249\00", align 1
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 656, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 663, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.1174 = private unnamed_addr constant [21 x i8] c".compoundliteral.254\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 672, i32 2 }
@___asan_gen_.1179 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.1180 = private unnamed_addr constant [17 x i8] c"da7213_dai_l_src\00", align 1
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 607, i32 8 }
@___asan_gen_.1183 = private unnamed_addr constant [19 x i8] c"da7213_dai_src_txt\00", align 1
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 603, i32 27 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 604, i32 27 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 604, i32 45 }
@___asan_gen_.1192 = private unnamed_addr constant [17 x i8] c"da7213_dai_r_src\00", align 1
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 614, i32 8 }
@___asan_gen_.1195 = private unnamed_addr constant [17 x i8] c"da7213_dac_l_src\00", align 1
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 627, i32 8 }
@___asan_gen_.1198 = private unnamed_addr constant [19 x i8] c"da7213_dac_src_txt\00", align 1
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 622, i32 27 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 623, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 623, i32 21 }
@___asan_gen_.1207 = private unnamed_addr constant [17 x i8] c"da7213_dac_r_src\00", align 1
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 634, i32 8 }
@___asan_gen_.1210 = private unnamed_addr constant [21 x i8] c".compoundliteral.262\00", align 1
@___asan_gen_.1211 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.1212 = private unnamed_addr constant [21 x i8] c".compoundliteral.264\00", align 1
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 688, i32 2 }
@___asan_gen_.1216 = private unnamed_addr constant [21 x i8] c".compoundliteral.266\00", align 1
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 691, i32 2 }
@___asan_gen_.1220 = private unnamed_addr constant [21 x i8] c".compoundliteral.268\00", align 1
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 694, i32 2 }
@___asan_gen_.1224 = private unnamed_addr constant [21 x i8] c".compoundliteral.270\00", align 1
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 697, i32 2 }
@___asan_gen_.1228 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@___asan_gen_.1229 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.1230 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.1231 = private unnamed_addr constant [21 x i8] c".compoundliteral.275\00", align 1
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 713, i32 2 }
@___asan_gen_.1235 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 716, i32 2 }
@___asan_gen_.1239 = private unnamed_addr constant [21 x i8] c".compoundliteral.279\00", align 1
@___asan_gen_.1240 = private unnamed_addr constant [21 x i8] c".compoundliteral.280\00", align 1
@___asan_gen_.1241 = private unnamed_addr constant [21 x i8] c".compoundliteral.281\00", align 1
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1895, i32 46 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1737, i32 36 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1742, i32 36 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1747, i32 40 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1752, i32 40 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1758, i32 36 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1680, i32 3 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1688, i32 19 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1690, i32 26 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1693, i32 3 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1701, i32 19 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1703, i32 26 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1706, i32 3 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1720, i32 3 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1368, i32 3 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1384, i32 3 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1394, i32 4 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1420, i32 4 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1433, i32 4 }
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1450, i32 4 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1475, i32 4 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1484, i32 3 }
@___asan_gen_.1362 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1616, i32 6 }
@___asan_gen_.1371 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1536, i32 10 }
@___asan_gen_.1374 = private unnamed_addr constant [15 x i8] c"da7213_dai_ops\00", align 1
@___asan_gen_.1375 = private constant [29 x i8] c"../sound/soc/codecs/da7213.c\00", align 1
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1375, i32 1528, i32 37 }
@___asan_gen_.1377 = private unnamed_addr constant [32 x i8] c"switch.table.da7213_set_dai_fmt\00", align 1
@___asan_gen_.1378 = private unnamed_addr constant [36 x i8] c"switch.table.da7213_set_dai_fmt.325\00", align 1
@___asan_gen_.1379 = private unnamed_addr constant [36 x i8] c"switch.table.da7213_set_dai_fmt.326\00", align 1
@___asan_gen_.1380 = private unnamed_addr constant [36 x i8] c"switch.table.da7213_set_dai_fmt.327\00", align 1
@___asan_gen_.1381 = private unnamed_addr constant [30 x i8] c"switch.table.da7213_hw_params\00", align 1
@llvm.compiler.used = appending global [424 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_da7213_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_da7213__295_2047_da7213_i2c_driver_init6, ptr @_da7213_set_component_pll._entry, ptr @_da7213_set_component_pll._entry.310, ptr @_da7213_set_component_pll._entry.313, ptr @_da7213_set_component_pll._entry.316, ptr @_da7213_set_component_pll._entry.319, ptr @_da7213_set_component_pll._entry_ptr, ptr @_da7213_set_component_pll._entry_ptr.312, ptr @_da7213_set_component_pll._entry_ptr.315, ptr @_da7213_set_component_pll._entry_ptr.318, ptr @_da7213_set_component_pll._entry_ptr.321, ptr @da7213_alc_calib_auto._entry, ptr @da7213_alc_calib_auto._entry_ptr, ptr @da7213_dai_event._entry, ptr @da7213_dai_event._entry_ptr, ptr @da7213_i2c_driver_exit, ptr @da7213_i2c_probe._entry, ptr @da7213_i2c_probe._entry.10, ptr @da7213_i2c_probe._entry.7, ptr @da7213_i2c_probe._entry_ptr, ptr @da7213_i2c_probe._entry_ptr.12, ptr @da7213_i2c_probe._entry_ptr.9, ptr @da7213_of_dmic_clkrate._entry, ptr @da7213_of_dmic_clkrate._entry_ptr, ptr @da7213_of_dmic_data_sel._entry, ptr @da7213_of_dmic_data_sel._entry_ptr, ptr @da7213_of_dmic_samplephase._entry, ptr @da7213_of_dmic_samplephase._entry_ptr, ptr @da7213_of_micbias_lvl._entry, ptr @da7213_of_micbias_lvl._entry_ptr, ptr @da7213_set_bias_level._entry, ptr @da7213_set_bias_level._entry_ptr, ptr @da7213_set_component_sysclk._entry, ptr @da7213_set_component_sysclk._entry.302, ptr @da7213_set_component_sysclk._entry.305, ptr @da7213_set_component_sysclk._entry_ptr, ptr @da7213_set_component_sysclk._entry_ptr.304, ptr @da7213_set_component_sysclk._entry_ptr.307, ptr @da7213_i2c_driver, ptr @.str, ptr @da7213_of_match, ptr @da7213_pm, ptr @da7213_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @da7213_i2c_probe._key, ptr @da7213_regmap_config, ptr @.str.6, ptr @.str.8, ptr @soc_component_dev_da7213, ptr @da7213_dai, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @da7213_reg_defaults, ptr @da7213_snd_controls, ptr @da7213_audio_map, ptr @.str.15, ptr @mic_vol_tlv, ptr @.compoundliteral, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @aux_vol_tlv, ptr @.compoundliteral.19, ptr @.str.20, ptr @mixin_gain_tlv, ptr @.compoundliteral.21, ptr @.str.22, ptr @digital_gain_tlv, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @hp_vol_tlv, ptr @.compoundliteral.27, ptr @.str.28, ptr @lineout_vol_tlv, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @eq_gain_tlv, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @da7213_adc_audio_hpf_corner, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @da7213_adc_voice_hpf_corner, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @da7213_dac_audio_hpf_corner, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @da7213_dac_voice_hpf_corner, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @da7213_dac_soft_mute_rate, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @da7213_gain_ramp_rate, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @da7213_dac_ng_setup_time, ptr @.str.93, ptr @da7213_dac_ng_rampup_rate, ptr @.str.94, ptr @da7213_dac_ng_rampdown_rate, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @da7213_alc_attack_rate, ptr @.str.108, ptr @da7213_alc_release_rate, ptr @.str.109, ptr @da7213_alc_hold_time, ptr @.str.110, ptr @da7213_alc_integ_attack_rate, ptr @.str.111, ptr @da7213_alc_integ_release_rate, ptr @.str.112, ptr @alc_threshold_tlv, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.str.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @alc_gain_tlv, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @alc_analog_gain_tlv, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @da7213_audio_hpf_corner_txt, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @da7213_voice_hpf_corner_txt, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @da7213_dac_soft_mute_rate_txt, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @da7213_gain_ramp_rate_txt, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @da7213_dac_ng_setup_time_txt, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @da7213_dac_ng_rampup_txt, ptr @.str.160, ptr @.str.161, ptr @da7213_dac_ng_rampdown_txt, ptr @.str.162, ptr @.str.163, ptr @da7213_alc_attack_rate_txt, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @da7213_alc_release_rate_txt, ptr @da7213_alc_hold_time_txt, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @da7213_alc_integ_rate_txt, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @da7213_mic_1_amp_in_sel_mux, ptr @.str.204, ptr @da7213_mic_2_amp_in_sel_mux, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @da7213_dapm_mixinl_controls, ptr @.str.214, ptr @da7213_dapm_mixinr_controls, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @da7213_dai_l_src_mux, ptr @.str.218, ptr @da7213_dai_r_src_mux, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @da7213_dac_l_src_mux, ptr @.str.226, ptr @da7213_dac_r_src_mux, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @da7213_dapm_mixoutl_controls, ptr @.str.230, ptr @da7213_dapm_mixoutr_controls, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @da7213_dapm_widgets, ptr @.str.241, ptr @.str.242, ptr @da7213_mic_1_amp_in_sel, ptr @da7213_mic_amp_in_sel_txt, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @da7213_mic_2_amp_in_sel, ptr @.str.246, ptr @.compoundliteral.247, ptr @.compoundliteral.248, ptr @.compoundliteral.249, ptr @.str.250, ptr @.compoundliteral.251, ptr @.str.252, ptr @.compoundliteral.253, ptr @.compoundliteral.254, ptr @.compoundliteral.255, ptr @.str.256, ptr @.compoundliteral.257, ptr @da7213_dai_l_src, ptr @da7213_dai_src_txt, ptr @.str.258, ptr @.str.259, ptr @da7213_dai_r_src, ptr @da7213_dac_l_src, ptr @da7213_dac_src_txt, ptr @.str.260, ptr @.str.261, ptr @da7213_dac_r_src, ptr @.compoundliteral.262, ptr @.compoundliteral.263, ptr @.compoundliteral.264, ptr @.str.265, ptr @.compoundliteral.266, ptr @.str.267, ptr @.compoundliteral.268, ptr @.str.269, ptr @.compoundliteral.270, ptr @.str.271, ptr @.compoundliteral.272, ptr @.compoundliteral.273, ptr @.compoundliteral.274, ptr @.compoundliteral.275, ptr @.str.276, ptr @.compoundliteral.277, ptr @.str.278, ptr @.compoundliteral.279, ptr @.compoundliteral.280, ptr @.compoundliteral.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.303, ptr @.str.306, ptr @.str.308, ptr @.str.309, ptr @.str.311, ptr @.str.314, ptr @.str.317, ptr @.str.320, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @da7213_dai_ops, ptr @switch.table.da7213_set_dai_fmt, ptr @switch.table.da7213_set_dai_fmt.325, ptr @switch.table.da7213_set_dai_fmt.326, ptr @switch.table.da7213_set_dai_fmt.327, ptr @switch.table.da7213_hw_params], section "llvm.metadata"
@0 = internal global [399 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_da7213 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_reg_defaults to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_snd_controls to i32), i32 3120, i32 3904, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_audio_map to i32), i32 3848, i32 4832, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_vol_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixin_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_gain_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lineout_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_adc_audio_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_adc_voice_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_audio_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_voice_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_soft_mute_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_gain_ramp_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_ng_setup_time to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_ng_rampup_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_ng_rampdown_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_alc_attack_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_alc_release_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_alc_hold_time to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_alc_integ_attack_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_alc_integ_release_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_threshold_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_analog_gain_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_alc_calib_auto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_audio_hpf_corner_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_voice_hpf_corner_txt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_soft_mute_rate_txt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_gain_ramp_rate_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_ng_setup_time_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_ng_rampup_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_ng_rampdown_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_alc_attack_rate_txt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_alc_release_rate_txt to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_alc_hold_time_txt to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_alc_integ_rate_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_mic_1_amp_in_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_mic_2_amp_in_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dapm_mixinl_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dapm_mixinr_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dai_l_src_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dai_r_src_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_l_src_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_r_src_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dapm_mixoutl_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dapm_mixoutr_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dapm_widgets to i32), i32 7380, i32 9216, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dai_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_mic_1_amp_in_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_mic_amp_in_sel_txt to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_mic_2_amp_in_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.249 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.254 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dai_l_src to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dai_src_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dai_r_src to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_l_src to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_src_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dac_r_src to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.262 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.264 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.266 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.268 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.270 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.275 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.279 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.280 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.281 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_of_micbias_lvl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_of_dmic_data_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_of_dmic_samplephase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_of_dmic_clkrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_set_component_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_set_component_sysclk._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_set_component_sysclk._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_da7213_set_component_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_da7213_set_component_pll._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_da7213_set_component_pll._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_da7213_set_component_pll._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_da7213_set_component_pll._entry.319 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7213_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7213_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7213_set_dai_fmt.325 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7213_set_dai_fmt.326 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7213_set_dai_fmt.327 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7213_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da7213_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da7213_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @da7213_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %arrayidx1 = getelementptr %struct.da7213_priv, ptr %call.i, i32 0, i32 1, i32 0
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.13, ptr %arrayidx1, align 4
  %arrayidx1.1 = getelementptr %struct.da7213_priv, ptr %call.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.14, ptr %arrayidx1.1, align 4
  %call4 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call4) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call11 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %arrayidx1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %call.i81 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @da7213_power_off, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i, label %if.end14.if.end19_crit_edge, label %devm_add_action_or_reset.exit

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

devm_add_action_or_reset.exit:                    ; preds = %if.end14
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %arrayidx1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp17 = icmp slt i32 %call.i81, 0
  br i1 %cmp17, label %devm_add_action_or_reset.exit.cleanup_crit_edge, label %devm_add_action_or_reset.exit.if.end19_crit_edge

devm_add_action_or_reset.exit.if.end19_crit_edge: ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

devm_add_action_or_reset.exit.cleanup_crit_edge:  ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %devm_add_action_or_reset.exit.if.end19_crit_edge, %if.end14.if.end19_crit_edge
  %call20 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @da7213_regmap_config, ptr noundef nonnull @da7213_i2c_probe._key, ptr noundef nonnull @.str.6) #8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call20, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %4) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 100) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i82 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %call37 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_da7213, ptr noundef nonnull @da7213_dai, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end42, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end42:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call37) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end30.cleanup_crit_edge, %if.then23, %devm_add_action_or_reset.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %4, %if.then23 ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ], [ %call.i81, %devm_add_action_or_reset.exit.cleanup_crit_edge ], [ %call37, %do.end42 ], [ %call37, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da7213_power_off(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.da7213_priv, ptr %data, i32 0, i32 1
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @da7213_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
    i32 43, label %entry.return_crit_edge15
    i32 163, label %entry.return_crit_edge16
    i32 164, label %entry.return_crit_edge17
    i32 168, label %entry.return_crit_edge18
    i32 169, label %entry.return_crit_edge19
    i32 174, label %entry.return_crit_edge20
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_probe(ptr noundef %component) #2 align 64 {
entry:
  %fw_str.i = alloca ptr, align 4
  %fw_val32.i = alloca i32, align 4
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
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 43, i32 noundef 4, i32 noundef 0) #8
  %alc_calib_auto = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %alc_calib_auto to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %alc_calib_auto, align 1
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 148, i32 noundef 1, i32 noundef 1) #8
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 96, i32 noundef 32, i32 noundef 32) #8
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 97, i32 noundef 32, i32 noundef 32) #8
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 101, i32 noundef 32, i32 noundef 32) #8
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 102, i32 noundef 32, i32 noundef 32) #8
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 103, i32 noundef 32, i32 noundef 32) #8
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 104, i32 noundef 32, i32 noundef 32) #8
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 105, i32 noundef 32, i32 noundef 32) #8
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 106, i32 noundef 32, i32 noundef 32) #8
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 107, i32 noundef 32, i32 noundef 32) #8
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 108, i32 noundef 32, i32 noundef 32) #8
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 109, i32 noundef 32, i32 noundef 32) #8
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 101, i32 noundef 8, i32 noundef 8) #8
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 102, i32 noundef 8, i32 noundef 8) #8
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 110, i32 noundef 8, i32 noundef 8) #8
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 111, i32 noundef 8, i32 noundef 8) #8
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 107, i32 noundef 8, i32 noundef 8) #8
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 108, i32 noundef 8, i32 noundef 8) #8
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 109, i32 noundef 8, i32 noundef 8) #8
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %entry.if.then29_crit_edge

entry.if.then29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_str.i) #8
  %12 = ptrtoint ptr %fw_str.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_str.i, align 4, !annotation !646
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_val32.i) #8
  %13 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %fw_val32.i, align 4, !annotation !646
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 20, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.thread145, label %if.end.i

if.end.thread145:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_val32.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_str.i) #8
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pdata, align 4
  br label %if.end66

if.end.i:                                         ; preds = %if.then
  %call.i60.i = call i32 @device_property_read_u32_array(ptr noundef %11, ptr noundef nonnull @.str.283, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i60.i)
  %cmp.i = icmp sgt i32 %call.i60.i, -1
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_val32.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.328)
  switch i32 %16, label %do.end.i.i [
    i32 1600, label %if.then4.i.if.end7.i_crit_edge
    i32 2200, label %sw.bb1.i.i
    i32 2500, label %sw.bb2.i.i
    i32 3000, label %sw.bb3.i.i
  ]

if.then4.i.if.end7.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

sw.bb1.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

sw.bb2.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

sw.bb3.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

do.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.288) #11
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then4.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %storemerge.i = phi i32 [ 1, %if.end.i.if.end7.i_crit_edge ], [ 1, %do.end.i.i ], [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %if.then4.i.if.end7.i_crit_edge ]
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge.i, ptr %call.i.i, align 4
  %call.i61.i = call i32 @device_property_read_u32_array(ptr noundef %11, ptr noundef nonnull @.str.284, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i61.i)
  %cmp9.i = icmp sgt i32 %call.i61.i, -1
  br i1 %cmp9.i, label %if.then10.i, label %if.end7.i.if.end14.i_crit_edge

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end7.i
  %21 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_val32.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.329)
  switch i32 %22, label %do.end.i66.i [
    i32 1600, label %if.then10.i.if.end14.i_crit_edge
    i32 2200, label %sw.bb1.i62.i
    i32 2500, label %sw.bb2.i63.i
    i32 3000, label %sw.bb3.i64.i
  ]

if.then10.i.if.end14.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

sw.bb1.i62.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

sw.bb2.i63.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

sw.bb3.i64.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

do.end.i66.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.288) #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i66.i, %sw.bb3.i64.i, %sw.bb2.i63.i, %sw.bb1.i62.i, %if.then10.i.if.end14.i_crit_edge, %if.end7.i.if.end14.i_crit_edge
  %.sink.i = phi i32 [ 1, %do.end.i66.i ], [ 3, %sw.bb3.i64.i ], [ 2, %sw.bb2.i63.i ], [ 1, %sw.bb1.i62.i ], [ 0, %if.then10.i.if.end14.i_crit_edge ], [ 1, %if.end7.i.if.end14.i_crit_edge ]
  %micbias2_lvl13.i = getelementptr inbounds %struct.da7213_platform_data, ptr %call.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %micbias2_lvl13.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink.i, ptr %micbias2_lvl13.i, align 4
  %call15.i = call i32 @device_property_read_string(ptr noundef %11, ptr noundef nonnull @.str.285, ptr noundef nonnull %fw_str.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  %27 = ptrtoint ptr %fw_str.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw_str.i, align 4
  %call.i69.i = call i32 @strcmp(ptr noundef %28, ptr noundef nonnull dereferenceable(12) @.str.290) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %tobool.not.i.i = icmp eq i32 %call.i69.i, 0
  br i1 %tobool.not.i.i, label %if.then17.i.if.end21.i_crit_edge, label %if.else.i.i

if.then17.i.if.end21.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.else.i.i:                                      ; preds = %if.then17.i
  %call1.i.i = call i32 @strcmp(ptr noundef %28, ptr noundef nonnull dereferenceable(12) @.str.291) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i.if.end21.i_crit_edge, label %do.end.i71.i

if.else.i.i.if.end21.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

do.end.i71.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.292) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i71.i, %if.else.i.i.if.end21.i_crit_edge, %if.then17.i.if.end21.i_crit_edge, %if.end14.i.if.end21.i_crit_edge
  %.sink86.i = phi i32 [ 0, %do.end.i71.i ], [ 0, %if.then17.i.if.end21.i_crit_edge ], [ 1, %if.else.i.i.if.end21.i_crit_edge ], [ 0, %if.end14.i.if.end21.i_crit_edge ]
  %dmic_data_sel20.i = getelementptr inbounds %struct.da7213_platform_data, ptr %call.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %dmic_data_sel20.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink86.i, ptr %dmic_data_sel20.i, align 4
  %call22.i = call i32 @device_property_read_string(ptr noundef %11, ptr noundef nonnull @.str.286, ptr noundef nonnull %fw_str.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end21.i.if.end28.i_crit_edge

if.end21.i.if.end28.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end21.i
  %32 = ptrtoint ptr %fw_str.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw_str.i, align 4
  %call.i73.i = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(11) @.str.294) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool.not.i74.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool.not.i74.i, label %if.then24.i.if.end28.i_crit_edge, label %if.else.i77.i

if.then24.i.if.end28.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.else.i77.i:                                    ; preds = %if.then24.i
  %call1.i75.i = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(16) @.str.295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75.i)
  %tobool2.not.i76.i = icmp eq i32 %call1.i75.i, 0
  br i1 %tobool2.not.i76.i, label %if.else.i77.i.if.end28.i_crit_edge, label %do.end.i79.i

if.else.i77.i.if.end28.i_crit_edge:               ; preds = %if.else.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

do.end.i79.i:                                     ; preds = %if.else.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.296) #11
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i79.i, %if.else.i77.i.if.end28.i_crit_edge, %if.then24.i.if.end28.i_crit_edge, %if.end21.i.if.end28.i_crit_edge
  %.sink87.i = phi i32 [ 0, %do.end.i79.i ], [ 0, %if.then24.i.if.end28.i_crit_edge ], [ 1, %if.else.i77.i.if.end28.i_crit_edge ], [ 0, %if.end21.i.if.end28.i_crit_edge ]
  %dmic_samplephase27.i = getelementptr inbounds %struct.da7213_platform_data, ptr %call.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %dmic_samplephase27.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink87.i, ptr %dmic_samplephase27.i, align 4
  %call.i81.i = call i32 @device_property_read_u32_array(ptr noundef %11, ptr noundef nonnull @.str.287, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i81.i)
  %cmp30.i = icmp sgt i32 %call.i81.i, -1
  br i1 %cmp30.i, label %if.then31.i, label %if.end28.i.if.end_crit_edge

if.end28.i.if.end_crit_edge:                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then31.i:                                      ; preds = %if.end28.i
  %37 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fw_val32.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.330)
  switch i32 %38, label %do.end.i84.i [
    i32 1500000, label %if.then31.i.if.end_crit_edge
    i32 3000000, label %sw.bb1.i82.i
  ]

if.then31.i.if.end_crit_edge:                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb1.i82.i:                                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i84.i:                                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.298) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i84.i, %sw.bb1.i82.i, %if.then31.i.if.end_crit_edge, %if.end28.i.if.end_crit_edge
  %retval.0.i85.sink.i = phi i32 [ 1, %do.end.i84.i ], [ 0, %sw.bb1.i82.i ], [ 1, %if.then31.i.if.end_crit_edge ], [ 0, %if.end28.i.if.end_crit_edge ]
  %dmic_clk_rate.i = getelementptr inbounds %struct.da7213_platform_data, ptr %call.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %dmic_clk_rate.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i85.sink.i, ptr %dmic_clk_rate.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_val32.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_str.i) #8
  %43 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i, ptr %pdata, align 4
  br label %if.then29

if.then29:                                        ; preds = %if.end, %entry.if.then29_crit_edge
  %44 = phi ptr [ %call.i.i, %if.end ], [ %8, %entry.if.then29_crit_edge ]
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %switch = icmp ult i32 %46, 4
  %spec.select = select i1 %switch, i32 %46, i32 0
  %micbias2_lvl = getelementptr inbounds %struct.da7213_platform_data, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %micbias2_lvl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %micbias2_lvl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %switch138 = icmp ult i32 %48, 4
  %49 = shl i32 %48, 4
  %conv39 = select i1 %switch138, i32 %49, i32 0
  %micbias_lvl.1 = or i32 %conv39, %spec.select
  %conv41 = and i32 %micbias_lvl.1, 255
  %call42 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 98, i32 noundef 51, i32 noundef %conv41) #8
  %dmic_data_sel = getelementptr inbounds %struct.da7213_platform_data, ptr %44, i32 0, i32 2
  %50 = ptrtoint ptr %dmic_data_sel to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dmic_data_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %switch139 = icmp ult i32 %51, 2
  %dmic_cfg.0 = select i1 %switch139, i32 %51, i32 0
  %dmic_samplephase = getelementptr inbounds %struct.da7213_platform_data, ptr %44, i32 0, i32 3
  %52 = ptrtoint ptr %dmic_samplephase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dmic_samplephase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %switch140 = icmp ult i32 %53, 2
  %54 = shl i32 %53, 1
  %conv55 = select i1 %switch140, i32 %54, i32 0
  %dmic_cfg.1 = or i32 %conv55, %dmic_cfg.0
  %dmic_clk_rate = getelementptr inbounds %struct.da7213_platform_data, ptr %44, i32 0, i32 4
  %55 = ptrtoint ptr %dmic_clk_rate to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dmic_clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %switch141 = icmp ult i32 %56, 2
  %57 = shl i32 %56, 2
  %conv62 = select i1 %switch141, i32 %57, i32 0
  %dmic_cfg.2 = or i32 %dmic_cfg.1, %conv62
  %conv64 = and i32 %dmic_cfg.2, 255
  %call65 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 147, i32 noundef 7, i32 noundef %conv64) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then29, %if.end.thread145
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  %call.i142 = call i32 @__pm_runtime_idle(ptr noundef %59, i32 noundef 4) #8
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  %call70 = call ptr @devm_clk_get(ptr noundef %61, ptr noundef nonnull @.str.282) #8
  %mclk = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 2
  %62 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call70, ptr %mclk, align 4
  %cmp.i143 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then73, label %if.else82

if.then73:                                        ; preds = %if.end66
  %63 = ptrtoint ptr %call70 to i32
  %cmp.not = icmp eq ptr %call70, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not, label %if.else, label %if.then73.cleanup_crit_edge

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %mclk, align 4
  br label %cleanup

if.else82:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %fixed_clk_auto_pll = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 9
  %65 = ptrtoint ptr %fixed_clk_auto_pll to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %fixed_clk_auto_pll, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else82, %if.else, %if.then73.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else82 ], [ 0, %if.else ], [ %63, %if.then73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_set_component_sysclk(ptr noundef %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %clk_src = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %clk_id)
  %cmp = icmp eq i32 %5, %clk_id
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mclk_rate = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %freq)
  %cmp1 = icmp eq i32 %7, %freq
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %freq)
  %cmp2 = icmp ult i32 %freq, 5000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %freq)
  %cmp4.not = icmp ne i32 %freq, 32768
  %or.cond.not = and i1 %cmp2, %cmp4.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000000, i32 %freq)
  %cmp5 = icmp ugt i32 %freq, 54000000
  %or.cond54 = or i1 %cmp5, %or.cond.not
  br i1 %or.cond54, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.300, i32 noundef %freq) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.331)
  switch i32 %clk_id, label %do.end13 [
    i32 0, label %if.end7.sw.epilog_crit_edge
    i32 1, label %sw.bb9
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.303, i32 noundef %clk_id) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %if.end7.sw.epilog_crit_edge
  %.sink = phi i32 [ 16, %sw.bb9 ], [ %clk_id, %if.end7.sw.epilog_crit_edge ]
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 39, i32 noundef 16, i32 noundef %.sink) #8
  %9 = ptrtoint ptr %clk_src to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %clk_id, ptr %clk_src, align 4
  %mclk = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mclk, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %sw.epilog.if.end28_crit_edge, label %if.then16

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then16:                                        ; preds = %sw.epilog
  %call18 = tail call i32 @clk_round_rate(ptr noundef nonnull %11, i32 noundef %freq) #8
  %12 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mclk, align 4
  %call20 = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef %call18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then16.if.end28_crit_edge, label %do.end25

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end25:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.306, i32 noundef %call18) #11
  br label %cleanup

if.end28:                                         ; preds = %if.then16.if.end28_crit_edge, %sw.epilog.if.end28_crit_edge
  %freq.addr.0 = phi i32 [ %call18, %if.then16.if.end28_crit_edge ], [ %freq, %sw.epilog.if.end28_crit_edge ]
  %mclk_rate29 = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %mclk_rate29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %freq.addr.0, ptr %mclk_rate29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end25, %do.end13, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ %call20, %do.end25 ], [ 0, %if.end28 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_set_component_pll(ptr noundef %component, i32 noundef %pll_id, i32 noundef %source, i32 noundef %fref, i32 noundef %fout) #2 align 64 {
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
  %fixed_clk_auto_pll = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %fixed_clk_auto_pll to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fixed_clk_auto_pll, align 1
  %call1 = tail call fastcc i32 @_da7213_set_component_pll(ptr noundef %component, i32 noundef %source, i32 noundef %fout)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.332)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb22
    i32 2, label %sw.bb
    i32 1, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %mclk = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mclk, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.then2
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %8) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then2.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then2.do.end_crit_edge ]
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.322) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  %fixed_clk_auto_pll.i = getelementptr inbounds %struct.da7213_priv, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %fixed_clk_auto_pll.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fixed_clk_auto_pll.i, align 1, !range !647
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i36 = icmp eq i8 %16, 0
  br i1 %tobool.not.i36, label %if.end.cleanup_crit_edge, label %if.end.i38

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i38:                                       ; preds = %if.end
  %mclk.i = getelementptr inbounds %struct.da7213_priv, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mclk.i, align 4
  %call1.i37 = tail call i32 @clk_get_rate(ptr noundef %18) #8
  %mclk_rate.i = getelementptr inbounds %struct.da7213_priv, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %mclk_rate.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call1.i37, ptr %mclk_rate.i, align 4
  %master.i = getelementptr inbounds %struct.da7213_priv, ptr %14, i32 0, i32 6
  %20 = ptrtoint ptr %master.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %master.i, align 4, !range !647
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not.i = icmp eq i8 %21, 0
  %..i = select i1 %tobool4.not.i, i32 2, i32 1
  %out_rate.i = getelementptr inbounds %struct.da7213_priv, ptr %14, i32 0, i32 4
  %22 = ptrtoint ptr %out_rate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out_rate.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.333)
  switch i32 %23, label %if.end.i38.cleanup_crit_edge [
    i32 90316800, label %sw.bb.i
    i32 98304000, label %sw.bb15.i
  ]

if.end.i38.cleanup_crit_edge:                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i38
  %25 = zext i32 %call1.i37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.334)
  switch i32 %call1.i37, label %sw.bb.i.if.end27.i_crit_edge [
    i32 11289600, label %sw.bb.i.if.then13.i_crit_edge
    i32 22579200, label %sw.bb.i.if.then13.i_crit_edge57
    i32 45158400, label %sw.bb.i.if.then13.i_crit_edge58
  ]

sw.bb.i.if.then13.i_crit_edge58:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

sw.bb.i.if.then13.i_crit_edge57:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

sw.bb.i.if.then13.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13.i

sw.bb.i.if.end27.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then13.i:                                      ; preds = %sw.bb.i.if.then13.i_crit_edge, %sw.bb.i.if.then13.i_crit_edge57, %sw.bb.i.if.then13.i_crit_edge58
  br label %if.end27.i

sw.bb15.i:                                        ; preds = %if.end.i38
  %26 = zext i32 %call1.i37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.335)
  switch i32 %call1.i37, label %sw.bb15.i.if.end27.i_crit_edge [
    i32 12288000, label %sw.bb15.i.if.then24.i_crit_edge
    i32 24576000, label %sw.bb15.i.if.then24.i_crit_edge59
    i32 49152000, label %sw.bb15.i.if.then24.i_crit_edge60
  ]

sw.bb15.i.if.then24.i_crit_edge60:                ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i

sw.bb15.i.if.then24.i_crit_edge59:                ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i

sw.bb15.i.if.then24.i_crit_edge:                  ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i

sw.bb15.i.if.end27.i_crit_edge:                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then24.i:                                      ; preds = %sw.bb15.i.if.then24.i_crit_edge, %sw.bb15.i.if.then24.i_crit_edge59, %sw.bb15.i.if.then24.i_crit_edge60
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %sw.bb15.i.if.end27.i_crit_edge, %if.then13.i, %sw.bb.i.if.end27.i_crit_edge
  %mode.1.i = phi i32 [ 0, %if.then24.i ], [ 0, %if.then13.i ], [ %..i, %sw.bb.i.if.end27.i_crit_edge ], [ %..i, %sw.bb15.i.if.end27.i_crit_edge ]
  %call30.i = tail call fastcc i32 @_da7213_set_component_pll(ptr noundef %component, i32 noundef %mode.1.i, i32 noundef %23) #8
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %dapm.i.i40 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %27 = ptrtoint ptr %dapm.i.i40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dapm.i.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp12 = icmp eq i32 %28, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 35, i32 noundef 136, i32 noundef 136) #8
  br label %cleanup

if.else:                                          ; preds = %sw.bb10
  %mclk15 = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %mclk15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mclk15, align 4
  %tobool16.not = icmp eq ptr %30, null
  br i1 %tobool16.not, label %if.else.cleanup_crit_edge, label %if.then17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.else
  %fixed_clk_auto_pll.i43 = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 9
  %31 = ptrtoint ptr %fixed_clk_auto_pll.i43 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fixed_clk_auto_pll.i43, align 1, !range !647
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i44 = icmp eq i8 %32, 0
  br i1 %tobool.not.i44, label %if.then17.da7213_set_auto_pll.exit53_crit_edge, label %if.end.i48

if.then17.da7213_set_auto_pll.exit53_crit_edge:   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %da7213_set_auto_pll.exit53

if.end.i48:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i46 = tail call i32 @clk_get_rate(ptr noundef nonnull %30) #8
  %mclk_rate.i47 = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %mclk_rate.i47 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call1.i46, ptr %mclk_rate.i47, align 4
  %out_rate29.i50 = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %out_rate29.i50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %out_rate29.i50, align 4
  %call30.i51 = tail call fastcc i32 @_da7213_set_component_pll(ptr noundef %component, i32 noundef 0, i32 noundef %35) #8
  br label %da7213_set_auto_pll.exit53

da7213_set_auto_pll.exit53:                       ; preds = %if.end.i48, %if.then17.da7213_set_auto_pll.exit53_crit_edge
  %36 = ptrtoint ptr %mclk15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mclk15, align 4
  tail call void @clk_disable(ptr noundef %37) #8
  tail call void @clk_unprepare(ptr noundef %37) #8
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 35, i32 noundef 136, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb22, %da7213_set_auto_pll.exit53, %if.else.cleanup_crit_edge, %if.then13, %if.end27.i, %if.end.i38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.then13 ], [ 0, %da7213_set_auto_pll.exit53 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb22 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i38.cleanup_crit_edge ], [ 0, %if.end27.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_put_mixin_gain(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call2 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %alc_en = getelementptr inbounds %struct.da7213_priv, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %alc_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %alc_en, align 2, !range !647
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @da7213_alc_calib(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_put_alc_sw(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %alc_en = getelementptr inbounds %struct.da7213_priv, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %alc_en to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %alc_en, align 2, !range !647
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %if.then6, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @da7213_alc_calib(ptr noundef %1)
  %12 = ptrtoint ptr %alc_en to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %alc_en, align 2
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %alc_en8 = getelementptr inbounds %struct.da7213_priv, ptr %5, i32 0, i32 8
  %13 = ptrtoint ptr %alc_en8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %alc_en8, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6, %if.then.if.end9_crit_edge
  %call10 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #8
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @da7213_alc_calib(ptr noundef %component) unnamed_addr #2 align 64 {
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
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 103) #8
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 104) #8
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 50) #8
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 51) #8
  %call8 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 99) #8
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 100) #8
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 103, i32 noundef 128, i32 noundef 128) #8
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 104, i32 noundef 128, i32 noundef 128) #8
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 50, i32 noundef 6, i32 noundef 6) #8
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 51, i32 noundef 6, i32 noundef 6) #8
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 64, i32 noundef 64) #8
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 100, i32 noundef 64, i32 noundef 64) #8
  %alc_calib_auto = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %alc_calib_auto to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %alc_calib_auto, align 1, !range !647
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 43, i32 noundef 16, i32 noundef 16) #8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %call1.i = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 43) #8
  %and.i = and i32 %call1.i, 16
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %and4.i = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.end.i.if.end_crit_edge, label %do.end8.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end8.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.130) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i51 = tail call fastcc i32 @da7213_get_alc_data(ptr noundef %component, i8 noundef zeroext 0) #8
  %call1.i52 = tail call fastcc i32 @da7213_get_alc_data(ptr noundef %component, i8 noundef zeroext -128) #8
  %sub.i = sub i32 0, %call.i51
  %sub2.i = sub i32 0, %call1.i52
  %and.i53 = lshr i32 %sub.i, 8
  %conv3.i = and i32 %and.i53, 255
  %call4.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 166, i32 noundef %conv3.i) #8
  %and5.i = lshr i32 %sub.i, 16
  %conv7.i = and i32 %and5.i, 15
  %call9.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 167, i32 noundef %conv7.i) #8
  %and10.i = lshr i32 %sub2.i, 8
  %conv13.i = and i32 %and10.i, 255
  %call14.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 171, i32 noundef %conv13.i) #8
  %and15.i = lshr i32 %sub2.i, 16
  %conv17.i = and i32 %and15.i, 15
  %call19.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 172, i32 noundef %conv17.i) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end8.i, %do.end.i.if.end_crit_edge
  %.sink = phi i32 [ 3, %if.else ], [ 0, %do.end8.i ], [ 3, %do.end.i.if.end_crit_edge ]
  %call20.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 43, i32 noundef 3, i32 noundef %.sink) #8
  %conv18 = and i32 %call4, 255
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 50, i32 noundef %conv18) #8
  %conv20 = and i32 %call6, 255
  %call21 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 51, i32 noundef %conv20) #8
  %conv22 = and i32 %call1, 255
  %call23 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 103, i32 noundef %conv22) #8
  %conv24 = and i32 %call2, 255
  %call25 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 104, i32 noundef %conv24) #8
  %conv26 = and i32 %call8, 255
  %call27 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 99, i32 noundef %conv26) #8
  %conv28 = and i32 %call10, 255
  %call29 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 100, i32 noundef %conv28) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da7213_get_alc_data(ptr noundef %component, i8 noundef zeroext %reg_val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = zext i8 %reg_val to i32
  %or = or i32 %conv2, 2
  %or7 = or i32 %conv2, 3
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %conv2) #8
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or) #8
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #8
  %call8 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or7) #8
  %call9 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #8
  %shl = shl i32 %call5, 8
  %shl10 = shl i32 %call9, 16
  %or11 = or i32 %shl10, %shl
  %call.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %conv2) #8
  %call4.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or) #8
  %call5.1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #8
  %call8.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or7) #8
  %call9.1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #8
  %shl.1 = shl i32 %call5.1, 8
  %shl10.1 = shl i32 %call9.1, 16
  %or11.1 = or i32 %shl10.1, %shl.1
  %add.1 = add i32 %or11.1, %or11
  %call.2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %conv2) #8
  %call4.2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or) #8
  %call5.2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #8
  %call8.2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or7) #8
  %call9.2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #8
  %shl.2 = shl i32 %call5.2, 8
  %shl10.2 = shl i32 %call9.2, 16
  %or11.2 = or i32 %shl10.2, %shl.2
  %add.2 = add i32 %or11.2, %add.1
  %call.3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %conv2) #8
  %call4.3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or) #8
  %call5.3 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #8
  %call8.3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or7) #8
  %call9.3 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #8
  %shl.3 = shl i32 %call5.3, 8
  %shl10.3 = shl i32 %call9.3, 16
  %or11.3 = or i32 %shl10.3, %shl.3
  %add.3 = add i32 %or11.3, %add.2
  %call.4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %conv2) #8
  %call4.4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or) #8
  %call5.4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #8
  %call8.4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or7) #8
  %call9.4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #8
  %shl.4 = shl i32 %call5.4, 8
  %shl10.4 = shl i32 %call9.4, 16
  %or11.4 = or i32 %shl10.4, %shl.4
  %add.4 = add i32 %or11.4, %add.3
  %div = sdiv i32 %add.4, 5
  ret i32 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dapm_regulator_event(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_dai_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.336)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb32
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %master = getelementptr inbounds %struct.da7213_priv, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %master, align 4, !range !647
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 128, i32 noundef 128) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 148, i32 noundef 1, i32 noundef 0) #8
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 39) #8
  %and = and i32 %call4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %and10 = and i32 %call4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end16_crit_edge, label %if.then12

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 240, i32 noundef 139) #8
  %call14 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 242, i32 noundef 3) #8
  %call15 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 240, i32 noundef 0) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end8.if.end16_crit_edge
  %call17 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 3) #8
  %and20 = and i32 %call17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.cond, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond:                                          ; preds = %if.end16
  tail call void @msleep(i32 noundef 50) #8
  %call17.1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 3) #8
  %and20.1 = and i32 %call17.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.1)
  %tobool21.not.1 = icmp eq i32 %and20.1, 0
  br i1 %tobool21.not.1, label %do.cond.1, label %do.cond.cleanup_crit_edge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.1:                                        ; preds = %do.cond
  tail call void @msleep(i32 noundef 50) #8
  %call17.2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 3) #8
  %and20.2 = and i32 %call17.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.2)
  %tobool21.not.2 = icmp eq i32 %and20.2, 0
  br i1 %tobool21.not.2, label %do.cond.2, label %do.cond.1.cleanup_crit_edge

do.cond.1.cleanup_crit_edge:                      ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.2:                                        ; preds = %do.cond.1
  tail call void @msleep(i32 noundef 50) #8
  %call17.3 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 3) #8
  %and20.3 = and i32 %call17.3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.3)
  %tobool21.not.3 = icmp eq i32 %and20.3, 0
  br i1 %tobool21.not.3, label %do.cond.3, label %do.cond.2.cleanup_crit_edge

do.cond.2.cleanup_crit_edge:                      ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.3:                                        ; preds = %do.cond.2
  tail call void @msleep(i32 noundef 50) #8
  %call17.4 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 3) #8
  %and20.4 = and i32 %call17.4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.4)
  %tobool21.not.4 = icmp eq i32 %and20.4, 0
  br i1 %tobool21.not.4, label %do.cond.4, label %do.cond.3.cleanup_crit_edge

do.cond.3.cleanup_crit_edge:                      ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.4:                                        ; preds = %do.cond.3
  tail call void @msleep(i32 noundef 50) #8
  %call17.5 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 3) #8
  %and20.5 = and i32 %call17.5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.5)
  %tobool21.not.5 = icmp eq i32 %and20.5, 0
  br i1 %tobool21.not.5, label %do.cond.5, label %do.cond.4.cleanup_crit_edge

do.cond.4.cleanup_crit_edge:                      ; preds = %do.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.5:                                        ; preds = %do.cond.4
  tail call void @msleep(i32 noundef 50) #8
  %call17.6 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 3) #8
  %and20.6 = and i32 %call17.6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.6)
  %tobool21.not.6 = icmp eq i32 %and20.6, 0
  br i1 %tobool21.not.6, label %do.cond.6, label %do.cond.5.cleanup_crit_edge

do.cond.5.cleanup_crit_edge:                      ; preds = %do.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.6:                                        ; preds = %do.cond.5
  tail call void @msleep(i32 noundef 50) #8
  %call17.7 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 3) #8
  %and20.7 = and i32 %call17.7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.7)
  %tobool21.not.7 = icmp eq i32 %and20.7, 0
  br i1 %tobool21.not.7, label %do.cond.7, label %do.cond.6.cleanup_crit_edge

do.cond.6.cleanup_crit_edge:                      ; preds = %do.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.7:                                        ; preds = %do.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 50) #8
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.241) #11
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %call33 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 39) #8
  %and36 = and i32 %call33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %sw.bb32.if.end42_crit_edge, label %if.then38

sw.bb32.if.end42_crit_edge:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then38:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 240, i32 noundef 139) #8
  %call40 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 242, i32 noundef 1) #8
  %call41 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 240, i32 noundef 0) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %sw.bb32.if.end42_crit_edge
  %call43 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 148, i32 noundef 1, i32 noundef 1) #8
  %master44 = getelementptr inbounds %struct.da7213_priv, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %master44 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %master44, align 4, !range !647
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool45.not = icmp eq i8 %12, 0
  br i1 %tobool45.not, label %if.end42.cleanup_crit_edge, label %if.then46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 128, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end42.cleanup_crit_edge, %do.cond.7, %do.cond.6.cleanup_crit_edge, %do.cond.5.cleanup_crit_edge, %do.cond.4.cleanup_crit_edge, %do.cond.3.cleanup_crit_edge, %do.cond.2.cleanup_crit_edge, %do.cond.1.cleanup_crit_edge, %do.cond.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.cond.7 ], [ 0, %if.then46 ], [ 0, %if.end42.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.cond.6.cleanup_crit_edge ], [ 0, %do.cond.5.cleanup_crit_edge ], [ 0, %do.cond.4.cleanup_crit_edge ], [ 0, %do.cond.3.cleanup_crit_edge ], [ 0, %do.cond.2.cleanup_crit_edge ], [ 0, %do.cond.1.cleanup_crit_edge ], [ 0, %do.cond.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_da7213_set_component_pll(ptr noundef %component, i32 noundef %source, i32 noundef %fout) unnamed_addr #2 align 64 {
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
  %mclk_rate = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %5)
  %cmp = icmp eq i32 %5, 32768
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %master = getelementptr inbounds %struct.da7213_priv, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %master, align 4, !range !647
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.308) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %5)
  %cmp3 = icmp ult i32 %5, 5000000
  br i1 %cmp3, label %do.end7, label %if.else10

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.311, i32 noundef %5) #11
  br label %cleanup

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000001, i32 %5)
  %cmp12 = icmp ult i32 %5, 9000001
  br i1 %cmp12, label %if.else10.if.end38_crit_edge, label %if.else14

if.else10.if.end38_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp4(i32 18000001, i32 %5)
  %cmp16 = icmp ult i32 %5, 18000001
  br i1 %cmp16, label %if.else14.if.end38_crit_edge, label %if.else18

if.else14.if.end38_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp4(i32 36000001, i32 %5)
  %cmp20 = icmp ult i32 %5, 36000001
  br i1 %cmp20, label %if.else18.if.end38_crit_edge, label %if.else22

if.else18.if.end38_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000001, i32 %5)
  %cmp24 = icmp ult i32 %5, 54000001
  br i1 %cmp24, label %if.else22.if.end38_crit_edge, label %do.end29

if.else22.if.end38_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.end29:                                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.314, i32 noundef %5) #11
  br label %cleanup

if.end38:                                         ; preds = %if.else22.if.end38_crit_edge, %if.else18.if.end38_crit_edge, %if.else14.if.end38_crit_edge, %if.else10.if.end38_crit_edge
  %indiv_bits.0 = phi i8 [ 0, %if.else10.if.end38_crit_edge ], [ 4, %if.else14.if.end38_crit_edge ], [ 8, %if.else18.if.end38_crit_edge ], [ 12, %if.else22.if.end38_crit_edge ]
  %indiv.0 = phi i32 [ 2, %if.else10.if.end38_crit_edge ], [ 4, %if.else14.if.end38_crit_edge ], [ 8, %if.else18.if.end38_crit_edge ], [ 16, %if.else22.if.end38_crit_edge ]
  %div = udiv i32 %5, %indiv.0
  %8 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.337)
  switch i32 %source, label %do.end59 [
    i32 0, label %sw.bb
    i32 1, label %if.end38.sw.epilog_crit_edge
    i32 2, label %sw.bb41
    i32 3, label %do.end51
  ]

if.end38.sw.epilog_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %conv39 = zext i8 %indiv_bits.0 to i32
  %call40 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 39, i32 noundef 236, i32 noundef %conv39) #8
  br label %cleanup

sw.bb41:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %9 = or i8 %indiv_bits.0, 64
  br label %sw.epilog

do.end51:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.317) #11
  br label %cleanup

do.end59:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.320) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb41, %if.end38.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge
  %freq_ref.012 = phi i32 [ %div, %sw.bb41 ], [ %div, %if.end38.sw.epilog_crit_edge ], [ 3750000, %if.then.sw.epilog_crit_edge ]
  %fout.addr.0 = phi i32 [ 94310400, %sw.bb41 ], [ %fout, %if.end38.sw.epilog_crit_edge ], [ 94310400, %if.then.sw.epilog_crit_edge ]
  %pll_ctrl.0 = phi i8 [ %9, %sw.bb41 ], [ %indiv_bits.0, %if.end38.sw.epilog_crit_edge ], [ 100, %if.then.sw.epilog_crit_edge ]
  %freq_ref.012.frozen = freeze i32 %freq_ref.012
  %div61 = udiv i32 %fout.addr.0, %freq_ref.012.frozen
  %10 = mul i32 %div61, %freq_ref.012.frozen
  %rem.decomposed = sub i32 %fout.addr.0, %10
  %conv63 = zext i32 %rem.decomposed to i64
  %mul = shl nuw nsw i64 %conv63, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %rem.decomposed)
  %cmp239 = icmp ult i32 %rem.decomposed, 524288
  br i1 %cmp239, label %if.then243, label %if.else249, !prof !648

if.then243:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv244 = trunc i64 %mul to i32
  %div247 = udiv i32 %conv244, %freq_ref.012
  br label %if.end253

if.else249:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %freq_ref.012, i64 %mul) #13, !srcloc !649
  %asmresult1.i = extractvalue { i64, i64 } %11, 1
  %extract.t41 = trunc i64 %asmresult1.i to i32
  br label %if.end253

if.end253:                                        ; preds = %if.else249, %if.then243
  %frac_div.0.off0 = phi i32 [ %div247, %if.then243 ], [ %extract.t41, %if.else249 ]
  %12 = lshr i32 %frac_div.0.off0, 8
  %conv260 = and i32 %12, 255
  %call261 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 36, i32 noundef %conv260) #8
  %conv262 = and i32 %frac_div.0.off0, 255
  %call263 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 37, i32 noundef %conv262) #8
  %conv264 = and i32 %div61, 255
  %call265 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 38, i32 noundef %conv264) #8
  %13 = or i8 %pll_ctrl.0, -128
  %conv269 = zext i8 %13 to i32
  %call270 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 39, i32 noundef 236, i32 noundef %conv269) #8
  br i1 %cmp, label %if.then273, label %if.end253.cleanup_crit_edge

if.end253.cleanup_crit_edge:                      ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then273:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #10
  %call274 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 240, i32 noundef 139) #8
  %call275 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 241, i32 noundef 3) #8
  %call276 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 241, i32 noundef 1) #8
  %call277 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 240, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then273, %if.end253.cleanup_crit_edge, %do.end59, %do.end51, %sw.bb, %do.end29, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end59 ], [ -22, %do.end51 ], [ 0, %sw.bb ], [ -22, %do.end ], [ -22, %do.end7 ], [ -22, %do.end29 ], [ 0, %if.then273 ], [ 0, %if.end253.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.338)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %master3 = getelementptr inbounds %struct.da7213_priv, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %master3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %master3, align 4
  %and4 = and i32 %fmt, 15
  %9 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.339)
  switch i32 %and4, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.epilog.sw.bb5_crit_edge
    i32 3, label %sw.epilog.sw.bb5_crit_edge105
    i32 2, label %sw.epilog.sw.bb5_crit_edge106
    i32 4, label %sw.epilog.sw.bb19_crit_edge
    i32 5, label %sw.epilog.sw.bb19_crit_edge107
  ]

sw.epilog.sw.bb19_crit_edge107:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

sw.epilog.sw.bb19_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

sw.epilog.sw.bb5_crit_edge106:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge105:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb5:                                           ; preds = %sw.epilog.sw.bb5_crit_edge, %sw.epilog.sw.bb5_crit_edge105, %sw.epilog.sw.bb5_crit_edge106
  %and6 = lshr i32 %fmt, 8
  %10 = and i32 %and6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %11 = icmp ult i32 %10, 5
  br i1 %11, label %switch.hole_check, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb19:                                          ; preds = %sw.epilog.sw.bb19_crit_edge, %sw.epilog.sw.bb19_crit_edge107
  %and20 = lshr i32 %fmt, 8
  %12 = and i32 %and20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %switch.hole_check94, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb5
  %switch.maskindex = trunc i32 %10 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %14 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit.not = icmp eq i8 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.da7213_set_dai_fmt, i32 0, i32 %10
  br label %sw.epilog36

switch.hole_check94:                              ; preds = %sw.bb19
  %switch.maskindex96 = trunc i32 %12 to i8
  %switch.shifted97 = lshr i8 29, %switch.maskindex96
  %15 = and i8 %switch.shifted97, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit98.not = icmp eq i8 %15, 0
  br i1 %switch.lobit98.not, label %switch.hole_check94.cleanup_crit_edge, label %switch.lookup95

switch.hole_check94.cleanup_crit_edge:            ; preds = %switch.hole_check94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup95:                                  ; preds = %switch.hole_check94
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep99 = getelementptr inbounds [5 x i32], ptr @switch.table.da7213_set_dai_fmt.325, i32 0, i32 %12
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %switch.lookup95, %switch.lookup
  %switch.gep99.sink = phi ptr [ %switch.gep99, %switch.lookup95 ], [ %switch.gep, %switch.lookup ]
  %switch.tableidx = add nsw i32 %and4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 5
  br i1 %16, label %switch.lookup101, label %sw.epilog36.cleanup_crit_edge

sw.epilog36.cleanup_crit_edge:                    ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup101:                                 ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %switch.gep99.sink to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load100 = load i32, ptr %switch.gep99.sink, align 4
  %switch.gep102 = getelementptr inbounds [5 x i32], ptr @switch.table.da7213_set_dai_fmt.326, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep102 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep102, align 4
  %switch.gep103 = getelementptr inbounds [5 x i32], ptr @switch.table.da7213_set_dai_fmt.327, i32 0, i32 %switch.tableidx
  %19 = ptrtoint ptr %switch.gep103 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load104 = load i32, ptr %switch.gep103, align 4
  %call64 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 40, i32 noundef 15, i32 noundef %switch.load100) #8
  %call66 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 41, i32 noundef 3, i32 noundef %switch.load) #8
  %call68 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 152, i32 noundef %switch.load104) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup101, %sw.epilog36.cleanup_crit_edge, %switch.hole_check94.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup101 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %sw.bb19.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog36.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ -22, %switch.hole_check94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 64
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 105, i32 noundef 64, i32 noundef %.) #8
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 106, i32 noundef 64, i32 noundef %.) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %7, %entry.if.then.i.i.i_crit_edge ], [ %10, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !650
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #8
  %11 = add i32 %call1.i, -16
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %12 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %14 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit.not = icmp eq i8 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.da7213_hw_params, i32 0, i32 %12
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.340)
  switch i32 %17, label %switch.lookup.cleanup_crit_edge [
    i32 8000, label %switch.lookup.sw.epilog37_crit_edge
    i32 11025, label %sw.bb18
    i32 12000, label %sw.bb20
    i32 16000, label %sw.bb22
    i32 22050, label %sw.bb24
    i32 32000, label %sw.bb26
    i32 44100, label %sw.bb28
    i32 48000, label %sw.bb30
    i32 88200, label %sw.bb32
    i32 96000, label %sw.bb34
  ]

switch.lookup.sw.epilog37_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog37

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb18:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog37

sw.bb20:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog37

sw.bb22:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog37

sw.bb24:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog37

sw.bb26:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog37

sw.bb28:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog37

sw.bb30:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog37

sw.bb32:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog37

sw.bb34:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog37

sw.epilog37:                                      ; preds = %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %switch.lookup.sw.epilog37_crit_edge
  %.sink = phi i32 [ 98304000, %sw.bb34 ], [ 90316800, %sw.bb32 ], [ 98304000, %sw.bb30 ], [ 90316800, %sw.bb28 ], [ 98304000, %sw.bb26 ], [ 90316800, %sw.bb24 ], [ 98304000, %sw.bb22 ], [ 98304000, %sw.bb20 ], [ 90316800, %sw.bb18 ], [ 98304000, %switch.lookup.sw.epilog37_crit_edge ]
  %fs.0 = phi i32 [ 15, %sw.bb34 ], [ 14, %sw.bb32 ], [ 11, %sw.bb30 ], [ 10, %sw.bb28 ], [ 9, %sw.bb26 ], [ 6, %sw.bb24 ], [ 5, %sw.bb22 ], [ 3, %sw.bb20 ], [ 2, %sw.bb18 ], [ 1, %switch.lookup.sw.epilog37_crit_edge ]
  %out_rate35 = getelementptr inbounds %struct.da7213_priv, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %out_rate35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %out_rate35, align 4
  %call39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 41, i32 noundef 12, i32 noundef %switch.load) #8
  %call41 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 34, i32 noundef %fs.0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog37, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog37 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #8
  %supplies = getelementptr inbounds %struct.da7213_priv, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7213_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supplies = getelementptr inbounds %struct.da7213_priv, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @regcache_sync(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 399)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 399)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !184, !185, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !428, !430, !432, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !470, !471, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !561, !562, !563, !565, !567, !569, !570, !571, !572, !574, !576, !578, !579, !580, !581, !583, !584, !585, !586, !588, !589, !590, !591, !593, !594, !595, !597, !598, !599, !601, !602, !603, !604, !606, !607, !608, !610, !611, !612, !614, !615, !616, !618, !619, !620, !622, !623, !624, !625, !627, !629, !631, !633, !635}
!llvm.module.flags = !{!637, !638, !639, !640, !641, !642, !643, !644}
!llvm.ident = !{!645}

!0 = !{ptr @__initcall__kmod_snd_soc_da7213__295_2047_da7213_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_da7213__295_2047_da7213_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/da7213.c", i32 2047, i32 1}
!2 = !{ptr @__exitcall_da7213_i2c_driver_exit, !1, !"__exitcall_da7213_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description296, !4, !"__UNIQUE_ID_description296", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/da7213.c", i32 2049, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/da7213.c", i32 2050, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/da7213.c", i32 2051, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/da7213.c", i32 2038, i32 11}
!12 = !{ptr @da7213_i2c_driver, !13, !"da7213_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/da7213.c", i32 2036, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/da7213.c", i32 1968, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @da7213_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @da7213_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @da7213_i2c_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/da7213.c", i32 1980, i32 19}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/da7213.c", i32 1983, i32 3}
!27 = !{ptr @da7213_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @da7213_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/da7213.c", i32 1995, i32 3}
!31 = !{ptr @da7213_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @da7213_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/da7213.c", i32 1945, i32 25}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/da7213.c", i32 1946, i32 26}
!37 = distinct !{null, !38, !"da7213_supply_names", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/da7213.c", i32 1944, i32 20}
!39 = !{ptr @da7213_regmap_config, !40, !"da7213_regmap_config", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/da7213.c", i32 1928, i32 35}
!41 = !{ptr @da7213_reg_defaults, !42, !"da7213_reg_defaults", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/da7213.c", i32 1041, i32 33}
!43 = !{ptr @soc_component_dev_da7213, !44, !"soc_component_dev_da7213", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/da7213.c", i32 1911, i32 46}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/da7213.c", i32 387, i32 2}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/da7213.c", i32 390, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/da7213.c", i32 393, i32 2}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/da7213.c", i32 396, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/da7213.c", i32 401, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/da7213.c", i32 404, i32 2}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/da7213.c", i32 407, i32 2}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/da7213.c", i32 410, i32 2}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/da7213.c", i32 415, i32 2}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/da7213.c", i32 417, i32 2}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/da7213.c", i32 420, i32 2}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/da7213.c", i32 423, i32 2}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/da7213.c", i32 426, i32 2}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/da7213.c", i32 429, i32 2}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/da7213.c", i32 434, i32 2}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/da7213.c", i32 436, i32 2}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/da7213.c", i32 437, i32 2}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/da7213.c", i32 440, i32 2}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/da7213.c", i32 442, i32 2}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/da7213.c", i32 444, i32 2}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/da7213.c", i32 445, i32 2}
!87 = !{ptr @.str.53, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/da7213.c", i32 448, i32 2}
!89 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/da7213.c", i32 451, i32 2}
!91 = !{ptr @.str.56, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/da7213.c", i32 453, i32 2}
!93 = !{ptr @.str.58, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/da7213.c", i32 455, i32 2}
!95 = !{ptr @.str.60, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/da7213.c", i32 457, i32 2}
!97 = !{ptr @.str.62, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/da7213.c", i32 460, i32 2}
!99 = !{ptr @.str.64, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/da7213.c", i32 462, i32 2}
!101 = !{ptr @.str.66, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/da7213.c", i32 464, i32 2}
!103 = !{ptr @.str.68, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/da7213.c", i32 466, i32 2}
!105 = !{ptr @.str.70, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/da7213.c", i32 469, i32 2}
!107 = !{ptr @.str.71, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/da7213.c", i32 472, i32 2}
!109 = !{ptr @.str.73, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/da7213.c", i32 474, i32 2}
!111 = !{ptr @.str.75, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/da7213.c", i32 477, i32 2}
!113 = !{ptr @.str.77, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/da7213.c", i32 481, i32 2}
!115 = !{ptr @.str.79, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/da7213.c", i32 484, i32 2}
!117 = !{ptr @.str.81, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/da7213.c", i32 487, i32 2}
!119 = !{ptr @.str.83, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/da7213.c", i32 490, i32 2}
!121 = !{ptr @.str.85, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/da7213.c", i32 493, i32 2}
!123 = !{ptr @.str.87, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/da7213.c", i32 496, i32 2}
!125 = !{ptr @.str.89, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/da7213.c", i32 499, i32 2}
!127 = !{ptr @.str.90, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/da7213.c", i32 502, i32 2}
!129 = !{ptr @.str.92, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/da7213.c", i32 504, i32 2}
!131 = !{ptr @.str.93, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/da7213.c", i32 505, i32 2}
!133 = !{ptr @.str.94, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/da7213.c", i32 506, i32 2}
!135 = !{ptr @.str.95, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/da7213.c", i32 507, i32 2}
!137 = !{ptr @.str.97, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/da7213.c", i32 510, i32 2}
!139 = !{ptr @.str.99, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/da7213.c", i32 515, i32 2}
!141 = !{ptr @.str.101, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/da7213.c", i32 518, i32 2}
!143 = !{ptr @.str.103, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/da7213.c", i32 523, i32 2}
!145 = !{ptr @.str.105, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/da7213.c", i32 528, i32 2}
!147 = !{ptr @.str.107, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/da7213.c", i32 531, i32 2}
!149 = !{ptr @.str.108, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/da7213.c", i32 532, i32 2}
!151 = !{ptr @.str.109, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/da7213.c", i32 533, i32 2}
!153 = !{ptr @.str.110, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/da7213.c", i32 538, i32 2}
!155 = !{ptr @.str.111, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/da7213.c", i32 543, i32 2}
!157 = !{ptr @.str.112, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/da7213.c", i32 544, i32 2}
!159 = !{ptr @.str.114, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/da7213.c", i32 547, i32 2}
!161 = !{ptr @.str.116, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/da7213.c", i32 550, i32 2}
!163 = !{ptr @.str.118, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/da7213.c", i32 553, i32 2}
!165 = !{ptr @.str.120, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/da7213.c", i32 557, i32 2}
!167 = !{ptr @.str.122, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/da7213.c", i32 560, i32 2}
!169 = !{ptr @.str.124, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/da7213.c", i32 563, i32 2}
!171 = !{ptr @.str.126, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/da7213.c", i32 566, i32 2}
!173 = !{ptr @.str.128, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/da7213.c", i32 569, i32 2}
!175 = !{ptr @da7213_snd_controls, !176, !"da7213_snd_controls", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/da7213.c", i32 384, i32 38}
!177 = !{ptr @mic_vol_tlv, !178, !"mic_vol_tlv", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/da7213.c", i32 51, i32 14}
!179 = !{ptr @aux_vol_tlv, !180, !"aux_vol_tlv", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/da7213.c", i32 32, i32 14}
!181 = !{ptr @.str.130, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/da7213.c", i32 267, i32 3}
!183 = !{ptr @.str.131, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.132, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @da7213_alc_calib_auto._entry, !182, !"_entry", i1 false, i1 false}
!186 = !{ptr @da7213_alc_calib_auto._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @mixin_gain_tlv, !188, !"mixin_gain_tlv", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/da7213.c", i32 52, i32 14}
!189 = !{ptr @digital_gain_tlv, !190, !"digital_gain_tlv", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/da7213.c", i32 39, i32 14}
!191 = !{ptr @hp_vol_tlv, !192, !"hp_vol_tlv", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/da7213.c", i32 54, i32 14}
!193 = !{ptr @lineout_vol_tlv, !194, !"lineout_vol_tlv", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/da7213.c", i32 55, i32 14}
!195 = !{ptr @eq_gain_tlv, !196, !"eq_gain_tlv", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/da7213.c", i32 53, i32 14}
!197 = !{ptr @da7213_adc_audio_hpf_corner, !198, !"da7213_adc_audio_hpf_corner", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/da7213.c", i32 84, i32 8}
!199 = !{ptr @.str.133, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/da7213.c", i32 76, i32 2}
!201 = !{ptr @.str.134, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/da7213.c", i32 76, i32 14}
!203 = !{ptr @.str.135, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/da7213.c", i32 76, i32 26}
!205 = !{ptr @.str.136, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/da7213.c", i32 76, i32 37}
!207 = !{ptr @da7213_audio_hpf_corner_txt, !208, !"da7213_audio_hpf_corner_txt", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/da7213.c", i32 75, i32 27}
!209 = !{ptr @da7213_adc_voice_hpf_corner, !210, !"da7213_adc_voice_hpf_corner", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/da7213.c", i32 69, i32 8}
!211 = !{ptr @.str.137, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/da7213.c", i32 61, i32 2}
!213 = !{ptr @.str.138, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/da7213.c", i32 61, i32 11}
!215 = !{ptr @.str.139, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/da7213.c", i32 61, i32 19}
!217 = !{ptr @.str.140, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/da7213.c", i32 61, i32 27}
!219 = !{ptr @.str.141, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/da7213.c", i32 61, i32 36}
!221 = !{ptr @.str.142, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/da7213.c", i32 61, i32 45}
!223 = !{ptr @.str.143, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/da7213.c", i32 61, i32 54}
!225 = !{ptr @.str.144, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/da7213.c", i32 61, i32 63}
!227 = !{ptr @da7213_voice_hpf_corner_txt, !228, !"da7213_voice_hpf_corner_txt", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/da7213.c", i32 60, i32 27}
!229 = !{ptr @da7213_dac_audio_hpf_corner, !230, !"da7213_dac_audio_hpf_corner", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/da7213.c", i32 79, i32 8}
!231 = !{ptr @da7213_dac_voice_hpf_corner, !232, !"da7213_dac_voice_hpf_corner", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/da7213.c", i32 64, i32 8}
!233 = !{ptr @da7213_dac_soft_mute_rate, !234, !"da7213_dac_soft_mute_rate", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/da7213.c", i32 135, i32 8}
!235 = !{ptr @.str.145, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/da7213.c", i32 132, i32 2}
!237 = !{ptr @.str.146, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/da7213.c", i32 132, i32 7}
!239 = !{ptr @.str.147, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/da7213.c", i32 132, i32 12}
!241 = !{ptr @.str.148, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/da7213.c", i32 132, i32 17}
!243 = !{ptr @.str.149, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/da7213.c", i32 132, i32 22}
!245 = !{ptr @.str.150, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/da7213.c", i32 132, i32 28}
!247 = !{ptr @.str.151, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/da7213.c", i32 132, i32 34}
!249 = !{ptr @da7213_dac_soft_mute_rate_txt, !250, !"da7213_dac_soft_mute_rate_txt", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/da7213.c", i32 131, i32 27}
!251 = !{ptr @da7213_gain_ramp_rate, !252, !"da7213_gain_ramp_rate", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/da7213.c", i32 95, i32 8}
!253 = !{ptr @.str.152, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/da7213.c", i32 91, i32 2}
!255 = !{ptr @.str.153, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/da7213.c", i32 91, i32 22}
!257 = !{ptr @.str.154, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/da7213.c", i32 91, i32 43}
!259 = !{ptr @.str.155, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/da7213.c", i32 92, i32 2}
!261 = !{ptr @da7213_gain_ramp_rate_txt, !262, !"da7213_gain_ramp_rate_txt", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/da7213.c", i32 90, i32 27}
!263 = !{ptr @da7213_dac_ng_setup_time, !264, !"da7213_dac_ng_setup_time", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/da7213.c", i32 105, i32 8}
!265 = !{ptr @.str.156, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/da7213.c", i32 102, i32 2}
!267 = !{ptr @.str.157, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/da7213.c", i32 102, i32 17}
!269 = !{ptr @.str.158, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/da7213.c", i32 102, i32 32}
!271 = !{ptr @.str.159, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/da7213.c", i32 102, i32 48}
!273 = !{ptr @da7213_dac_ng_setup_time_txt, !274, !"da7213_dac_ng_setup_time_txt", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/da7213.c", i32 101, i32 27}
!275 = !{ptr @da7213_dac_ng_rampup_rate, !276, !"da7213_dac_ng_rampup_rate", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/da7213.c", i32 115, i32 8}
!277 = !{ptr @.str.160, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/da7213.c", i32 112, i32 2}
!279 = !{ptr @.str.161, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/da7213.c", i32 112, i32 16}
!281 = !{ptr @da7213_dac_ng_rampup_txt, !282, !"da7213_dac_ng_rampup_txt", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/da7213.c", i32 111, i32 27}
!283 = !{ptr @da7213_dac_ng_rampdown_rate, !284, !"da7213_dac_ng_rampdown_rate", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/da7213.c", i32 125, i32 8}
!285 = !{ptr @.str.162, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/da7213.c", i32 122, i32 2}
!287 = !{ptr @.str.163, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/da7213.c", i32 122, i32 16}
!289 = !{ptr @da7213_dac_ng_rampdown_txt, !290, !"da7213_dac_ng_rampdown_txt", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/da7213.c", i32 121, i32 27}
!291 = !{ptr @da7213_alc_attack_rate, !292, !"da7213_alc_attack_rate", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/da7213.c", i32 146, i32 8}
!293 = !{ptr @.str.164, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/da7213.c", i32 142, i32 2}
!295 = !{ptr @.str.165, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/da7213.c", i32 142, i32 11}
!297 = !{ptr @.str.166, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/da7213.c", i32 142, i32 20}
!299 = !{ptr @.str.167, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/da7213.c", i32 142, i32 30}
!301 = !{ptr @.str.168, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/da7213.c", i32 142, i32 40}
!303 = !{ptr @.str.169, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/da7213.c", i32 142, i32 50}
!305 = !{ptr @.str.170, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/da7213.c", i32 142, i32 61}
!307 = !{ptr @.str.171, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/da7213.c", i32 143, i32 2}
!309 = !{ptr @.str.172, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/da7213.c", i32 143, i32 13}
!311 = !{ptr @.str.173, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/da7213.c", i32 143, i32 25}
!313 = !{ptr @.str.174, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/da7213.c", i32 143, i32 37}
!315 = !{ptr @.str.175, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/da7213.c", i32 143, i32 49}
!317 = !{ptr @.str.176, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/da7213.c", i32 143, i32 61}
!319 = !{ptr @da7213_alc_attack_rate_txt, !320, !"da7213_alc_attack_rate_txt", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/da7213.c", i32 141, i32 27}
!321 = !{ptr @da7213_alc_release_rate, !322, !"da7213_alc_release_rate", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/da7213.c", i32 157, i32 8}
!323 = !{ptr @da7213_alc_release_rate_txt, !324, !"da7213_alc_release_rate_txt", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/da7213.c", i32 152, i32 27}
!325 = !{ptr @da7213_alc_hold_time, !326, !"da7213_alc_hold_time", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/da7213.c", i32 169, i32 8}
!327 = !{ptr @.str.177, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/da7213.c", i32 164, i32 2}
!329 = !{ptr @.str.178, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/da7213.c", i32 164, i32 11}
!331 = !{ptr @.str.179, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/da7213.c", i32 164, i32 21}
!333 = !{ptr @.str.180, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/da7213.c", i32 164, i32 31}
!335 = !{ptr @.str.181, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/da7213.c", i32 164, i32 41}
!337 = !{ptr @.str.182, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/da7213.c", i32 164, i32 51}
!339 = !{ptr @.str.183, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/da7213.c", i32 164, i32 62}
!341 = !{ptr @.str.184, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/da7213.c", i32 165, i32 2}
!343 = !{ptr @.str.185, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/da7213.c", i32 165, i32 13}
!345 = !{ptr @.str.186, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/da7213.c", i32 165, i32 25}
!347 = !{ptr @.str.187, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/da7213.c", i32 165, i32 37}
!349 = !{ptr @.str.188, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/da7213.c", i32 165, i32 49}
!351 = !{ptr @.str.189, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/da7213.c", i32 166, i32 2}
!353 = !{ptr @.str.190, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/da7213.c", i32 166, i32 15}
!355 = !{ptr @.str.191, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/da7213.c", i32 166, i32 28}
!357 = !{ptr @.str.192, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/da7213.c", i32 166, i32 42}
!359 = !{ptr @da7213_alc_hold_time_txt, !360, !"da7213_alc_hold_time_txt", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/da7213.c", i32 163, i32 27}
!361 = !{ptr @da7213_alc_integ_attack_rate, !362, !"da7213_alc_integ_attack_rate", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/da7213.c", i32 179, i32 8}
!363 = !{ptr @.str.193, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/da7213.c", i32 176, i32 2}
!365 = !{ptr @.str.194, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/da7213.c", i32 176, i32 9}
!367 = !{ptr @.str.195, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/da7213.c", i32 176, i32 17}
!369 = !{ptr @.str.196, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/da7213.c", i32 176, i32 26}
!371 = !{ptr @da7213_alc_integ_rate_txt, !372, !"da7213_alc_integ_rate_txt", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/da7213.c", i32 175, i32 27}
!373 = !{ptr @da7213_alc_integ_release_rate, !374, !"da7213_alc_integ_release_rate", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/da7213.c", i32 184, i32 8}
!375 = !{ptr @alc_threshold_tlv, !376, !"alc_threshold_tlv", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/da7213.c", i32 56, i32 14}
!377 = !{ptr @alc_gain_tlv, !378, !"alc_gain_tlv", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/da7213.c", i32 57, i32 14}
!379 = !{ptr @alc_analog_gain_tlv, !380, !"alc_analog_gain_tlv", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/da7213.c", i32 45, i32 14}
!381 = !{ptr @.str.197, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/da7213.c", i32 813, i32 2}
!383 = !{ptr @.str.198, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/da7213.c", i32 820, i32 2}
!385 = !{ptr @.str.199, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/da7213.c", i32 829, i32 2}
!387 = !{ptr @.str.200, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/da7213.c", i32 830, i32 2}
!389 = !{ptr @.str.201, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/da7213.c", i32 831, i32 2}
!391 = !{ptr @.str.202, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/da7213.c", i32 832, i32 2}
!393 = !{ptr @.str.203, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/da7213.c", i32 835, i32 2}
!395 = !{ptr @.str.204, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/da7213.c", i32 837, i32 2}
!397 = !{ptr @.str.205, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/da7213.c", i32 841, i32 2}
!399 = !{ptr @.str.206, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/da7213.c", i32 843, i32 2}
!401 = !{ptr @.str.207, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/da7213.c", i32 845, i32 2}
!403 = !{ptr @.str.208, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/da7213.c", i32 847, i32 2}
!405 = !{ptr @.str.209, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/da7213.c", i32 849, i32 2}
!407 = !{ptr @.str.210, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/da7213.c", i32 851, i32 2}
!409 = !{ptr @.str.211, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/da7213.c", i32 855, i32 2}
!411 = !{ptr @.str.212, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/da7213.c", i32 858, i32 2}
!413 = !{ptr @.str.213, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/da7213.c", i32 863, i32 2}
!415 = !{ptr @.str.214, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/da7213.c", i32 866, i32 2}
!417 = !{ptr @.str.215, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/da7213.c", i32 871, i32 2}
!419 = !{ptr @.str.216, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/da7213.c", i32 873, i32 2}
!421 = !{ptr @.str.217, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/da7213.c", i32 877, i32 2}
!423 = !{ptr @.str.218, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/da7213.c", i32 879, i32 2}
!425 = !{ptr @.str.219, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/da7213.c", i32 881, i32 2}
!427 = !{ptr @.str.220, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.221, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/da7213.c", i32 882, i32 2}
!430 = !{ptr @.str.222, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/da7213.c", i32 889, i32 2}
!432 = !{ptr @.str.223, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @.str.224, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/da7213.c", i32 890, i32 2}
!435 = !{ptr @.str.225, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/da7213.c", i32 891, i32 2}
!437 = !{ptr @.str.226, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/da7213.c", i32 893, i32 2}
!439 = !{ptr @.str.227, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/da7213.c", i32 897, i32 2}
!441 = !{ptr @.str.228, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/da7213.c", i32 899, i32 2}
!443 = !{ptr @.str.229, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/da7213.c", i32 903, i32 2}
!445 = !{ptr @.str.230, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/da7213.c", i32 906, i32 2}
!447 = !{ptr @.str.231, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/da7213.c", i32 911, i32 2}
!449 = !{ptr @.str.232, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/da7213.c", i32 913, i32 2}
!451 = !{ptr @.str.233, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/da7213.c", i32 915, i32 2}
!453 = !{ptr @.str.234, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/da7213.c", i32 917, i32 2}
!455 = !{ptr @.str.235, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/da7213.c", i32 919, i32 2}
!457 = !{ptr @.str.236, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/da7213.c", i32 923, i32 2}
!459 = !{ptr @.str.237, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/da7213.c", i32 927, i32 2}
!461 = !{ptr @.str.238, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/da7213.c", i32 928, i32 2}
!463 = !{ptr @.str.239, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/da7213.c", i32 929, i32 2}
!465 = !{ptr @da7213_dapm_widgets, !466, !"da7213_dapm_widgets", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/da7213.c", i32 809, i32 41}
!467 = !{ptr @.str.241, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/da7213.c", i32 777, i32 4}
!469 = !{ptr @.str.242, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @da7213_dai_event._entry, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @da7213_dai_event._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @da7213_mic_1_amp_in_sel_mux, !473, !"da7213_mic_1_amp_in_sel_mux", i1 false, i1 false}
!473 = !{!"../sound/soc/codecs/da7213.c", i32 592, i32 38}
!474 = !{ptr @da7213_mic_1_amp_in_sel, !475, !"da7213_mic_1_amp_in_sel", i1 false, i1 false}
!475 = !{!"../sound/soc/codecs/da7213.c", i32 588, i32 8}
!476 = !{ptr @.str.243, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/da7213.c", i32 585, i32 2}
!478 = !{ptr @.str.244, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/soc/codecs/da7213.c", i32 585, i32 18}
!480 = !{ptr @.str.245, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/soc/codecs/da7213.c", i32 585, i32 27}
!482 = !{ptr @da7213_mic_amp_in_sel_txt, !483, !"da7213_mic_amp_in_sel_txt", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/da7213.c", i32 584, i32 27}
!484 = !{ptr @da7213_mic_2_amp_in_sel_mux, !485, !"da7213_mic_2_amp_in_sel_mux", i1 false, i1 false}
!485 = !{!"../sound/soc/codecs/da7213.c", i32 599, i32 38}
!486 = !{ptr @da7213_mic_2_amp_in_sel, !487, !"da7213_mic_2_amp_in_sel", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/da7213.c", i32 595, i32 8}
!488 = !{ptr @.str.246, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../sound/soc/codecs/da7213.c", i32 647, i32 2}
!490 = !{ptr @.str.250, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/da7213.c", i32 656, i32 2}
!492 = !{ptr @da7213_dapm_mixinl_controls, !493, !"da7213_dapm_mixinl_controls", i1 false, i1 false}
!493 = !{!"../sound/soc/codecs/da7213.c", i32 646, i32 38}
!494 = !{ptr @.str.252, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/da7213.c", i32 663, i32 2}
!496 = !{ptr @.str.256, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/soc/codecs/da7213.c", i32 672, i32 2}
!498 = !{ptr @da7213_dapm_mixinr_controls, !499, !"da7213_dapm_mixinr_controls", i1 false, i1 false}
!499 = !{!"../sound/soc/codecs/da7213.c", i32 662, i32 38}
!500 = !{ptr @da7213_dai_l_src_mux, !501, !"da7213_dai_l_src_mux", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/da7213.c", i32 611, i32 38}
!502 = !{ptr @da7213_dai_l_src, !503, !"da7213_dai_l_src", i1 false, i1 false}
!503 = !{!"../sound/soc/codecs/da7213.c", i32 607, i32 8}
!504 = !{ptr @.str.258, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../sound/soc/codecs/da7213.c", i32 604, i32 27}
!506 = !{ptr @.str.259, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/da7213.c", i32 604, i32 45}
!508 = !{ptr @da7213_dai_src_txt, !509, !"da7213_dai_src_txt", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/da7213.c", i32 603, i32 27}
!510 = !{ptr @da7213_dai_r_src_mux, !511, !"da7213_dai_r_src_mux", i1 false, i1 false}
!511 = !{!"../sound/soc/codecs/da7213.c", i32 618, i32 38}
!512 = !{ptr @da7213_dai_r_src, !513, !"da7213_dai_r_src", i1 false, i1 false}
!513 = !{!"../sound/soc/codecs/da7213.c", i32 614, i32 8}
!514 = !{ptr @da7213_dac_l_src_mux, !515, !"da7213_dac_l_src_mux", i1 false, i1 false}
!515 = !{!"../sound/soc/codecs/da7213.c", i32 631, i32 38}
!516 = !{ptr @da7213_dac_l_src, !517, !"da7213_dac_l_src", i1 false, i1 false}
!517 = !{!"../sound/soc/codecs/da7213.c", i32 627, i32 8}
!518 = !{ptr @.str.260, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../sound/soc/codecs/da7213.c", i32 623, i32 2}
!520 = !{ptr @.str.261, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/soc/codecs/da7213.c", i32 623, i32 21}
!522 = !{ptr @da7213_dac_src_txt, !523, !"da7213_dac_src_txt", i1 false, i1 false}
!523 = !{!"../sound/soc/codecs/da7213.c", i32 622, i32 27}
!524 = !{ptr @da7213_dac_r_src_mux, !525, !"da7213_dac_r_src_mux", i1 false, i1 false}
!525 = !{!"../sound/soc/codecs/da7213.c", i32 638, i32 38}
!526 = !{ptr @da7213_dac_r_src, !527, !"da7213_dac_r_src", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/da7213.c", i32 634, i32 8}
!528 = !{ptr @.str.265, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../sound/soc/codecs/da7213.c", i32 688, i32 2}
!530 = !{ptr @.str.267, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../sound/soc/codecs/da7213.c", i32 691, i32 2}
!532 = !{ptr @.str.269, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/da7213.c", i32 694, i32 2}
!534 = !{ptr @.str.271, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../sound/soc/codecs/da7213.c", i32 697, i32 2}
!536 = !{ptr @da7213_dapm_mixoutl_controls, !537, !"da7213_dapm_mixoutl_controls", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/da7213.c", i32 678, i32 38}
!538 = !{ptr @.str.276, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/da7213.c", i32 713, i32 2}
!540 = !{ptr @.str.278, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/da7213.c", i32 716, i32 2}
!542 = !{ptr @da7213_dapm_mixoutr_controls, !543, !"da7213_dapm_mixoutr_controls", i1 false, i1 false}
!543 = !{!"../sound/soc/codecs/da7213.c", i32 703, i32 38}
!544 = !{ptr @da7213_audio_map, !545, !"da7213_audio_map", i1 false, i1 false}
!545 = !{!"../sound/soc/codecs/da7213.c", i32 937, i32 40}
!546 = !{ptr @.str.282, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../sound/soc/codecs/da7213.c", i32 1895, i32 46}
!548 = !{ptr @.str.283, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../sound/soc/codecs/da7213.c", i32 1737, i32 36}
!550 = !{ptr @.str.284, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../sound/soc/codecs/da7213.c", i32 1742, i32 36}
!552 = !{ptr @.str.285, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../sound/soc/codecs/da7213.c", i32 1747, i32 40}
!554 = !{ptr @.str.286, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../sound/soc/codecs/da7213.c", i32 1752, i32 40}
!556 = !{ptr @.str.287, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../sound/soc/codecs/da7213.c", i32 1758, i32 36}
!558 = !{ptr @.str.288, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../sound/soc/codecs/da7213.c", i32 1680, i32 3}
!560 = !{ptr @.str.289, !559, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @da7213_of_micbias_lvl._entry, !559, !"_entry", i1 false, i1 false}
!562 = !{ptr @da7213_of_micbias_lvl._entry_ptr, !559, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @.str.290, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../sound/soc/codecs/da7213.c", i32 1688, i32 19}
!565 = !{ptr @.str.291, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../sound/soc/codecs/da7213.c", i32 1690, i32 26}
!567 = !{ptr @.str.292, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../sound/soc/codecs/da7213.c", i32 1693, i32 3}
!569 = !{ptr @.str.293, !568, !"<string literal>", i1 false, i1 false}
!570 = !{ptr @da7213_of_dmic_data_sel._entry, !568, !"_entry", i1 false, i1 false}
!571 = !{ptr @da7213_of_dmic_data_sel._entry_ptr, !568, !"_entry_ptr", i1 false, i1 false}
!572 = !{ptr @.str.294, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../sound/soc/codecs/da7213.c", i32 1701, i32 19}
!574 = !{ptr @.str.295, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../sound/soc/codecs/da7213.c", i32 1703, i32 26}
!576 = !{ptr @.str.296, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../sound/soc/codecs/da7213.c", i32 1706, i32 3}
!578 = !{ptr @.str.297, !577, !"<string literal>", i1 false, i1 false}
!579 = !{ptr @da7213_of_dmic_samplephase._entry, !577, !"_entry", i1 false, i1 false}
!580 = !{ptr @da7213_of_dmic_samplephase._entry_ptr, !577, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @.str.298, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../sound/soc/codecs/da7213.c", i32 1720, i32 3}
!583 = !{ptr @.str.299, !582, !"<string literal>", i1 false, i1 false}
!584 = !{ptr @da7213_of_dmic_clkrate._entry, !582, !"_entry", i1 false, i1 false}
!585 = !{ptr @da7213_of_dmic_clkrate._entry_ptr, !582, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @.str.300, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../sound/soc/codecs/da7213.c", i32 1368, i32 3}
!588 = !{ptr @.str.301, !587, !"<string literal>", i1 false, i1 false}
!589 = !{ptr @da7213_set_component_sysclk._entry, !587, !"_entry", i1 false, i1 false}
!590 = !{ptr @da7213_set_component_sysclk._entry_ptr, !587, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @.str.303, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../sound/soc/codecs/da7213.c", i32 1384, i32 3}
!593 = !{ptr @da7213_set_component_sysclk._entry.302, !592, !"_entry", i1 false, i1 false}
!594 = !{ptr @da7213_set_component_sysclk._entry_ptr.304, !592, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @.str.306, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../sound/soc/codecs/da7213.c", i32 1394, i32 4}
!597 = !{ptr @da7213_set_component_sysclk._entry.305, !596, !"_entry", i1 false, i1 false}
!598 = !{ptr @da7213_set_component_sysclk._entry_ptr.307, !596, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @.str.308, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../sound/soc/codecs/da7213.c", i32 1420, i32 4}
!601 = !{ptr @.str.309, !600, !"<string literal>", i1 false, i1 false}
!602 = !{ptr @_da7213_set_component_pll._entry, !600, !"_entry", i1 false, i1 false}
!603 = !{ptr @_da7213_set_component_pll._entry_ptr, !600, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @.str.311, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../sound/soc/codecs/da7213.c", i32 1433, i32 4}
!606 = !{ptr @_da7213_set_component_pll._entry.310, !605, !"_entry", i1 false, i1 false}
!607 = !{ptr @_da7213_set_component_pll._entry_ptr.312, !605, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @.str.314, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../sound/soc/codecs/da7213.c", i32 1450, i32 4}
!610 = !{ptr @_da7213_set_component_pll._entry.313, !609, !"_entry", i1 false, i1 false}
!611 = !{ptr @_da7213_set_component_pll._entry_ptr.315, !609, !"_entry_ptr", i1 false, i1 false}
!612 = !{ptr @.str.317, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../sound/soc/codecs/da7213.c", i32 1475, i32 4}
!614 = !{ptr @_da7213_set_component_pll._entry.316, !613, !"_entry", i1 false, i1 false}
!615 = !{ptr @_da7213_set_component_pll._entry_ptr.318, !613, !"_entry_ptr", i1 false, i1 false}
!616 = !{ptr @.str.320, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../sound/soc/codecs/da7213.c", i32 1484, i32 3}
!618 = !{ptr @_da7213_set_component_pll._entry.319, !617, !"_entry", i1 false, i1 false}
!619 = !{ptr @_da7213_set_component_pll._entry_ptr.321, !617, !"_entry_ptr", i1 false, i1 false}
!620 = !{ptr @.str.322, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../sound/soc/codecs/da7213.c", i32 1616, i32 6}
!622 = !{ptr @.str.323, !621, !"<string literal>", i1 false, i1 false}
!623 = !{ptr @da7213_set_bias_level._entry, !621, !"_entry", i1 false, i1 false}
!624 = !{ptr @da7213_set_bias_level._entry_ptr, !621, !"_entry_ptr", i1 false, i1 false}
!625 = !{ptr @.str.324, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../sound/soc/codecs/da7213.c", i32 1536, i32 10}
!627 = !{ptr @da7213_dai, !628, !"da7213_dai", i1 false, i1 false}
!628 = !{!"../sound/soc/codecs/da7213.c", i32 1535, i32 34}
!629 = !{ptr @da7213_dai_ops, !630, !"da7213_dai_ops", i1 false, i1 false}
!630 = !{!"../sound/soc/codecs/da7213.c", i32 1528, i32 37}
!631 = !{ptr @da7213_of_match, !632, !"da7213_of_match", i1 false, i1 false}
!632 = !{!"../sound/soc/codecs/da7213.c", i32 1650, i32 34}
!633 = !{ptr @da7213_pm, !634, !"da7213_pm", i1 false, i1 false}
!634 = !{!"../sound/soc/codecs/da7213.c", i32 2025, i32 32}
!635 = !{ptr @da7213_i2c_id, !636, !"da7213_i2c_id", i1 false, i1 false}
!636 = !{!"../sound/soc/codecs/da7213.c", i32 2029, i32 35}
!637 = !{i32 1, !"wchar_size", i32 2}
!638 = !{i32 1, !"min_enum_size", i32 4}
!639 = !{i32 8, !"branch-target-enforcement", i32 0}
!640 = !{i32 8, !"sign-return-address", i32 0}
!641 = !{i32 8, !"sign-return-address-all", i32 0}
!642 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!643 = !{i32 7, !"uwtable", i32 1}
!644 = !{i32 7, !"frame-pointer", i32 2}
!645 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!646 = !{!"auto-init"}
!647 = !{i8 0, i8 2}
!648 = !{!"branch_weights", i32 2000, i32 1}
!649 = !{i64 2149037722, i64 2149038002, i64 2149038336, i64 2149038670}
!650 = !{i32 0, i32 33}
