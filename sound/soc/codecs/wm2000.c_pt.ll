; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm2000.c_pt.bc'
source_filename = "../sound/soc/codecs/wm2000.c"
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.atomic_t = type { i32 }
%struct.anon.108 = type { i32, i32, i32, [2 x ptr] }
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
%struct.wm2000_priv = type { ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], i32, i8, i32, ptr, %struct.mutex }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.wm2000_platform_data = type { ptr, i8 }
%struct.firmware = type { i32, ptr, ptr }
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

@__initcall__kmod_snd_soc_wm2000__309_948_wm2000_i2c_driver_init6 = internal global ptr @wm2000_i2c_driver_init, section ".initcall6.init", align 4
@wm2000_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm2000_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm2000_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm2000_i2c_driver_exit = internal global ptr @wm2000_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description310 = internal constant [46 x i8] c"snd_soc_wm2000.description=ASoC WM2000 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [70 x i8] c"snd_soc_wm2000.author=Mark Brown <broonie@opensource.wolfonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [52 x i8] c"snd_soc_wm2000.file=sound/soc/codecs/snd-soc-wm2000\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [27 x i8] c"snd_soc_wm2000.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm2000\00", [25 x i8] zeroinitializer }, align 32
@wm2000_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm2000\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&wm2000->lock\00", [18 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm2000_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr @wm2000_readable_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 61492, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wm2000:829:(&wm2000_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 833, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm2000_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm2000.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry_ptr = internal global ptr @wm2000_i2c_probe._entry, section ".printk_index", align 4
@wm2000_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 843, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get supplies: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry_ptr.10 = internal global ptr @wm2000_i2c_probe._entry.8, section ".printk_index", align 4
@wm2000_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 849, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry_ptr.13 = internal global ptr @wm2000_i2c_probe._entry.11, section ".printk_index", align 4
@wm2000_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 856, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to read ID1: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry_ptr.16 = internal global ptr @wm2000_i2c_probe._entry.14, section ".printk_index", align 4
@wm2000_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 862, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to read ID2: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry_ptr.19 = internal global ptr @wm2000_i2c_probe._entry.17, section ".printk_index", align 4
@wm2000_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 868, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Device is not a WM2000 - ID %x\0A\00", [32 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry_ptr.22 = internal global ptr @wm2000_i2c_probe._entry.20, section ".printk_index", align 4
@wm2000_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 875, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to read Revision: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry_ptr.25 = internal global ptr @wm2000_i2c_probe._entry.23, section ".printk_index", align 4
@wm2000_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 878, ptr @.str.28, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"revision %c\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry_ptr.29 = internal global ptr @wm2000_i2c_probe._entry.26, section ".printk_index", align 4
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCLK\00", [27 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 883, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get MCLK: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry_ptr.33 = internal global ptr @wm2000_i2c_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm2000_anc.bin\00", [17 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.5, i32 898, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to acquire ANC data: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm2000_i2c_probe._entry_ptr.37 = internal global ptr @wm2000_i2c_probe._entry.35, section ".printk_index", align 4
@soc_component_dev_wm2000 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @wm2000_controls, i32 3, ptr @wm2000_dapm_widgets, i32 5, ptr @wm2000_audio_map, i32 4, ptr @wm2000_probe, ptr @wm2000_remove, ptr @wm2000_suspend, ptr @wm2000_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@wm2000_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm2000_anc_mode_get, ptr @wm2000_anc_mode_put, %union.anon.98 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm2000_speaker_get, ptr @wm2000_speaker_put, %union.anon.98 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wm2000_audio_map = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ANC Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 36770, i32 36770, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WM2000 ANC Switch\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WM2000 Switch\00", [18 x i8] zeroinitializer }, align 32
@wm2000_anc_set_mode.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm2000\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm2000_anc_set_mode\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Set mode %d (enabled %d, mute %d, active %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@anc_transitions = internal constant { [12 x %struct.anon.108], [48 x i8] } { [12 x %struct.anon.108] [%struct.anon.108 { i32 3, i32 0, i32 1, [2 x ptr] [ptr @wm2000_power_up, ptr null] }, %struct.anon.108 { i32 3, i32 2, i32 0, [2 x ptr] [ptr @wm2000_power_up, ptr @wm2000_enter_standby] }, %struct.anon.108 { i32 3, i32 1, i32 1, [2 x ptr] [ptr @wm2000_power_up, ptr @wm2000_enter_bypass] }, %struct.anon.108 { i32 0, i32 1, i32 1, [2 x ptr] [ptr @wm2000_enter_bypass, ptr null] }, %struct.anon.108 { i32 0, i32 2, i32 1, [2 x ptr] [ptr @wm2000_enter_standby, ptr null] }, %struct.anon.108 { i32 0, i32 3, i32 1, [2 x ptr] [ptr @wm2000_power_down, ptr null] }, %struct.anon.108 { i32 1, i32 0, i32 1, [2 x ptr] [ptr @wm2000_exit_bypass, ptr null] }, %struct.anon.108 { i32 1, i32 2, i32 1, [2 x ptr] [ptr @wm2000_exit_bypass, ptr @wm2000_enter_standby] }, %struct.anon.108 { i32 1, i32 3, i32 0, [2 x ptr] [ptr @wm2000_exit_bypass, ptr @wm2000_power_down] }, %struct.anon.108 { i32 2, i32 0, i32 1, [2 x ptr] [ptr @wm2000_exit_standby, ptr null] }, %struct.anon.108 { i32 2, i32 1, i32 1, [2 x ptr] [ptr @wm2000_exit_standby, ptr @wm2000_enter_bypass] }, %struct.anon.108 { i32 2, i32 3, i32 0, [2 x ptr] [ptr @wm2000_exit_standby, ptr @wm2000_power_down] }], [48 x i8] zeroinitializer }, align 32
@wm2000_anc_transition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 550, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No transition for %d->%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm2000_anc_transition\00", [42 x i8] zeroinitializer }, align 32
@wm2000_anc_transition._entry_ptr = internal global ptr @wm2000_anc_transition._entry, section ".printk_index", align 4
@wm2000_anc_transition._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.5, i32 558, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable MCLK: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm2000_anc_transition._entry_ptr.51 = internal global ptr @wm2000_anc_transition._entry.49, section ".printk_index", align 4
@wm2000_power_up.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.52, ptr @.str.5, ptr @.str.53, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm2000_power_up\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Beginning power up\0A\00", [44 x i8] zeroinitializer }, align 32
@wm2000_power_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.52, ptr @.str.5, i32 133, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm2000_power_up._entry_ptr = internal global ptr @wm2000_power_up._entry, section ".printk_index", align 4
@wm2000_power_up.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.52, ptr @.str.5, ptr @.str.54, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Disabling MCLK divider\0A\00", [40 x i8] zeroinitializer }, align 32
@wm2000_power_up.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.52, ptr @.str.5, ptr @.str.55, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enabling MCLK divider\0A\00", [41 x i8] zeroinitializer }, align 32
@wm2000_power_up._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.5, i32 154, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ANC engine failed to reset\0A\00", [36 x i8] zeroinitializer }, align 32
@wm2000_power_up._entry_ptr.58 = internal global ptr @wm2000_power_up._entry.56, section ".printk_index", align 4
@wm2000_power_up._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.5, i32 161, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ANC engine failed to initialise\0A\00", [63 x i8] zeroinitializer }, align 32
@wm2000_power_up._entry_ptr.61 = internal global ptr @wm2000_power_up._entry.59, section ".printk_index", align 4
@wm2000_power_up.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.52, ptr @.str.5, ptr @.str.62, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Downloading %d bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@wm2000_power_up._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.52, ptr @.str.5, i32 176, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c_transfer() failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm2000_power_up._entry_ptr.65 = internal global ptr @wm2000_power_up._entry.63, section ".printk_index", align 4
@wm2000_power_up._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.52, ptr @.str.5, i32 182, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i2c_transfer() failed, %d != %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wm2000_power_up._entry_ptr.68 = internal global ptr @wm2000_power_up._entry.66, section ".printk_index", align 4
@wm2000_power_up.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.52, ptr @.str.5, ptr @.str.69, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Download complete\0A\00", [45 x i8] zeroinitializer }, align 32
@wm2000_power_up._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.52, ptr @.str.5, i32 204, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to read Speech Clarity: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wm2000_power_up._entry_ptr.72 = internal global ptr @wm2000_power_up._entry.70, section ".printk_index", align 4
@wm2000_power_up._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.52, ptr @.str.5, i32 221, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Timed out waiting for device\0A\00", [34 x i8] zeroinitializer }, align 32
@wm2000_power_up._entry_ptr.75 = internal global ptr @wm2000_power_up._entry.73, section ".printk_index", align 4
@wm2000_power_up.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.52, ptr @.str.5, ptr @.str.76, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ANC active\0A\00", [20 x i8] zeroinitializer }, align 32
@wm2000_power_up.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.52, ptr @.str.5, ptr @.str.77, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Analogue active\0A\00", [47 x i8] zeroinitializer }, align 32
@wm2000_enter_standby._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 365, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Timed out waiting for ANC disable after 1ms\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wm2000_enter_standby\00", [43 x i8] zeroinitializer }, align 32
@wm2000_enter_standby._entry_ptr = internal global ptr @wm2000_enter_standby._entry, section ".printk_index", align 4
@wm2000_enter_standby._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.5, i32 371, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timed out waiting for standby\0A\00", [33 x i8] zeroinitializer }, align 32
@wm2000_enter_standby._entry_ptr.82 = internal global ptr @wm2000_enter_standby._entry.80, section ".printk_index", align 4
@wm2000_enter_standby.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.79, ptr @.str.5, ptr @.str.83, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"standby\0A\00", [23 x i8] zeroinitializer }, align 32
@wm2000_enter_standby.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.79, ptr @.str.5, ptr @.str.84, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Analogue disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@wm2000_enter_bypass._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.5, i32 288, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout waiting for ANC disable\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm2000_enter_bypass\00", [44 x i8] zeroinitializer }, align 32
@wm2000_enter_bypass._entry_ptr = internal global ptr @wm2000_enter_bypass._entry, section ".printk_index", align 4
@wm2000_enter_bypass._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.5, i32 294, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Timeout waiting for ANC engine idle\0A\00", [59 x i8] zeroinitializer }, align 32
@wm2000_enter_bypass._entry_ptr.89 = internal global ptr @wm2000_enter_bypass._entry.87, section ".printk_index", align 4
@wm2000_enter_bypass.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.86, ptr @.str.5, ptr @.str.90, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bypass enabled\0A\00", [16 x i8] zeroinitializer }, align 32
@wm2000_power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 250, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Timeout waiting for ANC power down\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm2000_power_down\00", [46 x i8] zeroinitializer }, align 32
@wm2000_power_down._entry_ptr = internal global ptr @wm2000_power_down._entry, section ".printk_index", align 4
@wm2000_power_down._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.92, ptr @.str.5, i32 256, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm2000_power_down._entry_ptr.94 = internal global ptr @wm2000_power_down._entry.93, section ".printk_index", align 4
@wm2000_power_down.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.92, ptr @.str.5, ptr @.str.95, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"powered off\0A\00", [19 x i8] zeroinitializer }, align 32
@wm2000_exit_bypass._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 332, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Timed out waiting for MOUSE\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm2000_exit_bypass\00", [45 x i8] zeroinitializer }, align 32
@wm2000_exit_bypass._entry_ptr = internal global ptr @wm2000_exit_bypass._entry, section ".printk_index", align 4
@wm2000_exit_bypass.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.97, ptr @.str.5, ptr @.str.98, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MOUSE active\0A\00", [18 x i8] zeroinitializer }, align 32
@wm2000_exit_standby._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.99, ptr @.str.5, i32 413, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm2000_exit_standby\00", [44 x i8] zeroinitializer }, align 32
@wm2000_exit_standby._entry_ptr = internal global ptr @wm2000_exit_standby._entry, section ".printk_index", align 4
@wm2000_exit_standby.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.99, ptr @.str.5, ptr @.str.98, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wm2000_exit_standby.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.99, ptr @.str.5, ptr @.str.100, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Analogue enabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKN\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKP\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINN\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINP\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ANC Engine\00", [21 x i8] zeroinitializer }, align 32
@wm2000_dapm_widgets = internal constant { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [252 x i8] } { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @wm2000_anc_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [252 x i8] zeroinitializer }, align 32
@switch.table.wm2000_anc_transition = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 2, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [25 x i64] [i64 23, i64 32, i64 32768, i64 36770, i64 36831, i64 36832, i64 36847, i64 36854, i64 36855, i64 36856, i64 36857, i64 36858, i64 36860, i64 36861, i64 36862, i64 36863, i64 61440, i64 61441, i64 61442, i64 61443, i64 61444, i64 61445, i64 61446, i64 61480, i64 61492]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"wm2000_i2c_driver\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 940, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 942, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"wm2000_i2c_id\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 934, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 825, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"wm2000_regmap\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 768, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 829, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 832, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 843, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 849, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 856, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 862, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 868, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 875, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 878, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 880, i32 41 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 883, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 887, i32 13 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 898, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm2000\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 793, i32 46 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 48, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 49, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 50, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [16 x i8] c"wm2000_controls\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 664, i32 38 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"wm2000_audio_map\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 710, i32 40 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 665, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 666, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 669, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 591, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [16 x i8] c"anc_transitions\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 432, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 549, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 558, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 129, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 133, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 139, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 143, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 154, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 161, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 170, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 176, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 181, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 187, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 204, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 221, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 226, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 228, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 364, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 370, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 379, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 381, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 288, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 294, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 302, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 250, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 256, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 262, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 332, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 337, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 413, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 420, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 698, i32 1 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 699, i32 1 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 701, i32 1 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 702, i32 1 }
@___asan_gen_.420 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 704, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant [20 x i8] c"wm2000_dapm_widgets\00", align 1
@___asan_gen_.424 = private constant [29 x i8] c"../sound/soc/codecs/wm2000.c\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 696, i32 41 }
@___asan_gen_.426 = private unnamed_addr constant [35 x i8] c"switch.table.wm2000_anc_transition\00", align 1
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_wm2000_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_wm2000__309_948_wm2000_i2c_driver_init6, ptr @wm2000_anc_transition._entry, ptr @wm2000_anc_transition._entry.49, ptr @wm2000_anc_transition._entry_ptr, ptr @wm2000_anc_transition._entry_ptr.51, ptr @wm2000_enter_bypass._entry, ptr @wm2000_enter_bypass._entry.87, ptr @wm2000_enter_bypass._entry_ptr, ptr @wm2000_enter_bypass._entry_ptr.89, ptr @wm2000_enter_standby._entry, ptr @wm2000_enter_standby._entry.80, ptr @wm2000_enter_standby._entry_ptr, ptr @wm2000_enter_standby._entry_ptr.82, ptr @wm2000_exit_bypass._entry, ptr @wm2000_exit_bypass._entry_ptr, ptr @wm2000_exit_standby._entry, ptr @wm2000_exit_standby._entry_ptr, ptr @wm2000_i2c_driver_exit, ptr @wm2000_i2c_probe._entry, ptr @wm2000_i2c_probe._entry.11, ptr @wm2000_i2c_probe._entry.14, ptr @wm2000_i2c_probe._entry.17, ptr @wm2000_i2c_probe._entry.20, ptr @wm2000_i2c_probe._entry.23, ptr @wm2000_i2c_probe._entry.26, ptr @wm2000_i2c_probe._entry.31, ptr @wm2000_i2c_probe._entry.35, ptr @wm2000_i2c_probe._entry.8, ptr @wm2000_i2c_probe._entry_ptr, ptr @wm2000_i2c_probe._entry_ptr.10, ptr @wm2000_i2c_probe._entry_ptr.13, ptr @wm2000_i2c_probe._entry_ptr.16, ptr @wm2000_i2c_probe._entry_ptr.19, ptr @wm2000_i2c_probe._entry_ptr.22, ptr @wm2000_i2c_probe._entry_ptr.25, ptr @wm2000_i2c_probe._entry_ptr.29, ptr @wm2000_i2c_probe._entry_ptr.33, ptr @wm2000_i2c_probe._entry_ptr.37, ptr @wm2000_power_down._entry, ptr @wm2000_power_down._entry.93, ptr @wm2000_power_down._entry_ptr, ptr @wm2000_power_down._entry_ptr.94, ptr @wm2000_power_up._entry, ptr @wm2000_power_up._entry.56, ptr @wm2000_power_up._entry.59, ptr @wm2000_power_up._entry.63, ptr @wm2000_power_up._entry.66, ptr @wm2000_power_up._entry.70, ptr @wm2000_power_up._entry.73, ptr @wm2000_power_up._entry_ptr, ptr @wm2000_power_up._entry_ptr.58, ptr @wm2000_power_up._entry_ptr.61, ptr @wm2000_power_up._entry_ptr.65, ptr @wm2000_power_up._entry_ptr.68, ptr @wm2000_power_up._entry_ptr.72, ptr @wm2000_power_up._entry_ptr.75, ptr @wm2000_i2c_driver, ptr @.str, ptr @wm2000_i2c_id, ptr @wm2000_i2c_probe.__key, ptr @.str.1, ptr @wm2000_i2c_probe._key, ptr @wm2000_regmap, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @soc_component_dev_wm2000, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @wm2000_controls, ptr @wm2000_audio_map, ptr @.str.41, ptr @.compoundliteral, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @anc_transitions, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @wm2000_dapm_widgets, ptr @switch.table.wm2000_anc_transition], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_i2c_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm2000 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_audio_map to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anc_transitions to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_anc_transition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_anc_transition._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_power_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_power_up._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_power_up._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_power_up._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_power_up._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_power_up._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_power_up._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_enter_standby._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_enter_standby._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_enter_bypass._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_enter_bypass._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_power_down._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_exit_bypass._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_exit_standby._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2000_dapm_widgets to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm2000_anc_transition to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm2000_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm2000_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @wm2000_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %i2c_id) #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg, align 4, !annotation !234
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 156, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.wm2000_priv, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @wm2000_i2c_probe.__key) #7
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm2000_regmap, ptr noundef nonnull @wm2000_i2c_probe._key, ptr noundef nonnull @.str.2) #7
  %regmap = getelementptr inbounds %struct.wm2000_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %for.body.preheader

for.body.preheader:                               ; preds = %do.body
  %arrayidx13 = getelementptr %struct.wm2000_priv, ptr %call.i, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.38, ptr %arrayidx13, align 4
  %arrayidx13.1 = getelementptr %struct.wm2000_priv, ptr %call.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.39, ptr %arrayidx13.1, align 4
  %arrayidx13.2 = getelementptr %struct.wm2000_priv, ptr %call.i, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.40, ptr %arrayidx13.2, align 4
  %call16 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 3, ptr noundef %arrayidx13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end23, label %do.end21

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %7) #10
  br label %out

do.end21:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call16) #10
  br label %cleanup

if.end23:                                         ; preds = %for.body.preheader
  %call26 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %arrayidx13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call26) #10
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call35 = call i32 @regmap_read(ptr noundef %9, i32 noundef 61440, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call35) #10
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call44 = call i32 @regmap_read(ptr noundef %13, i32 noundef 61441, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call44) #10
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  %conv = shl i32 %11, 8
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %and = and i32 %15, 255
  %conv.masked = and i32 %conv, 65280
  %conv55 = or i32 %and, %conv.masked
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %conv55)
  %cmp56.not = icmp eq i32 %conv55, 8192
  br i1 %cmp56.not, label %if.end64, label %do.end61

do.end61:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %conv55) #10
  br label %err_supplies

if.end64:                                         ; preds = %if.end52
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call66 = call i32 @regmap_read(ptr noundef %17, i32 noundef 61442, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 0
  br i1 %cmp67.not, label %do.end77, label %do.end72

do.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call66) #10
  br label %cleanup

do.end77:                                         ; preds = %if.end64
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg, align 4
  %add = add i32 %19, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %add) #10
  %call80 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.30) #7
  %mclk = getelementptr inbounds %struct.wm2000_priv, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call80, ptr %mclk, align 4
  %cmp.i223 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %if.then83, label %if.end90

if.then83:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call80 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %21) #10
  br label %err_supplies

if.end90:                                         ; preds = %do.end77
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %22 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_data.i, align 8
  %tobool93.not = icmp eq ptr %23, null
  br i1 %tobool93.not, label %if.end90.if.end101_crit_edge, label %if.then94

if.end90.if.end101_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %speech_enh_disable = getelementptr inbounds %struct.wm2000_platform_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %speech_enh_disable to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %speech_enh_disable, align 4
  %speech_clarity = getelementptr inbounds %struct.wm2000_priv, ptr %call.i, i32 0, i32 5
  %25 = xor i8 %bf.load, -1
  %26 = ptrtoint ptr %speech_clarity to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load96 = load i8, ptr %speech_clarity, align 4
  %27 = lshr i8 %25, 3
  %bf.shl = and i8 %27, 16
  %bf.clear = and i8 %bf.load96, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %speech_clarity, align 4
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %23, align 4
  %tobool97.not = icmp eq ptr %29, null
  %spec.select = select i1 %tobool97.not, ptr @.str.34, ptr %29
  br label %if.end101

if.end101:                                        ; preds = %if.then94, %if.end90.if.end101_crit_edge
  %filename.0 = phi ptr [ @.str.34, %if.end90.if.end101_crit_edge ], [ %spec.select, %if.then94 ]
  %call103 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %filename.0, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104.not = icmp eq i32 %call103, 0
  br i1 %cmp104.not, label %if.end111, label %do.end109

do.end109:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call103) #10
  br label %err_supplies

if.end111:                                        ; preds = %if.end101
  %30 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add112 = add i32 %33, 2
  %anc_download_size = getelementptr inbounds %struct.wm2000_priv, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %anc_download_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add112, ptr %anc_download_size, align 4
  %call.i224 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add112, i32 noundef 3520) #7
  %anc_download = getelementptr inbounds %struct.wm2000_priv, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %anc_download to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i224, ptr %anc_download, align 4
  %cmp117 = icmp eq ptr %call.i224, null
  br i1 %cmp117, label %if.end111.err_supplies_crit_edge, label %if.end120

if.end111.err_supplies_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_supplies

if.end120:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %call.i224 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -128, ptr %call.i224, align 1
  %arrayidx124 = getelementptr i8, ptr %call.i224, i32 1
  %37 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx124, align 1
  %add.ptr = getelementptr i8, ptr %call.i224, i32 2
  %38 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %39, align 4
  %44 = call ptr @memcpy(ptr %add.ptr, ptr %41, i32 %43)
  %anc_eng_ena = getelementptr inbounds %struct.wm2000_priv, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %anc_eng_ena to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load127 = load i8, ptr %anc_eng_ena, align 4
  %bf.set135 = or i8 %bf.load127, -32
  store i8 %bf.set135, ptr %anc_eng_ena, align 4
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %i2c, ptr %call.i, align 4
  call fastcc void @wm2000_reset(ptr noundef nonnull %call.i)
  %call138 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm2000, ptr noundef null, i32 noundef 0) #7
  br label %err_supplies

err_supplies:                                     ; preds = %if.end120, %if.end111.err_supplies_crit_edge, %do.end109, %if.then83, %do.end61
  %ret.0 = phi i32 [ -19, %do.end61 ], [ %21, %if.then83 ], [ %call103, %do.end109 ], [ %call138, %if.end120 ], [ -12, %if.end111.err_supplies_crit_edge ]
  %call141 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %arrayidx13) #7
  br label %out

out:                                              ; preds = %err_supplies, %if.then5
  %ret.1 = phi i32 [ %7, %if.then5 ], [ %ret.0, %err_supplies ]
  %47 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %48) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end72, %do.end50, %do.end40, %do.end31, %do.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ %call16, %do.end21 ], [ %call26, %do.end31 ], [ %call35, %do.end40 ], [ %call44, %do.end50 ], [ %call66, %do.end72 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm2000_reset(ptr nocapture noundef %wm2000) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wm2000 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm2000, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.wm2000_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 61444, i32 noundef 32) #7
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i8 = getelementptr inbounds %struct.wm2000_priv, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i8, align 4
  %call1.i9 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 61444, i32 noundef 2) #7
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i11 = getelementptr inbounds %struct.wm2000_priv, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i11, align 4
  %call1.i12 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 61440, i32 noundef 0) #7
  %anc_mode = getelementptr inbounds %struct.wm2000_priv, ptr %wm2000, i32 0, i32 4
  %14 = ptrtoint ptr %anc_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %anc_mode, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm2000_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 32768, label %entry.return_crit_edge
    i32 36770, label %entry.return_crit_edge1
    i32 36832, label %entry.return_crit_edge2
    i32 36831, label %entry.return_crit_edge3
    i32 36847, label %entry.return_crit_edge4
    i32 36854, label %entry.return_crit_edge5
    i32 36855, label %entry.return_crit_edge6
    i32 36856, label %entry.return_crit_edge7
    i32 36857, label %entry.return_crit_edge8
    i32 36858, label %entry.return_crit_edge9
    i32 36860, label %entry.return_crit_edge10
    i32 36861, label %entry.return_crit_edge11
    i32 36862, label %entry.return_crit_edge12
    i32 36863, label %entry.return_crit_edge13
    i32 61440, label %entry.return_crit_edge14
    i32 61441, label %entry.return_crit_edge15
    i32 61442, label %entry.return_crit_edge16
    i32 61443, label %entry.return_crit_edge17
    i32 61444, label %entry.return_crit_edge18
    i32 61445, label %entry.return_crit_edge19
    i32 61446, label %entry.return_crit_edge20
    i32 61480, label %entry.return_crit_edge21
    i32 61492, label %entry.return_crit_edge22
  ]

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_probe(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %anc_eng_ena.i = getelementptr inbounds %struct.wm2000_priv, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %anc_eng_ena.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %anc_eng_ena.i, align 4
  %7 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %7)
  %.not.i = icmp eq i8 %7, 96
  %8 = xor i8 %bf.load.i, -1
  %9 = lshr i8 %8, 7
  %narrow.i = select i1 %.not.i, i8 %9, i8 2
  %mode.0.i = zext i8 %narrow.i to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_anc_set_mode.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_probe, %if.then17.i)) #7
          to label %wm2000_anc_set_mode.exit [label %if.then17.i], !srcloc !235

if.then17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %anc_eng_ena.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load19.i = load i8, ptr %anc_eng_ena.i, align 4
  %bf.lshr20.i = lshr i8 %bf.load19.i, 6
  %bf.clear21.i = and i8 %bf.lshr20.i, 1
  %bf.cast22.i = zext i8 %bf.clear21.i to i32
  %11 = lshr i8 %bf.load19.i, 5
  %.lobit.i = and i8 %11, 1
  %12 = xor i8 %.lobit.i, 1
  %13 = zext i8 %12 to i32
  %bf.lshr33.i = lshr i8 %bf.load19.i, 7
  %bf.cast34.i = zext i8 %bf.lshr33.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_anc_set_mode.__UNIQUE_ID_ddebug308, ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef %mode.0.i, i32 noundef %bf.cast22.i, i32 noundef %13, i32 noundef %bf.cast34.i) #7
  br label %wm2000_anc_set_mode.exit

wm2000_anc_set_mode.exit:                         ; preds = %if.then17.i, %entry
  %call36.i = tail call fastcc i32 @wm2000_anc_transition(ptr noundef %3, i32 noundef %mode.0.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm2000_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @wm2000_anc_transition(ptr noundef %3, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @wm2000_anc_transition(ptr noundef %3, i32 noundef 3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %anc_eng_ena.i = getelementptr inbounds %struct.wm2000_priv, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %anc_eng_ena.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %anc_eng_ena.i, align 4
  %7 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %7)
  %.not.i = icmp eq i8 %7, 96
  %8 = xor i8 %bf.load.i, -1
  %9 = lshr i8 %8, 7
  %narrow.i = select i1 %.not.i, i8 %9, i8 2
  %mode.0.i = zext i8 %narrow.i to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_anc_set_mode.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_resume, %if.then17.i)) #7
          to label %wm2000_anc_set_mode.exit [label %if.then17.i], !srcloc !235

if.then17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %anc_eng_ena.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load19.i = load i8, ptr %anc_eng_ena.i, align 4
  %bf.lshr20.i = lshr i8 %bf.load19.i, 6
  %bf.clear21.i = and i8 %bf.lshr20.i, 1
  %bf.cast22.i = zext i8 %bf.clear21.i to i32
  %11 = lshr i8 %bf.load19.i, 5
  %.lobit.i = and i8 %11, 1
  %12 = xor i8 %.lobit.i, 1
  %13 = zext i8 %12 to i32
  %bf.lshr33.i = lshr i8 %bf.load19.i, 7
  %bf.cast34.i = zext i8 %bf.lshr33.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_anc_set_mode.__UNIQUE_ID_ddebug308, ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef %mode.0.i, i32 noundef %bf.cast22.i, i32 noundef %13, i32 noundef %bf.cast34.i) #7
  br label %wm2000_anc_set_mode.exit

wm2000_anc_set_mode.exit:                         ; preds = %if.then17.i, %entry
  %call36.i = tail call fastcc i32 @wm2000_anc_transition(ptr noundef %3, i32 noundef %mode.0.i) #7
  ret i32 %call36.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm2000_anc_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %anc_active = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %anc_active to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %anc_active, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.cast, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_anc_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %anc_active2 = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 5
  %8 = trunc i32 %7 to i8
  %9 = ptrtoint ptr %anc_active2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %anc_active2, align 4
  %bf.shl = shl nuw i8 %8, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %anc_active2, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = and i8 %bf.load, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %12)
  %.not.i = icmp eq i8 %12, 96
  %13 = xor i8 %bf.shl, -1
  %14 = lshr i8 %13, 7
  %narrow.i = select i1 %.not.i, i8 %14, i8 2
  %mode.0.i = zext i8 %narrow.i to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_anc_set_mode.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_anc_mode_put, %if.then17.i)) #7
          to label %wm2000_anc_set_mode.exit [label %if.then17.i], !srcloc !235

if.then17.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %15 = ptrtoint ptr %anc_active2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load19.i = load i8, ptr %anc_active2, align 4
  %bf.lshr20.i = lshr i8 %bf.load19.i, 6
  %bf.clear21.i = and i8 %bf.lshr20.i, 1
  %bf.cast22.i = zext i8 %bf.clear21.i to i32
  %16 = lshr i8 %bf.load19.i, 5
  %.lobit.i = and i8 %16, 1
  %17 = xor i8 %.lobit.i, 1
  %18 = zext i8 %17 to i32
  %bf.lshr33.i = lshr i8 %bf.load19.i, 7
  %bf.cast34.i = zext i8 %bf.lshr33.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_anc_set_mode.__UNIQUE_ID_ddebug308, ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef %mode.0.i, i32 noundef %bf.cast22.i, i32 noundef %18, i32 noundef %bf.cast34.i) #7
  br label %wm2000_anc_set_mode.exit

wm2000_anc_set_mode.exit:                         ; preds = %if.then17.i, %if.end
  %call36.i = tail call fastcc i32 @wm2000_anc_transition(ptr noundef %5, i32 noundef %mode.0.i) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %wm2000_anc_set_mode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36.i, %wm2000_anc_set_mode.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm2000_speaker_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %spk_ena = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %spk_ena to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %spk_ena, align 4
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.cast, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_speaker_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %spk_ena = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 5
  %8 = trunc i32 %7 to i8
  %9 = ptrtoint ptr %spk_ena to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %spk_ena, align 4
  %bf.value = shl nuw nsw i8 %8, 5
  %bf.shl = and i8 %bf.value, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %spk_ena, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = and i8 %bf.set, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %12)
  %.not.i = icmp eq i8 %12, 96
  %13 = xor i8 %bf.load, -1
  %14 = lshr i8 %13, 7
  %narrow.i = select i1 %.not.i, i8 %14, i8 2
  %mode.0.i = zext i8 %narrow.i to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_anc_set_mode.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_speaker_put, %if.then17.i)) #7
          to label %wm2000_anc_set_mode.exit [label %if.then17.i], !srcloc !235

if.then17.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %15 = ptrtoint ptr %spk_ena to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load19.i = load i8, ptr %spk_ena, align 4
  %bf.lshr20.i = lshr i8 %bf.load19.i, 6
  %bf.clear21.i = and i8 %bf.lshr20.i, 1
  %bf.cast22.i = zext i8 %bf.clear21.i to i32
  %16 = lshr i8 %bf.load19.i, 5
  %.lobit.i = and i8 %16, 1
  %17 = xor i8 %.lobit.i, 1
  %18 = zext i8 %17 to i32
  %bf.lshr33.i = lshr i8 %bf.load19.i, 7
  %bf.cast34.i = zext i8 %bf.lshr33.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_anc_set_mode.__UNIQUE_ID_ddebug308, ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef %mode.0.i, i32 noundef %bf.cast22.i, i32 noundef %18, i32 noundef %bf.cast34.i) #7
  br label %wm2000_anc_set_mode.exit

wm2000_anc_set_mode.exit:                         ; preds = %if.then17.i, %if.end
  %call36.i = tail call fastcc i32 @wm2000_anc_transition(ptr noundef %5, i32 noundef %mode.0.i) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %wm2000_anc_set_mode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36.i, %wm2000_anc_set_mode.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm2000_anc_transition(ptr nocapture noundef readonly %wm2000, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wm2000 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm2000, align 4
  %anc_mode = getelementptr inbounds %struct.wm2000_priv, ptr %wm2000, i32 0, i32 4
  %2 = ptrtoint ptr %anc_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %anc_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mode)
  %cmp = icmp eq i32 %3, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %3, label %for.body.preheader.do.end_crit_edge [
    i32 3, label %land.lhs.true
    i32 0, label %land.lhs.true.3
    i32 1, label %land.lhs.true.6
    i32 2, label %land.lhs.true.9
  ]

for.body.preheader.do.end_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %5 = icmp ult i32 %mode, 3
  br i1 %5, label %switch.lookup, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true.3:                                  ; preds = %for.body.preheader
  %switch.tableidx = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup127, label %land.lhs.true.3.do.end_crit_edge

land.lhs.true.3.do.end_crit_edge:                 ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true.6:                                  ; preds = %for.body.preheader
  %7 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %mode, label %land.lhs.true.6.do.end_crit_edge [
    i32 0, label %land.lhs.true.6.if.end12_crit_edge
    i32 2, label %if.end12.fold.split123
    i32 3, label %if.end12.fold.split124
  ]

land.lhs.true.6.if.end12_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true.6.do.end_crit_edge:                 ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true.9:                                  ; preds = %for.body.preheader
  %8 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %mode, label %land.lhs.true.9.do.end_crit_edge [
    i32 0, label %land.lhs.true.9.if.end12_crit_edge
    i32 1, label %if.end12.fold.split125
    i32 3, label %if.end12.fold.split126
  ]

land.lhs.true.9.if.end12_crit_edge:               ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true.9.do.end_crit_edge:                 ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.9.do.end_crit_edge, %land.lhs.true.6.do.end_crit_edge, %land.lhs.true.3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.preheader.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %3, i32 noundef %mode) #10
  br label %cleanup

if.end12.fold.split123:                           ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12.fold.split124:                           ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12.fold.split125:                           ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12.fold.split126:                           ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

switch.lookup:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.wm2000_anc_transition, i32 0, i32 %mode
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end12

switch.lookup127:                                 ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  %switch.offset = add i32 %mode, 2
  br label %if.end12

if.end12:                                         ; preds = %switch.lookup127, %switch.lookup, %if.end12.fold.split126, %if.end12.fold.split125, %if.end12.fold.split124, %if.end12.fold.split123, %land.lhs.true.9.if.end12_crit_edge, %land.lhs.true.6.if.end12_crit_edge
  %i.084.lcssa = phi i32 [ 6, %land.lhs.true.6.if.end12_crit_edge ], [ 9, %land.lhs.true.9.if.end12_crit_edge ], [ 7, %if.end12.fold.split123 ], [ 8, %if.end12.fold.split124 ], [ 10, %if.end12.fold.split125 ], [ 11, %if.end12.fold.split126 ], [ %switch.load, %switch.lookup ], [ %switch.offset, %switch.lookup127 ]
  %arrayidx13 = getelementptr [12 x %struct.anon.108], ptr @anc_transitions, i32 0, i32 %i.084.lcssa
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp15 = icmp eq i32 %11, 3
  br i1 %cmp15, label %if.then16, label %if.end12.if.end31_crit_edge

if.end12.if.end31_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then16:                                        ; preds = %if.end12
  %mclk = getelementptr inbounds %struct.wm2000_priv, ptr %wm2000, i32 0, i32 2
  %12 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then16.do.end21_crit_edge

if.then16.do.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

if.end.i:                                         ; preds = %if.then16
  %call1.i = tail call i32 @clk_enable(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end31_crit_edge, label %if.then3.i

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then3.i, %if.then16.do.end21_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then16.do.end21_crit_edge ]
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

for.cond25:                                       ; preds = %if.end31
  %14 = lshr i32 633, %i.084.lcssa
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.1.not = icmp eq i32 %15, 0
  br i1 %tobool.not.1.not, label %if.end31.1, label %for.cond25.for.end42_crit_edge

for.cond25.for.end42_crit_edge:                   ; preds = %for.cond25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42

if.end31.1:                                       ; preds = %for.cond25
  %arrayidx29.1 = getelementptr [12 x %struct.anon.108], ptr @anc_transitions, i32 0, i32 %i.084.lcssa, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx29.1, align 4
  %18 = ptrtoint ptr %analogue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %analogue, align 4
  %call36.1 = tail call i32 %17(ptr noundef %1, i32 noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.1)
  %cmp37.not.1 = icmp eq i32 %call36.1, 0
  br i1 %cmp37.not.1, label %if.end31.1.for.end42_crit_edge, label %if.end31.1.cleanup_crit_edge

if.end31.1.cleanup_crit_edge:                     ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31.1.for.end42_crit_edge:                   ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42

if.end31:                                         ; preds = %if.end.i.if.end31_crit_edge, %if.end12.if.end31_crit_edge
  %analogue = getelementptr [12 x %struct.anon.108], ptr @anc_transitions, i32 0, i32 %i.084.lcssa, i32 2
  %arrayidx29 = getelementptr [12 x %struct.anon.108], ptr @anc_transitions, i32 0, i32 %i.084.lcssa, i32 3, i32 0
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx29, align 4
  %22 = ptrtoint ptr %analogue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %analogue, align 4
  %call36 = tail call i32 %21(ptr noundef %1, i32 noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %for.cond25, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end42:                                        ; preds = %if.end31.1.for.end42_crit_edge, %for.cond25.for.end42_crit_edge
  %24 = lshr i32 2336, %i.084.lcssa
  %25 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp45.not = icmp eq i32 %25, 0
  br i1 %cmp45.not, label %for.end42.cleanup_crit_edge, label %if.then46

for.end42.cleanup_crit_edge:                      ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then46:                                        ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #9
  %mclk47 = getelementptr inbounds %struct.wm2000_priv, ptr %wm2000, i32 0, i32 2
  %26 = ptrtoint ptr %mclk47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mclk47, align 4
  tail call void @clk_disable(ptr noundef %27) #7
  tail call void @clk_unprepare(ptr noundef %27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %for.end42.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end31.1.cleanup_crit_edge, %do.end21, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i.ph, %do.end21 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %for.end42.cleanup_crit_edge ], [ %call36, %if.end31.cleanup_crit_edge ], [ %call36.1, %if.end31.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_power_up(ptr noundef %i2c, i32 noundef %analogue) #2 align 64 {
entry:
  %val.i374 = alloca i32, align 4
  %val.i334 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !234
  %anc_mode = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %anc_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %anc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.not = icmp eq i32 %4, 3
  br i1 %cmp.not, label %do.body22, label %do.end, !prof !236

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 126, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.body22:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_power_up.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_power_up, %if.then32)) #7
          to label %do.end36 [label %if.then32], !srcloc !235

if.then32:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_power_up.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.53) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body22
  %supplies = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 3
  %call37 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call37) #10
  br label %cleanup

if.end44:                                         ; preds = %do.end36
  %mclk = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mclk, align 4
  %call45 = tail call i32 @clk_get_rate(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500001, i32 %call45)
  %cmp46 = icmp ult i32 %call45, 13500001
  br i1 %cmp46, label %do.body48, label %do.body66

do.body48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_power_up.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_power_up, %if.then60)) #7
          to label %if.end84 [label %if.then60], !srcloc !235

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_power_up.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.54) #7
  br label %if.end84

do.body66:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_power_up.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_power_up, %if.then78)) #7
          to label %if.end84 [label %if.then78], !srcloc !235

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_power_up.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.55) #7
  br label %if.end84

if.end84:                                         ; preds = %if.then78, %do.body66, %if.then60, %do.body48
  %.sink403 = phi i32 [ 128, %do.body48 ], [ 128, %if.then60 ], [ 64, %do.body66 ], [ 64, %if.then78 ]
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %regmap.i323 = getelementptr inbounds %struct.wm2000_priv, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i323 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i323, align 4
  %call1.i324 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 61444, i32 noundef %.sink403) #7
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i, align 4
  %regmap.i326 = getelementptr inbounds %struct.wm2000_priv, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %regmap.i326 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i326, align 4
  %call1.i327 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 61444, i32 noundef 32) #7
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i, align 4
  %regmap.i329 = getelementptr inbounds %struct.wm2000_priv, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %regmap.i329 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i329, align 4
  %call1.i330 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 61444, i32 noundef 16) #7
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i, align 4, !annotation !234
  %regmap.i332 = getelementptr inbounds %struct.wm2000_priv, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i332 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i332, align 4
  %call1.i333 = call i32 @regmap_read(ptr noundef %23, i32 noundef 61445, ptr noundef nonnull %val.i) #7
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  %and11.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not12.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not12.i, label %if.end84.land.rhs.i_crit_edge, label %if.end84.if.end97_crit_edge

if.end84.if.end97_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.end84.land.rhs.i_crit_edge:                    ; preds = %if.end84
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end84.land.rhs.i_crit_edge
  %timeout.013.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 4000, %if.end84.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %do.end92, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @msleep(i32 noundef 1) #7
  %26 = ptrtoint ptr %regmap.i332 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i332, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %27, i32 noundef 61445, ptr noundef nonnull %val.i) #7
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i, align 4
  %and.i = and i32 %29, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.end97_crit_edge

while.body.i.if.end97_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

do.end92:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57) #10
  %call96 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  br label %cleanup

if.end97:                                         ; preds = %while.body.i.if.end97_crit_edge, %if.end84.if.end97_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i334) #7
  %32 = ptrtoint ptr %val.i334 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i334, align 4, !annotation !234
  %regmap.i336 = getelementptr inbounds %struct.wm2000_priv, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %regmap.i336 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i336, align 4
  %call1.i337 = call i32 @regmap_read(ptr noundef %34, i32 noundef 36860, ptr noundef nonnull %val.i334) #7
  %35 = ptrtoint ptr %val.i334 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i334, align 4
  %and11.i338 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i338)
  %tobool.not12.i339 = icmp eq i32 %and11.i338, 0
  br i1 %tobool.not12.i339, label %if.end97.land.rhs.i343_crit_edge, label %if.end97.if.end108_crit_edge

if.end97.if.end108_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.end97.land.rhs.i343_crit_edge:                 ; preds = %if.end97
  br label %land.rhs.i343

land.rhs.i343:                                    ; preds = %while.body.i347.land.rhs.i343_crit_edge, %if.end97.land.rhs.i343_crit_edge
  %timeout.013.i340 = phi i32 [ %dec.i341, %while.body.i347.land.rhs.i343_crit_edge ], [ 4000, %if.end97.land.rhs.i343_crit_edge ]
  %dec.i341 = add nsw i32 %timeout.013.i340, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i341)
  %tobool2.not.i342 = icmp eq i32 %dec.i341, 0
  br i1 %tobool2.not.i342, label %do.end103, label %while.body.i347

while.body.i347:                                  ; preds = %land.rhs.i343
  call void @msleep(i32 noundef 1) #7
  %37 = ptrtoint ptr %regmap.i336 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i336, align 4
  %call4.i344 = call i32 @regmap_read(ptr noundef %38, i32 noundef 36860, ptr noundef nonnull %val.i334) #7
  %39 = ptrtoint ptr %val.i334 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i334, align 4
  %and.i345 = and i32 %40, 1
  %tobool.not.i346 = icmp eq i32 %and.i345, 0
  br i1 %tobool.not.i346, label %while.body.i347.land.rhs.i343_crit_edge, label %while.body.i347.if.end108_crit_edge

while.body.i347.if.end108_crit_edge:              ; preds = %while.body.i347
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

while.body.i347.land.rhs.i343_crit_edge:          ; preds = %while.body.i347
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i343

do.end103:                                        ; preds = %land.rhs.i343
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i334) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60) #10
  %call107 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  br label %cleanup

if.end108:                                        ; preds = %while.body.i347.if.end108_crit_edge, %if.end97.if.end108_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i334) #7
  %41 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i, align 4
  %regmap.i351 = getelementptr inbounds %struct.wm2000_priv, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %regmap.i351 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i351, align 4
  %call1.i352 = call i32 @regmap_write(ptr noundef %44, i32 noundef 61444, i32 noundef 1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_power_up.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_power_up, %if.then122)) #7
          to label %do.end126 [label %if.then122], !srcloc !235

if.then122:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  %anc_download_size = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %anc_download_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %anc_download_size, align 4
  %sub = add i32 %46, -2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_power_up.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %sub) #7
  br label %do.end126

do.end126:                                        ; preds = %if.then122, %if.end108
  %anc_download = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 7
  %47 = ptrtoint ptr %anc_download to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %anc_download, align 4
  %anc_download_size127 = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %anc_download_size127 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %anc_download_size127, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c, ptr noundef %48, i32 noundef %50, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp129 = icmp slt i32 %call.i, 0
  br i1 %cmp129, label %do.end133, label %if.end138

do.end133:                                        ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %call.i) #10
  %call137 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  br label %cleanup

if.end138:                                        ; preds = %do.end126
  %51 = ptrtoint ptr %anc_download_size127 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %anc_download_size127, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %52)
  %cmp140.not = icmp eq i32 %call.i, %52
  br i1 %cmp140.not, label %do.body151, label %do.end144

do.end144:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %call.i, i32 noundef %52) #10
  %call149 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  br label %cleanup

do.body151:                                       ; preds = %if.end138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_power_up.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_power_up, %if.then163)) #7
          to label %do.end167 [label %if.then163], !srcloc !235

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_power_up.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.69) #7
  br label %do.end167

do.end167:                                        ; preds = %if.then163, %do.body151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %analogue)
  %tobool168.not = icmp eq i32 %analogue, 0
  %53 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_data.i, align 4
  %regmap.i360 = getelementptr inbounds %struct.wm2000_priv, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %regmap.i360 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i360, align 4
  br i1 %tobool168.not, label %if.else172, label %if.then169

if.then169:                                       ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i355 = call i32 @regmap_write(ptr noundef %56, i32 noundef 36856, i32 noundef 62) #7
  %57 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_data.i, align 4
  %regmap.i357 = getelementptr inbounds %struct.wm2000_priv, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %regmap.i357 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i357, align 4
  %call1.i358 = call i32 @regmap_write(ptr noundef %60, i32 noundef 36861, i32 noundef 194) #7
  br label %if.end174

if.else172:                                       ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i361 = call i32 @regmap_write(ptr noundef %56, i32 noundef 36861, i32 noundef 66) #7
  br label %if.end174

if.end174:                                        ; preds = %if.else172, %if.then169
  %regmap = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call175 = call i32 @regmap_read(ptr noundef %62, i32 noundef 36847, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %cmp176.not = icmp eq i32 %call175, 0
  br i1 %cmp176.not, label %if.end185, label %do.end180

do.end180:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %call175) #10
  %call184 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  br label %cleanup

if.end185:                                        ; preds = %if.end174
  %speech_clarity = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %speech_clarity to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load = load i8, ptr %speech_clarity, align 4
  %64 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val, align 4
  %and = and i32 %65, -2
  %66 = lshr i8 %bf.load, 4
  %.lobit = and i8 %66, 1
  %67 = zext i8 %.lobit to i32
  %storemerge = or i32 %and, %67
  store i32 %storemerge, ptr %val, align 4
  %68 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i, align 4
  %regmap.i363 = getelementptr inbounds %struct.wm2000_priv, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %regmap.i363 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap.i363, align 4
  %call1.i364 = call i32 @regmap_write(ptr noundef %71, i32 noundef 36847, i32 noundef %storemerge) #7
  %72 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver_data.i, align 4
  %regmap.i366 = getelementptr inbounds %struct.wm2000_priv, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %regmap.i366 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap.i366, align 4
  %call1.i367 = call i32 @regmap_write(ptr noundef %75, i32 noundef 36862, i32 noundef 51) #7
  %76 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver_data.i, align 4
  %regmap.i369 = getelementptr inbounds %struct.wm2000_priv, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %regmap.i369 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i369, align 4
  %call1.i370 = call i32 @regmap_write(ptr noundef %79, i32 noundef 36863, i32 noundef 2) #7
  %80 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %driver_data.i, align 4
  %regmap.i372 = getelementptr inbounds %struct.wm2000_priv, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %regmap.i372 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap.i372, align 4
  %call1.i373 = call i32 @regmap_write(ptr noundef %83, i32 noundef 61444, i32 noundef 8) #7
  %84 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i374) #7
  %86 = ptrtoint ptr %val.i374 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %val.i374, align 4, !annotation !234
  %regmap.i376 = getelementptr inbounds %struct.wm2000_priv, ptr %85, i32 0, i32 1
  %87 = ptrtoint ptr %regmap.i376 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap.i376, align 4
  %call1.i377 = call i32 @regmap_read(ptr noundef %88, i32 noundef 36860, ptr noundef nonnull %val.i374) #7
  %89 = ptrtoint ptr %val.i374 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val.i374, align 4
  %and11.i378 = and i32 %90, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i378)
  %tobool.not12.i379 = icmp eq i32 %and11.i378, 0
  br i1 %tobool.not12.i379, label %if.end185.land.rhs.i383_crit_edge, label %if.end185.do.body205_crit_edge

if.end185.do.body205_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body205

if.end185.land.rhs.i383_crit_edge:                ; preds = %if.end185
  br label %land.rhs.i383

land.rhs.i383:                                    ; preds = %while.body.i387.land.rhs.i383_crit_edge, %if.end185.land.rhs.i383_crit_edge
  %timeout.013.i380 = phi i32 [ %dec.i381, %while.body.i387.land.rhs.i383_crit_edge ], [ 4000, %if.end185.land.rhs.i383_crit_edge ]
  %dec.i381 = add nsw i32 %timeout.013.i380, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i381)
  %tobool2.not.i382 = icmp eq i32 %dec.i381, 0
  br i1 %tobool2.not.i382, label %do.end199, label %while.body.i387

while.body.i387:                                  ; preds = %land.rhs.i383
  call void @msleep(i32 noundef 1) #7
  %91 = ptrtoint ptr %regmap.i376 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap.i376, align 4
  %call4.i384 = call i32 @regmap_read(ptr noundef %92, i32 noundef 36860, ptr noundef nonnull %val.i374) #7
  %93 = ptrtoint ptr %val.i374 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val.i374, align 4
  %and.i385 = and i32 %94, 64
  %tobool.not.i386 = icmp eq i32 %and.i385, 0
  br i1 %tobool.not.i386, label %while.body.i387.land.rhs.i383_crit_edge, label %while.body.i387.do.body205_crit_edge

while.body.i387.do.body205_crit_edge:             ; preds = %while.body.i387
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body205

while.body.i387.land.rhs.i383_crit_edge:          ; preds = %while.body.i387
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i383

do.end199:                                        ; preds = %land.rhs.i383
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i374) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74) #10
  %call203 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  br label %cleanup

do.body205:                                       ; preds = %while.body.i387.do.body205_crit_edge, %if.end185.do.body205_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i374) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_power_up.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_power_up, %if.then217)) #7
          to label %do.end221 [label %if.then217], !srcloc !235

if.then217:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_power_up.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.76) #7
  br label %do.end221

do.end221:                                        ; preds = %if.then217, %do.body205
  br i1 %tobool168.not, label %do.end221.if.end241_crit_edge, label %do.body224

do.end221.if.end241_crit_edge:                    ; preds = %do.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end241

do.body224:                                       ; preds = %do.end221
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_power_up.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_power_up, %if.then236)) #7
          to label %if.end241 [label %if.then236], !srcloc !235

if.then236:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_power_up.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.77) #7
  br label %if.end241

if.end241:                                        ; preds = %if.then236, %do.body224, %do.end221.if.end241_crit_edge
  %95 = ptrtoint ptr %anc_mode to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %anc_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end241, %do.end199, %do.end180, %do.end144, %do.end133, %do.end103, %do.end92, %do.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call37, %do.end42 ], [ %call.i, %do.end133 ], [ -5, %do.end144 ], [ %call175, %do.end180 ], [ 0, %if.end241 ], [ -110, %do.end199 ], [ -110, %do.end103 ], [ -110, %do.end92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_enter_standby(ptr noundef %i2c, i32 noundef %analogue) #2 align 64 {
entry:
  %val.i108 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %anc_mode = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %anc_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %anc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !236

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 346, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %analogue)
  %tobool22.not = icmp eq i32 %analogue, 0
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %regmap.i103 = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i103 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i103, align 4
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 36855, i32 noundef 62) #7
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %regmap.i100 = getelementptr inbounds %struct.wm2000_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i100 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i100, align 4
  %call1.i101 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 36861, i32 noundef 134) #7
  br label %if.end27

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i104 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 36861, i32 noundef 6) #7
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then23
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !234
  %regmap.i106 = getelementptr inbounds %struct.wm2000_priv, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %regmap.i106 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i106, align 4
  %call1.i107 = call i32 @regmap_read(ptr noundef %16, i32 noundef 36860, ptr noundef nonnull %val.i) #7
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %and11.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not12.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not12.i, label %if.end27.land.rhs.i_crit_edge, label %if.end27.if.end35_crit_edge

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end27.land.rhs.i_crit_edge:                    ; preds = %if.end27
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end27.land.rhs.i_crit_edge
  %timeout.013.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 4000, %if.end27.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %do.end33, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @msleep(i32 noundef 1) #7
  %19 = ptrtoint ptr %regmap.i106 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i106, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 36860, ptr noundef nonnull %val.i) #7
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  %and.i = and i32 %22, 4
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.end35_crit_edge

while.body.i.if.end35_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

do.end33:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78) #10
  br label %cleanup

if.end35:                                         ; preds = %while.body.i.if.end35_crit_edge, %if.end27.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i108) #7
  %25 = ptrtoint ptr %val.i108 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %val.i108, align 4, !annotation !234
  %regmap.i110 = getelementptr inbounds %struct.wm2000_priv, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %regmap.i110 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i110, align 4
  %call1.i111 = call i32 @regmap_read(ptr noundef %27, i32 noundef 61445, ptr noundef nonnull %val.i108) #7
  %28 = ptrtoint ptr %val.i108 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i108, align 4
  %and11.i112 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i112)
  %tobool.not12.i113 = icmp eq i32 %and11.i112, 0
  br i1 %tobool.not12.i113, label %if.end35.land.rhs.i117_crit_edge, label %if.end35.if.end43_crit_edge

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end35.land.rhs.i117_crit_edge:                 ; preds = %if.end35
  br label %land.rhs.i117

land.rhs.i117:                                    ; preds = %while.body.i121.land.rhs.i117_crit_edge, %if.end35.land.rhs.i117_crit_edge
  %timeout.013.i114 = phi i32 [ %dec.i115, %while.body.i121.land.rhs.i117_crit_edge ], [ 4000, %if.end35.land.rhs.i117_crit_edge ]
  %dec.i115 = add nsw i32 %timeout.013.i114, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i115)
  %tobool2.not.i116 = icmp eq i32 %dec.i115, 0
  br i1 %tobool2.not.i116, label %do.end41, label %while.body.i121

while.body.i121:                                  ; preds = %land.rhs.i117
  call void @msleep(i32 noundef 1) #7
  %30 = ptrtoint ptr %regmap.i110 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i110, align 4
  %call4.i118 = call i32 @regmap_read(ptr noundef %31, i32 noundef 61445, ptr noundef nonnull %val.i108) #7
  %32 = ptrtoint ptr %val.i108 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i108, align 4
  %and.i119 = and i32 %33, 1
  %tobool.not.i120 = icmp eq i32 %and.i119, 0
  br i1 %tobool.not.i120, label %while.body.i121.land.rhs.i117_crit_edge, label %while.body.i121.if.end43_crit_edge

while.body.i121.if.end43_crit_edge:               ; preds = %while.body.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

while.body.i121.land.rhs.i117_crit_edge:          ; preds = %while.body.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i117

do.end41:                                         ; preds = %land.rhs.i117
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i108) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81) #10
  br label %cleanup

if.end43:                                         ; preds = %while.body.i121.if.end43_crit_edge, %if.end35.if.end43_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i108) #7
  %34 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i, align 4
  %regmap.i125 = getelementptr inbounds %struct.wm2000_priv, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %regmap.i125 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i125, align 4
  %call1.i126 = call i32 @regmap_write(ptr noundef %37, i32 noundef 61443, i32 noundef 1) #7
  %38 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i, align 4
  %regmap.i128 = getelementptr inbounds %struct.wm2000_priv, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %regmap.i128 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i128, align 4
  %call1.i129 = call i32 @regmap_write(ptr noundef %41, i32 noundef 61444, i32 noundef 2) #7
  %42 = ptrtoint ptr %anc_mode to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %anc_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_enter_standby.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_enter_standby, %if.then57)) #7
          to label %do.end61 [label %if.then57], !srcloc !235

if.then57:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_enter_standby.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.83) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then57, %if.end43
  br i1 %tobool22.not, label %do.end61.cleanup_crit_edge, label %do.body64

do.end61.cleanup_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body64:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_enter_standby.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_enter_standby, %if.then76)) #7
          to label %cleanup [label %if.then76], !srcloc !235

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_enter_standby.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.84) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %do.body64, %do.end61.cleanup_crit_edge, %do.end41, %do.end33, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -110, %do.end41 ], [ -110, %do.end33 ], [ 0, %if.then76 ], [ 0, %do.end61.cleanup_crit_edge ], [ 0, %do.body64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_enter_bypass(ptr noundef %i2c, i32 noundef %analogue) #2 align 64 {
entry:
  %val.i78 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %anc_mode = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %anc_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %anc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !236

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 272, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %analogue)
  %tobool22.not = icmp eq i32 %analogue, 0
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %regmap.i73 = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i73 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i73, align 4
  %. = select i1 %tobool22.not, i32 10, i32 138
  %call1.i74 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 36861, i32 noundef %.) #7
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !234
  %regmap.i76 = getelementptr inbounds %struct.wm2000_priv, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i76, align 4
  %call1.i77 = call i32 @regmap_read(ptr noundef %12, i32 noundef 36860, ptr noundef nonnull %val.i) #7
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %and11.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not12.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not12.i, label %if.end21.land.rhs.i_crit_edge, label %if.end21.if.end34_crit_edge

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end21.land.rhs.i_crit_edge:                    ; preds = %if.end21
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end21.land.rhs.i_crit_edge
  %timeout.013.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 4000, %if.end21.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %do.end32, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @msleep(i32 noundef 1) #7
  %15 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i76, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 36860, ptr noundef nonnull %val.i) #7
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %and.i = and i32 %18, 4
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.end34_crit_edge

while.body.i.if.end34_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

do.end32:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85) #10
  br label %cleanup

if.end34:                                         ; preds = %while.body.i.if.end34_crit_edge, %if.end21.if.end34_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i78) #7
  %21 = ptrtoint ptr %val.i78 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i78, align 4, !annotation !234
  %regmap.i80 = getelementptr inbounds %struct.wm2000_priv, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i80 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i80, align 4
  %call1.i81 = call i32 @regmap_read(ptr noundef %23, i32 noundef 61445, ptr noundef nonnull %val.i78) #7
  %24 = ptrtoint ptr %val.i78 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i78, align 4
  %and11.i82 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i82)
  %tobool.not12.i83 = icmp eq i32 %and11.i82, 0
  br i1 %tobool.not12.i83, label %if.end34.land.rhs.i87_crit_edge, label %if.end34.if.end42_crit_edge

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end34.land.rhs.i87_crit_edge:                  ; preds = %if.end34
  br label %land.rhs.i87

land.rhs.i87:                                     ; preds = %while.body.i91.land.rhs.i87_crit_edge, %if.end34.land.rhs.i87_crit_edge
  %timeout.013.i84 = phi i32 [ %dec.i85, %while.body.i91.land.rhs.i87_crit_edge ], [ 4000, %if.end34.land.rhs.i87_crit_edge ]
  %dec.i85 = add nsw i32 %timeout.013.i84, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i85)
  %tobool2.not.i86 = icmp eq i32 %dec.i85, 0
  br i1 %tobool2.not.i86, label %do.end40, label %while.body.i91

while.body.i91:                                   ; preds = %land.rhs.i87
  call void @msleep(i32 noundef 1) #7
  %26 = ptrtoint ptr %regmap.i80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i80, align 4
  %call4.i88 = call i32 @regmap_read(ptr noundef %27, i32 noundef 61445, ptr noundef nonnull %val.i78) #7
  %28 = ptrtoint ptr %val.i78 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i78, align 4
  %and.i89 = and i32 %29, 1
  %tobool.not.i90 = icmp eq i32 %and.i89, 0
  br i1 %tobool.not.i90, label %while.body.i91.land.rhs.i87_crit_edge, label %while.body.i91.if.end42_crit_edge

while.body.i91.if.end42_crit_edge:                ; preds = %while.body.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

while.body.i91.land.rhs.i87_crit_edge:            ; preds = %while.body.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i87

do.end40:                                         ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i78) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88) #10
  br label %cleanup

if.end42:                                         ; preds = %while.body.i91.if.end42_crit_edge, %if.end34.if.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i78) #7
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i, align 4
  %regmap.i95 = getelementptr inbounds %struct.wm2000_priv, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %regmap.i95 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i95, align 4
  %call1.i96 = call i32 @regmap_write(ptr noundef %33, i32 noundef 61443, i32 noundef 1) #7
  %34 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i, align 4
  %regmap.i98 = getelementptr inbounds %struct.wm2000_priv, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %regmap.i98 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i98, align 4
  %call1.i99 = call i32 @regmap_write(ptr noundef %37, i32 noundef 61444, i32 noundef 2) #7
  %38 = ptrtoint ptr %anc_mode to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %anc_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_enter_bypass.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_enter_bypass, %if.then56)) #7
          to label %cleanup [label %if.then56], !srcloc !235

if.then56:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_enter_bypass.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.90) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end42, %do.end40, %do.end32, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -110, %do.end40 ], [ -110, %do.end32 ], [ 0, %if.then56 ], [ 0, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_power_down(ptr noundef %i2c, i32 noundef %analogue) #2 align 64 {
entry:
  %val.i46 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %analogue)
  %tobool.not = icmp eq i32 %analogue, 0
  %regmap.i41 = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i41 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i41, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 36855, i32 noundef 62) #7
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %regmap.i38 = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i38, align 4
  %call1.i39 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 36861, i32 noundef 129) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i42 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 36861, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !234
  %regmap.i44 = getelementptr inbounds %struct.wm2000_priv, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i44, align 4
  %call1.i45 = call i32 @regmap_read(ptr noundef %12, i32 noundef 36860, ptr noundef nonnull %val.i) #7
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %and11.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not12.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not12.i, label %if.end.land.rhs.i_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.land.rhs.i_crit_edge:                      ; preds = %if.end
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.land.rhs.i_crit_edge
  %timeout.013.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 4000, %if.end.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %do.end, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @msleep(i32 noundef 1) #7
  %15 = ptrtoint ptr %regmap.i44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i44, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 36860, ptr noundef nonnull %val.i) #7
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %and.i = and i32 %18, 2
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.end8_crit_edge

while.body.i.if.end8_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

do.end:                                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91) #10
  br label %cleanup

if.end8:                                          ; preds = %while.body.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i46) #7
  %21 = ptrtoint ptr %val.i46 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i46, align 4, !annotation !234
  %regmap.i48 = getelementptr inbounds %struct.wm2000_priv, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i48, align 4
  %call1.i49 = call i32 @regmap_read(ptr noundef %23, i32 noundef 61445, ptr noundef nonnull %val.i46) #7
  %24 = ptrtoint ptr %val.i46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i46, align 4
  %and11.i50 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i50)
  %tobool.not12.i51 = icmp eq i32 %and11.i50, 0
  br i1 %tobool.not12.i51, label %if.end8.land.rhs.i55_crit_edge, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end8.land.rhs.i55_crit_edge:                   ; preds = %if.end8
  br label %land.rhs.i55

land.rhs.i55:                                     ; preds = %while.body.i59.land.rhs.i55_crit_edge, %if.end8.land.rhs.i55_crit_edge
  %timeout.013.i52 = phi i32 [ %dec.i53, %while.body.i59.land.rhs.i55_crit_edge ], [ 4000, %if.end8.land.rhs.i55_crit_edge ]
  %dec.i53 = add nsw i32 %timeout.013.i52, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i53)
  %tobool2.not.i54 = icmp eq i32 %dec.i53, 0
  br i1 %tobool2.not.i54, label %do.end14, label %while.body.i59

while.body.i59:                                   ; preds = %land.rhs.i55
  call void @msleep(i32 noundef 1) #7
  %26 = ptrtoint ptr %regmap.i48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i48, align 4
  %call4.i56 = call i32 @regmap_read(ptr noundef %27, i32 noundef 61445, ptr noundef nonnull %val.i46) #7
  %28 = ptrtoint ptr %val.i46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i46, align 4
  %and.i57 = and i32 %29, 1
  %tobool.not.i58 = icmp eq i32 %and.i57, 0
  br i1 %tobool.not.i58, label %while.body.i59.land.rhs.i55_crit_edge, label %while.body.i59.if.end16_crit_edge

while.body.i59.if.end16_crit_edge:                ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

while.body.i59.land.rhs.i55_crit_edge:            ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i55

do.end14:                                         ; preds = %land.rhs.i55
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i46) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88) #10
  br label %cleanup

if.end16:                                         ; preds = %while.body.i59.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i46) #7
  %supplies = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 3
  %call17 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_power_down.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_power_down, %if.then23)) #7
          to label %do.end27 [label %if.then23], !srcloc !235

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_power_down.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.95) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %if.end16
  %anc_mode = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %anc_mode to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %anc_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %do.end14, %do.end
  %retval.0 = phi i32 [ 0, %do.end27 ], [ -110, %do.end14 ], [ -110, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_exit_bypass(ptr noundef %i2c, i32 noundef %analogue) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %anc_mode = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %anc_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %anc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !236

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 311, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %entry
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 61443, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %analogue)
  %tobool23.not = icmp eq i32 %analogue, 0
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %regmap.i68 = getelementptr inbounds %struct.wm2000_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i68 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i68, align 4
  %. = select i1 %tobool23.not, i32 66, i32 194
  %call1.i69 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 36861, i32 noundef %.) #7
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %regmap.i71 = getelementptr inbounds %struct.wm2000_priv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i71 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i71, align 4
  %call1.i72 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 61444, i32 noundef 1) #7
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i, align 4
  %regmap.i74 = getelementptr inbounds %struct.wm2000_priv, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i74 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i74, align 4
  %call1.i75 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 61444, i32 noundef 8) #7
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val.i, align 4, !annotation !234
  %regmap.i77 = getelementptr inbounds %struct.wm2000_priv, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %regmap.i77 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i77, align 4
  %call1.i78 = call i32 @regmap_read(ptr noundef %24, i32 noundef 36860, ptr noundef nonnull %val.i) #7
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i, align 4
  %and11.i = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not12.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not12.i, label %if.end21.land.rhs.i_crit_edge, label %if.end21.if.end37_crit_edge

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end21.land.rhs.i_crit_edge:                    ; preds = %if.end21
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end21.land.rhs.i_crit_edge
  %timeout.013.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 4000, %if.end21.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %do.end35, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @msleep(i32 noundef 1) #7
  %27 = ptrtoint ptr %regmap.i77 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i77, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %28, i32 noundef 36860, ptr noundef nonnull %val.i) #7
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i, align 4
  %and.i = and i32 %30, 64
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.end37_crit_edge

while.body.i.if.end37_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

do.end35:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96) #10
  br label %cleanup

if.end37:                                         ; preds = %while.body.i.if.end37_crit_edge, %if.end21.if.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %31 = ptrtoint ptr %anc_mode to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %anc_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_exit_bypass.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_exit_bypass, %if.then49)) #7
          to label %cleanup [label %if.then49], !srcloc !235

if.then49:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_exit_bypass.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.98) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end37, %do.end35, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -110, %do.end35 ], [ 0, %if.then49 ], [ 0, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_exit_standby(ptr noundef %i2c, i32 noundef %analogue) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %anc_mode = getelementptr inbounds %struct.wm2000_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %anc_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %anc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !236

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 390, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %entry
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 61443, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %analogue)
  %tobool23.not = icmp eq i32 %analogue, 0
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %regmap.i98 = getelementptr inbounds %struct.wm2000_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i98 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i98, align 4
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i93 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 36856, i32 noundef 62) #7
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %regmap.i95 = getelementptr inbounds %struct.wm2000_priv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i95 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i95, align 4
  %call1.i96 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 36861, i32 noundef 194) #7
  br label %if.end28

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i99 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 36861, i32 noundef 66) #7
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then24
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i, align 4
  %regmap.i101 = getelementptr inbounds %struct.wm2000_priv, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i101, align 4
  %call1.i102 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 61444, i32 noundef 1) #7
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i, align 4
  %regmap.i104 = getelementptr inbounds %struct.wm2000_priv, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i104 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i104, align 4
  %call1.i105 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 61444, i32 noundef 8) #7
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %val.i, align 4, !annotation !234
  %regmap.i107 = getelementptr inbounds %struct.wm2000_priv, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %regmap.i107 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i107, align 4
  %call1.i108 = call i32 @regmap_read(ptr noundef %28, i32 noundef 36860, ptr noundef nonnull %val.i) #7
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i, align 4
  %and11.i = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not12.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not12.i, label %if.end28.land.rhs.i_crit_edge, label %if.end28.if.end38_crit_edge

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end28.land.rhs.i_crit_edge:                    ; preds = %if.end28
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end28.land.rhs.i_crit_edge
  %timeout.013.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 4000, %if.end28.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.013.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %do.end36, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @msleep(i32 noundef 1) #7
  %31 = ptrtoint ptr %regmap.i107 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i107, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %32, i32 noundef 36860, ptr noundef nonnull %val.i) #7
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  %and.i = and i32 %34, 64
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.end38_crit_edge

while.body.i.if.end38_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

do.end36:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.96) #10
  br label %cleanup

if.end38:                                         ; preds = %while.body.i.if.end38_crit_edge, %if.end28.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %35 = ptrtoint ptr %anc_mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %anc_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_exit_standby.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_exit_standby, %if.then50)) #7
          to label %do.end54 [label %if.then50], !srcloc !235

if.then50:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_exit_standby.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.98) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %if.end38
  br i1 %tobool23.not, label %do.end54.cleanup_crit_edge, label %do.body57

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body57:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_exit_standby.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_exit_standby, %if.then69)) #7
          to label %cleanup [label %if.then69], !srcloc !235

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_exit_standby.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.100) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %do.body57, %do.end54.cleanup_crit_edge, %do.end36, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -110, %do.end36 ], [ 0, %if.then69 ], [ 0, %do.end54.cleanup_crit_edge ], [ 0, %do.body57 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm2000_anc_power_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %and = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %anc_eng_ena = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %anc_eng_ena to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %anc_eng_ena, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %anc_eng_ena, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %event, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %anc_eng_ena5 = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %anc_eng_ena5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load6 = load i8, ptr %anc_eng_ena5, align 4
  %bf.clear7 = and i8 %bf.load6, -65
  store i8 %bf.clear7, ptr %anc_eng_ena5, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %anc_eng_ena.i = getelementptr inbounds %struct.wm2000_priv, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %anc_eng_ena.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %anc_eng_ena.i, align 4
  %11 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %11)
  %.not.i = icmp eq i8 %11, 96
  %12 = xor i8 %bf.load.i, -1
  %13 = lshr i8 %12, 7
  %narrow.i = select i1 %.not.i, i8 %13, i8 2
  %mode.0.i = zext i8 %narrow.i to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm2000_anc_set_mode.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm2000_anc_power_event, %if.then17.i)) #7
          to label %wm2000_anc_set_mode.exit [label %if.then17.i], !srcloc !235

if.then17.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %anc_eng_ena.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load19.i = load i8, ptr %anc_eng_ena.i, align 4
  %bf.lshr20.i = lshr i8 %bf.load19.i, 6
  %bf.clear21.i = and i8 %bf.lshr20.i, 1
  %bf.cast22.i = zext i8 %bf.clear21.i to i32
  %15 = lshr i8 %bf.load19.i, 5
  %.lobit.i = and i8 %15, 1
  %16 = xor i8 %.lobit.i, 1
  %17 = zext i8 %16 to i32
  %bf.lshr33.i = lshr i8 %bf.load19.i, 7
  %bf.cast34.i = zext i8 %bf.lshr33.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm2000_anc_set_mode.__UNIQUE_ID_ddebug308, ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef %mode.0.i, i32 noundef %bf.cast22.i, i32 noundef %17, i32 noundef %bf.cast34.i) #7
  br label %wm2000_anc_set_mode.exit

wm2000_anc_set_mode.exit:                         ; preds = %if.then17.i, %if.end9
  %call36.i = tail call fastcc i32 @wm2000_anc_transition(ptr noundef %5, i32 noundef %mode.0.i) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call36.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !61, !62, !63, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !183, !184, !185, !186, !188, !189, !191, !192, !194, !195, !196, !197, !199, !200, !202, !203, !204, !206, !208, !209, !211, !213, !215, !217, !219, !221, !223}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231, !232}
!llvm.ident = !{!233}

!0 = !{ptr @__initcall__kmod_snd_soc_wm2000__309_948_wm2000_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_wm2000__309_948_wm2000_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm2000.c", i32 948, i32 1}
!2 = !{ptr @__exitcall_wm2000_i2c_driver_exit, !1, !"__exitcall_wm2000_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description310, !4, !"__UNIQUE_ID_description310", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wm2000.c", i32 950, i32 1}
!5 = !{ptr @__UNIQUE_ID_author311, !6, !"__UNIQUE_ID_author311", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wm2000.c", i32 951, i32 1}
!7 = !{ptr @__UNIQUE_ID_file312, !8, !"__UNIQUE_ID_file312", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/wm2000.c", i32 952, i32 1}
!9 = !{ptr @__UNIQUE_ID_license313, !8, !"__UNIQUE_ID_license313", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wm2000.c", i32 942, i32 11}
!12 = !{ptr @wm2000_i2c_driver, !13, !"wm2000_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wm2000.c", i32 940, i32 26}
!14 = !{ptr @wm2000_i2c_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm2000.c", i32 825, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wm2000_i2c_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/wm2000.c", i32 829, i32 19}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/wm2000.c", i32 832, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wm2000_i2c_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @wm2000_i2c_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/wm2000.c", i32 843, i32 3}
!30 = !{ptr @wm2000_i2c_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @wm2000_i2c_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/wm2000.c", i32 849, i32 3}
!34 = !{ptr @wm2000_i2c_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @wm2000_i2c_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/wm2000.c", i32 856, i32 3}
!38 = !{ptr @wm2000_i2c_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @wm2000_i2c_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/wm2000.c", i32 862, i32 3}
!42 = !{ptr @wm2000_i2c_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @wm2000_i2c_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/wm2000.c", i32 868, i32 3}
!46 = !{ptr @wm2000_i2c_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wm2000_i2c_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/wm2000.c", i32 875, i32 3}
!50 = !{ptr @wm2000_i2c_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @wm2000_i2c_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/wm2000.c", i32 878, i32 2}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @wm2000_i2c_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @wm2000_i2c_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/wm2000.c", i32 880, i32 41}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/wm2000.c", i32 883, i32 3}
!61 = !{ptr @wm2000_i2c_probe._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @wm2000_i2c_probe._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/wm2000.c", i32 887, i32 13}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/wm2000.c", i32 898, i32 3}
!67 = !{ptr @wm2000_i2c_probe._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @wm2000_i2c_probe._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @wm2000_regmap, !70, !"wm2000_regmap", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/wm2000.c", i32 768, i32 35}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/wm2000.c", i32 48, i32 2}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/wm2000.c", i32 49, i32 2}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/wm2000.c", i32 50, i32 2}
!77 = distinct !{null, !78, !"wm2000_supplies", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/wm2000.c", i32 47, i32 20}
!79 = !{ptr @soc_component_dev_wm2000, !80, !"soc_component_dev_wm2000", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/wm2000.c", i32 793, i32 46}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/wm2000.c", i32 665, i32 2}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/wm2000.c", i32 666, i32 2}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/wm2000.c", i32 669, i32 2}
!87 = !{ptr @wm2000_controls, !88, !"wm2000_controls", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/wm2000.c", i32 664, i32 38}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/wm2000.c", i32 591, i32 2}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @wm2000_anc_set_mode.__UNIQUE_ID_ddebug308, !90, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/wm2000.c", i32 549, i32 3}
!96 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @wm2000_anc_transition._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @wm2000_anc_transition._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/wm2000.c", i32 558, i32 4}
!101 = !{ptr @wm2000_anc_transition._entry.49, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @wm2000_anc_transition._entry_ptr.51, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @anc_transitions, !104, !"anc_transitions", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/wm2000.c", i32 432, i32 3}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/wm2000.c", i32 129, i32 2}
!107 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @wm2000_power_up.__UNIQUE_ID_ddebug294, !106, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!109 = !{ptr @wm2000_power_up._entry, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/wm2000.c", i32 133, i32 3}
!111 = !{ptr @wm2000_power_up._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/wm2000.c", i32 139, i32 3}
!114 = !{ptr @wm2000_power_up.__UNIQUE_ID_ddebug295, !113, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/wm2000.c", i32 143, i32 3}
!117 = !{ptr @wm2000_power_up.__UNIQUE_ID_ddebug296, !116, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wm2000.c", i32 154, i32 3}
!120 = !{ptr @wm2000_power_up._entry.56, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @wm2000_power_up._entry_ptr.58, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/wm2000.c", i32 161, i32 3}
!124 = !{ptr @wm2000_power_up._entry.59, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @wm2000_power_up._entry_ptr.61, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/wm2000.c", i32 170, i32 2}
!128 = !{ptr @wm2000_power_up.__UNIQUE_ID_ddebug297, !127, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/wm2000.c", i32 176, i32 3}
!131 = !{ptr @wm2000_power_up._entry.63, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @wm2000_power_up._entry_ptr.65, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/wm2000.c", i32 181, i32 3}
!135 = !{ptr @wm2000_power_up._entry.66, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @wm2000_power_up._entry_ptr.68, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/wm2000.c", i32 187, i32 2}
!139 = !{ptr @wm2000_power_up.__UNIQUE_ID_ddebug298, !138, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/wm2000.c", i32 204, i32 3}
!142 = !{ptr @wm2000_power_up._entry.70, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @wm2000_power_up._entry_ptr.72, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/wm2000.c", i32 221, i32 3}
!146 = !{ptr @wm2000_power_up._entry.73, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @wm2000_power_up._entry_ptr.75, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/wm2000.c", i32 226, i32 2}
!150 = !{ptr @wm2000_power_up.__UNIQUE_ID_ddebug299, !149, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!151 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/wm2000.c", i32 228, i32 3}
!153 = !{ptr @wm2000_power_up.__UNIQUE_ID_ddebug300, !152, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/wm2000.c", i32 364, i32 3}
!156 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @wm2000_enter_standby._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @wm2000_enter_standby._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/wm2000.c", i32 370, i32 3}
!161 = !{ptr @wm2000_enter_standby._entry.80, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @wm2000_enter_standby._entry_ptr.82, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/wm2000.c", i32 379, i32 2}
!165 = !{ptr @wm2000_enter_standby.__UNIQUE_ID_ddebug304, !164, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!166 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/wm2000.c", i32 381, i32 3}
!168 = !{ptr @wm2000_enter_standby.__UNIQUE_ID_ddebug305, !167, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!169 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/wm2000.c", i32 288, i32 3}
!171 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @wm2000_enter_bypass._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @wm2000_enter_bypass._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/wm2000.c", i32 294, i32 3}
!176 = !{ptr @wm2000_enter_bypass._entry.87, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @wm2000_enter_bypass._entry_ptr.89, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/wm2000.c", i32 302, i32 2}
!180 = !{ptr @wm2000_enter_bypass.__UNIQUE_ID_ddebug302, !179, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!181 = !{ptr @.str.91, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/wm2000.c", i32 250, i32 3}
!183 = !{ptr @.str.92, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @wm2000_power_down._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @wm2000_power_down._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @wm2000_power_down._entry.93, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/wm2000.c", i32 256, i32 3}
!188 = !{ptr @wm2000_power_down._entry_ptr.94, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.95, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/wm2000.c", i32 262, i32 2}
!191 = !{ptr @wm2000_power_down.__UNIQUE_ID_ddebug301, !190, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/wm2000.c", i32 332, i32 3}
!194 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @wm2000_exit_bypass._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @wm2000_exit_bypass._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/wm2000.c", i32 337, i32 2}
!199 = !{ptr @wm2000_exit_bypass.__UNIQUE_ID_ddebug303, !198, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/wm2000.c", i32 413, i32 3}
!202 = !{ptr @wm2000_exit_standby._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @wm2000_exit_standby._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @wm2000_exit_standby.__UNIQUE_ID_ddebug306, !205, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/wm2000.c", i32 418, i32 2}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/wm2000.c", i32 420, i32 3}
!208 = !{ptr @wm2000_exit_standby.__UNIQUE_ID_ddebug307, !207, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/wm2000.c", i32 698, i32 1}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/wm2000.c", i32 699, i32 1}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/wm2000.c", i32 701, i32 1}
!215 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/wm2000.c", i32 702, i32 1}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/wm2000.c", i32 704, i32 1}
!219 = !{ptr @wm2000_dapm_widgets, !220, !"wm2000_dapm_widgets", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/wm2000.c", i32 696, i32 41}
!221 = !{ptr @wm2000_audio_map, !222, !"wm2000_audio_map", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/wm2000.c", i32 710, i32 40}
!223 = !{ptr @wm2000_i2c_id, !224, !"wm2000_i2c_id", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/wm2000.c", i32 934, i32 35}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 1, !"min_enum_size", i32 4}
!227 = !{i32 8, !"branch-target-enforcement", i32 0}
!228 = !{i32 8, !"sign-return-address", i32 0}
!229 = !{i32 8, !"sign-return-address-all", i32 0}
!230 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!231 = !{i32 7, !"uwtable", i32 1}
!232 = !{i32 7, !"frame-pointer", i32 2}
!233 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!234 = !{!"auto-init"}
!235 = !{i64 2148974791, i64 2148974796, i64 2148974809, i64 2148974853, i64 2148974887, i64 2148974908}
!236 = !{!"branch_weights", i32 2000, i32 1}
