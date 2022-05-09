; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cs53l30.c_pt.bc'
source_filename = "../sound/soc/codecs/cs53l30.c"
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
%struct.cs53l30_mclkx_div = type { i32, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.cs53l30_mclk_div = type { i32, i32, i8, i8, i8 }
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
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.cs53l30_private = type { [2 x %struct.regulator_bulk_data], ptr, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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

@__initcall__kmod_snd_soc_cs53l30__296_1132_cs53l30_i2c_driver_init6 = internal global ptr @cs53l30_i2c_driver_init, section ".initcall6.init", align 4
@cs53l30_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cs53l30_i2c_probe, ptr @cs53l30_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cs53l30_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs53l30_runtime_pm, ptr null, ptr null }, ptr @cs53l30_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cs53l30_i2c_driver_exit = internal global ptr @cs53l30_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [48 x i8] c"snd_soc_cs53l30.description=ASoC CS53L30 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [85 x i8] c"snd_soc_cs53l30.author=Paul Handrigan, Cirrus Logic Inc, <Paul.Handrigan@cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [54 x i8] c"snd_soc_cs53l30.file=sound/soc/codecs/snd-soc-cs53l30\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [28 x i8] c"snd_soc_cs53l30.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cs53l30\00", [24 x i8] zeroinitializer }, align 32
@cs53l30_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs53l30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cs53l30_runtime_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs53l30_runtime_suspend, ptr @cs53l30_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cs53l30_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cs53l30\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 941, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get supplies: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs53l30_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/cs53l30.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._entry_ptr = internal global ptr @cs53l30_i2c_probe._entry, section ".printk_index", align 4
@cs53l30_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 948, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._entry_ptr.8 = internal global ptr @cs53l30_i2c_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cs53l30_regmap = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @cs53l30_writeable_register, ptr @cs53l30_readable_register, ptr @cs53l30_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 54, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs53l30_reg_defaults, i32 43, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cs53l30:966:(&cs53l30_regmap)->lock\00", [60 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 969, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._entry_ptr.13 = internal global ptr @cs53l30_i2c_probe._entry.11, section ".printk_index", align 4
@cs53l30_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 977, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read device ID: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._entry_ptr.16 = internal global ptr @cs53l30_i2c_probe._entry.14, section ".printk_index", align 4
@cs53l30_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 984, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Device ID (%X). Expected %X\0A\00", [35 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._entry_ptr.19 = internal global ptr @cs53l30_i2c_probe._entry.17, section ".printk_index", align 4
@cs53l30_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 990, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get Revision ID: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._entry_ptr.22 = internal global ptr @cs53l30_i2c_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mute\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cirrus,micbias-lvl\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cirrus,use-sdout2\00", [46 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1030, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cirrus Logic CS53L30, Revision: %02X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._entry_ptr.30 = internal global ptr @cs53l30_i2c_probe._entry.27, section ".printk_index", align 4
@cs53l30_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @cs53l30_snd_controls, i32 37, ptr @cs53l30_dapm_widgets, i32 18, ptr @cs53l30_dapm_routes, i32 14, ptr @cs53l30_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs53l30_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cs53l30_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs53l30_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.156, i64 68719476804, i32 -2147483394, i32 0, i32 0, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 1034, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register component: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cs53l30_i2c_probe._entry_ptr.33 = internal global ptr @cs53l30_i2c_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VA\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VP\00", [29 x i8] zeroinitializer }, align 32
@cs53l30_reg_defaults = internal constant { [43 x %struct.reg_default], [72 x i8] } { [43 x %struct.reg_default] [%struct.reg_default { i32 6, i32 16 }, %struct.reg_default { i32 7, i32 4 }, %struct.reg_default { i32 8, i32 28 }, %struct.reg_default { i32 10, i32 244 }, %struct.reg_default { i32 12, i32 12 }, %struct.reg_default { i32 13, i32 128 }, %struct.reg_default { i32 14, i32 47 }, %struct.reg_default { i32 15, i32 47 }, %struct.reg_default { i32 16, i32 47 }, %struct.reg_default { i32 17, i32 47 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 128 }, %struct.reg_default { i32 33, i32 170 }, %struct.reg_default { i32 34, i32 170 }, %struct.reg_default { i32 35, i32 168 }, %struct.reg_default { i32 36, i32 236 }, %struct.reg_default { i32 37, i32 4 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 8 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 4 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 8 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 255 }], [72 x i8] zeroinitializer }, align 32
@cs53l30_snd_controls = internal constant { [37 x %struct.snd_kcontrol_new], [432 x i8] } { [37 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_ng_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_ng_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @pga_preamp_tlv }, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @pga_preamp_tlv }, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @input1_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @input2_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adc1_hpf_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adc2_hpf_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adc1_ng_thres_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adc2_ng_thres_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adc1_ng_delay_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adc2_ng_delay_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @dig_tlv }, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @dig_tlv }, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @dig_tlv }, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @dig_tlv }, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }], [432 x i8] zeroinitializer }, align 32
@cs53l30_dapm_routes = internal constant { [14 x %struct.snd_soc_dapm_route], [168 x i8] } { [14 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.151, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.154, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.152, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.155, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }], [168 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Digital Soft-Ramp Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADC1 Noise Gate Ganging Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADC2 Noise Gate Ganging Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADC1A Noise Gate Enable Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADC1B Noise Gate Enable Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADC2A Noise Gate Enable Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 48, i32 48, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADC2B Noise Gate Enable Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 48, i32 48, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADC1 Notch Filter Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADC2 Notch Filter Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC1A Invert Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC1B Invert Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC2A Invert Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC2B Invert Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ADC1A Digital Boost Volume\00", [37 x i8] zeroinitializer }, align 32
@adc_boost_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 2000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ADC1B Digital Boost Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ADC2A Digital Boost Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ADC2B Digital Boost Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC1 NG Boost Volume\00", [43 x i8] zeroinitializer }, align 32
@adc_ng_boost_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 3000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC2 NG Boost Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 48, i32 48, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADC1 Preamplifier Volume\00", [39 x i8] zeroinitializer }, align 32
@pga_preamp_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 10000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 41, i32 42, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADC2 Preamplifier Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 49, i32 50, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Input 1 Channel Select\00", [41 x i8] zeroinitializer }, align 32
@input1_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 0, i8 0, i32 7, i32 255, ptr @input1_sel_text, ptr @input1_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Input 2 Channel Select\00", [41 x i8] zeroinitializer }, align 32
@input2_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 0, i8 0, i32 7, i32 255, ptr @input2_sel_text, ptr @input2_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC1 HPF Select\00", [16 x i8] zeroinitializer }, align 32
@adc1_hpf_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 1, i8 1, i32 4, i32 3, ptr @hpf_corner_freq_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC2 HPF Select\00", [16 x i8] zeroinitializer }, align 32
@adc2_hpf_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 1, i8 1, i32 4, i32 3, ptr @hpf_corner_freq_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC1 NG Threshold\00", [46 x i8] zeroinitializer }, align 32
@adc1_ng_thres_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 2, i8 2, i32 8, i32 7, ptr @cs53l30_ng_thres_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC2 NG Threshold\00", [46 x i8] zeroinitializer }, align 32
@adc2_ng_thres_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 48, i8 2, i8 2, i32 8, i32 7, ptr @cs53l30_ng_thres_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC1 NG Delay\00", [18 x i8] zeroinitializer }, align 32
@adc1_ng_delay_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 0, i8 0, i32 4, i32 3, ptr @cs53l30_ng_delay_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC2 NG Delay\00", [18 x i8] zeroinitializer }, align 32
@adc2_ng_delay_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 48, i8 0, i8 0, i32 4, i32 3, ptr @cs53l30_ng_delay_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC1A PGA Volume\00", [47 x i8] zeroinitializer }, align 32
@pga_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 52, i32 24, i32 0, i32 41, i32 41, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC1B PGA Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 52, i32 24, i32 0, i32 42, i32 42, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC2A PGA Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 52, i32 24, i32 0, i32 49, i32 49, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC2B PGA Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 52, i32 24, i32 0, i32 50, i32 50, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC1A Digital Volume\00", [43 x i8] zeroinitializer }, align 32
@dig_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9600, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 160, i32 12, i32 0, i32 43, i32 43, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC1B Digital Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 160, i32 12, i32 0, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC2A Digital Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 160, i32 12, i32 0, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC2B Digital Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 160, i32 12, i32 0, i32 52, i32 52, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@input1_sel_text = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], [36 x i8] zeroinitializer }, align 32
@input1_sel_values = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 129, i32 65, i32 4, i32 132, i32 68, i32 196], [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DMIC1 On AB In\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMIC1 On A In\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMIC1 On B In\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC1 On AB In\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC1 On A In\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC1 On B In\00", [19 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMIC1 Off ADC1 Off\00", [45 x i8] zeroinitializer }, align 32
@input2_sel_text = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114], [36 x i8] zeroinitializer }, align 32
@input2_sel_values = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 128, i32 64, i32 4, i32 132, i32 68, i32 196], [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DMIC2 On AB In\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMIC2 On A In\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMIC2 On B In\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC2 On AB In\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC2 On A In\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC2 On B In\00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMIC2 Off ADC2 Off\00", [45 x i8] zeroinitializer }, align 32
@hpf_corner_freq_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.86Hz\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"120Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"235Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"466Hz\00", [26 x i8] zeroinitializer }, align 32
@cs53l30_ng_thres_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"-64dB/-34dB\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"-66dB/-36dB\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"-70dB/-40dB\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"-73dB/-43dB\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"-76dB/-46dB\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"-82dB/-52dB\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-58dB\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-64dB\00", [26 x i8] zeroinitializer }, align 32
@cs53l30_ng_delay_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TB*50ms\00", [24 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TB*100ms\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TB*150ms\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TB*200ms\00", [23 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IN1_DMIC1\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN2\00", [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IN3_DMIC2\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN4\00", [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIC1 Bias\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIC2 Bias\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIC3 Bias\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIC4 Bias\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ASP_SDOUT1\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ASP_SDOUT2\00", [21 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Input Mux 1\00", [20 x i8] zeroinitializer }, align 32
@input1_route_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @input1_route_sel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Input Mux 2\00", [20 x i8] zeroinitializer }, align 32
@input2_route_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @input2_route_sel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC1A\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC1B\00", [26 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC2A\00", [26 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC2B\00", [26 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@cs53l30_dapm_widgets = internal constant { [18 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [824 x i8] } { [18 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 24, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @input1_route_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @input2_route_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 45, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 45, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 45, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [824 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Input 1 Route\00", [18 x i8] zeroinitializer }, align 32
@input1_route_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 0, i8 0, i32 2, i32 1, ptr @input1_route_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@input1_route_sel_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.151, ptr @.str.152], [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC1_SEL\00", [23 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC1_SEL\00", [22 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Input 2 Route\00", [18 x i8] zeroinitializer }, align 32
@input2_route_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 0, i8 0, i32 2, i32 1, ptr @input2_route_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@input2_route_sel_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.154, ptr @.str.155], [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC2_SEL\00", [23 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC2_SEL\00", [22 x i8] zeroinitializer }, align 32
@cs53l30_dapm_routes_sdout2 = internal constant { [8 x %struct.snd_soc_dapm_route], [96 x i8] } { [8 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }], [96 x i8] zeroinitializer }, align 32
@cs53l30_dapm_routes_sdout1 = internal constant { [7 x %struct.snd_soc_dapm_route], [84 x i8] } { [7 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }], [84 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@cs53l30_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.3, i32 671, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable MCLK: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs53l30_set_bias_level\00", [41 x i8] zeroinitializer }, align 32
@cs53l30_set_bias_level._entry_ptr = internal global ptr @cs53l30_set_bias_level._entry, section ".printk_index", align 4
@cs53l30_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cs53l30_set_sysclk, ptr null, ptr null, ptr null, ptr @cs53l30_set_dai_fmt, ptr null, ptr @cs53l30_set_dai_tdm_slot, ptr null, ptr null, ptr @cs53l30_set_tristate, ptr null, ptr null, ptr @cs53l30_mute_stream, ptr @cs53l30_pcm_startup, ptr null, ptr @cs53l30_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@cs53l30_mclkx_coeffs = internal constant { [7 x %struct.cs53l30_mclkx_div], [40 x i8] } { [7 x %struct.cs53l30_mclkx_div] [%struct.cs53l30_mclkx_div { i32 5644800, i8 1, i8 0 }, %struct.cs53l30_mclkx_div { i32 6000000, i8 1, i8 0 }, %struct.cs53l30_mclkx_div { i32 6144000, i8 1, i8 0 }, %struct.cs53l30_mclkx_div { i32 11289600, i8 2, i8 4 }, %struct.cs53l30_mclkx_div { i32 12288000, i8 2, i8 4 }, %struct.cs53l30_mclkx_div { i32 12000000, i8 2, i8 4 }, %struct.cs53l30_mclkx_div { i32 19200000, i8 3, i8 8 }], [40 x i8] zeroinitializer }, align 32
@__const.cs53l30_set_dai_tdm_slot.loc = private unnamed_addr constant [4 x i32] [i32 48, i32 48, i32 48, i32 48], align 4
@cs53l30_set_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.3, i32 777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx masks must not be 0\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cs53l30_set_dai_tdm_slot\00", [39 x i8] zeroinitializer }, align 32
@cs53l30_set_dai_tdm_slot._entry_ptr = internal global ptr @cs53l30_set_dai_tdm_slot._entry, section ".printk_index", align 4
@cs53l30_set_dai_tdm_slot._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.3, i32 783, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid slot number or slot width\0A\00", [61 x i8] zeroinitializer }, align 32
@cs53l30_set_dai_tdm_slot._entry_ptr.163 = internal global ptr @cs53l30_set_dai_tdm_slot._entry.161, section ".printk_index", align 4
@cs53l30_set_dai_tdm_slot._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.160, ptr @.str.3, i32 788, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"slot width must count in byte\0A\00", [33 x i8] zeroinitializer }, align 32
@cs53l30_set_dai_tdm_slot._entry_ptr.166 = internal global ptr @cs53l30_set_dai_tdm_slot._entry.164, section ".printk_index", align 4
@cs53l30_set_dai_tdm_slot._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.160, ptr @.str.3, i32 809, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rx_mask exceeds max slot number: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cs53l30_set_dai_tdm_slot._entry_ptr.169 = internal global ptr @cs53l30_set_dai_tdm_slot._entry.167, section ".printk_index", align 4
@cs53l30_set_dai_tdm_slot._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.160, ptr @.str.3, i32 817, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"slot selection out of bounds: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@cs53l30_set_dai_tdm_slot._entry_ptr.172 = internal global ptr @cs53l30_set_dai_tdm_slot._entry.170, section ".printk_index", align 4
@cs53l30_set_dai_tdm_slot.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.173, ptr @.str.160, ptr @.str.3, ptr @.str.174, i8 0, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_cs53l30\00", [16 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"loc[%d]=%x\0A\00", [20 x i8] zeroinitializer }, align 32
@cs53l30_set_dai_tdm_slot.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.173, ptr @.str.160, ptr @.str.3, ptr @.str.175, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"en_reg=%x, tx_enable=%llx\0A\00", [37 x i8] zeroinitializer }, align 32
@src_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @cs53l30_src_rates, i32 9, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cs53l30_src_rates = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8000, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000], [60 x i8] zeroinitializer }, align 32
@cs53l30_mclk_coeffs = internal constant { [30 x %struct.cs53l30_mclk_div], [88 x i8] } { [30 x %struct.cs53l30_mclk_div] [%struct.cs53l30_mclk_div { i32 5644800, i32 11025, i8 4, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 5644800, i32 22050, i8 8, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 5644800, i32 44100, i8 12, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6000000, i32 8000, i8 1, i8 0, i8 64 }, %struct.cs53l30_mclk_div { i32 6000000, i32 11025, i8 2, i8 0, i8 64 }, %struct.cs53l30_mclk_div { i32 6000000, i32 12000, i8 4, i8 0, i8 64 }, %struct.cs53l30_mclk_div { i32 6000000, i32 16000, i8 5, i8 0, i8 64 }, %struct.cs53l30_mclk_div { i32 6000000, i32 22050, i8 6, i8 0, i8 64 }, %struct.cs53l30_mclk_div { i32 6000000, i32 24000, i8 8, i8 0, i8 64 }, %struct.cs53l30_mclk_div { i32 6000000, i32 32000, i8 9, i8 0, i8 64 }, %struct.cs53l30_mclk_div { i32 6000000, i32 44100, i8 10, i8 0, i8 64 }, %struct.cs53l30_mclk_div { i32 6000000, i32 48000, i8 12, i8 0, i8 64 }, %struct.cs53l30_mclk_div { i32 6144000, i32 8000, i8 1, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6144000, i32 11025, i8 2, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6144000, i32 12000, i8 4, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6144000, i32 16000, i8 5, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6144000, i32 22050, i8 6, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6144000, i32 24000, i8 8, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6144000, i32 32000, i8 9, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6144000, i32 44100, i8 10, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6144000, i32 48000, i8 12, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6400000, i32 8000, i8 1, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6400000, i32 11025, i8 2, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6400000, i32 12000, i8 4, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6400000, i32 16000, i8 5, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6400000, i32 22050, i8 6, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6400000, i32 24000, i8 8, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6400000, i32 32000, i8 9, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6400000, i32 44100, i8 10, i8 16, i8 64 }, %struct.cs53l30_mclk_div { i32 6400000, i32 48000, i8 12, i8 16, i8 64 }], [88 x i8] zeroinitializer }, align 32
@cs53l30_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.176, ptr @.str.3, i32 1085, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs53l30_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@cs53l30_runtime_resume._entry_ptr = internal global ptr @cs53l30_runtime_resume._entry, section ".printk_index", align 4
@cs53l30_runtime_resume._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.3, i32 1094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to synchronize regcache: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs53l30_runtime_resume._entry_ptr.179 = internal global ptr @cs53l30_runtime_resume._entry.177, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 54]
@__sancov_gen_cov_switch_values.180 = internal global [49 x i64] [i64 47, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 10, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 26, i64 27, i64 28, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.182 = internal global [9 x i64] [i64 7, i64 32, i64 5644800, i64 6000000, i64 6144000, i64 11289600, i64 12000000, i64 12288000, i64 19200000]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 768, i64 1024]
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"cs53l30_i2c_driver\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1121, i32 26 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1123, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"cs53l30_of_match\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1107, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant [19 x i8] c"cs53l30_runtime_pm\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1102, i32 32 }
@___asan_gen_.198 = private unnamed_addr constant [11 x i8] c"cs53l30_id\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1114, i32 35 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 941, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 948, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 953, i32 53 }
@___asan_gen_.228 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"cs53l30_regmap\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 905, i32 29 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 966, i32 20 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 969, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 977, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 983, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 990, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 995, i32 36 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1006, i32 52 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1023, i32 31 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1027, i32 32 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1030, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [15 x i8] c"cs53l30_driver\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 891, i32 46 }
@___asan_gen_.285 = private unnamed_addr constant [12 x i8] c"cs53l30_dai\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 863, i32 34 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1034, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 27, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 28, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [21 x i8] c"cs53l30_reg_defaults\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 41, i32 33 }
@___asan_gen_.303 = private unnamed_addr constant [21 x i8] c"cs53l30_snd_controls\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 292, i32 38 }
@___asan_gen_.306 = private unnamed_addr constant [20 x i8] c"cs53l30_dapm_routes\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 407, i32 40 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 293, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 295, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 297, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 299, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 301, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 303, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 305, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 307, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 309, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 311, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 313, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 315, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 317, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 320, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [14 x i8] c"adc_boost_tlv\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 165, i32 8 }
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 322, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 324, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 326, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 328, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [17 x i8] c"adc_ng_boost_tlv\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 166, i32 8 }
@___asan_gen_.386 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 330, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 333, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [15 x i8] c"pga_preamp_tlv\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 169, i32 8 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 336, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 340, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [16 x i8] c"input1_sel_enum\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 220, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 341, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [16 x i8] c"input2_sel_enum\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 237, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 343, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [14 x i8] c"adc1_hpf_enum\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 284, i32 30 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 344, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [14 x i8] c"adc2_hpf_enum\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 288, i32 30 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 345, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant [19 x i8] c"adc1_ng_thres_enum\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 269, i32 30 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 346, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [19 x i8] c"adc2_ng_thres_enum\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 274, i32 30 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 347, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [19 x i8] c"adc1_ng_delay_enum\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 253, i32 30 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 348, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [19 x i8] c"adc2_ng_delay_enum\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 258, i32 30 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 350, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [8 x i8] c"pga_tlv\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 167, i32 8 }
@___asan_gen_.456 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 352, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 354, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 356, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 359, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [8 x i8] c"dig_tlv\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 168, i32 8 }
@___asan_gen_.475 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 361, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 363, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 365, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [16 x i8] c"input1_sel_text\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 171, i32 27 }
@___asan_gen_.491 = private unnamed_addr constant [18 x i8] c"input1_sel_values\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 181, i32 27 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 172, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 173, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 174, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 175, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 176, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 177, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 178, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant [16 x i8] c"input2_sel_text\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 191, i32 27 }
@___asan_gen_.518 = private unnamed_addr constant [18 x i8] c"input2_sel_values\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 201, i32 27 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 192, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 193, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 194, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 195, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 196, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 197, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 198, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [21 x i8] c"hpf_corner_freq_text\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 280, i32 27 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 281, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 281, i32 12 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 281, i32 21 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 281, i32 30 }
@___asan_gen_.557 = private unnamed_addr constant [22 x i8] c"cs53l30_ng_thres_text\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 264, i32 27 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 265, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 265, i32 17 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 265, i32 32 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 265, i32 47 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 266, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 266, i32 17 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 266, i32 32 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 266, i32 41 }
@___asan_gen_.584 = private unnamed_addr constant [22 x i8] c"cs53l30_ng_delay_text\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 249, i32 27 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 250, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 250, i32 13 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 250, i32 25 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 250, i32 37 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 370, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 371, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 372, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 373, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 374, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 376, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 378, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 380, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 383, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 385, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 388, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant [21 x i8] c"input1_route_sel_mux\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 224, i32 38 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 390, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant [21 x i8] c"input2_route_sel_mux\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 241, i32 38 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 393, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 395, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 397, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 399, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 401, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 403, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant [21 x i8] c"cs53l30_dapm_widgets\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 369, i32 41 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 225, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant [22 x i8] c"input1_route_sel_enum\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 215, i32 30 }
@___asan_gen_.668 = private unnamed_addr constant [22 x i8] c"input1_route_sel_text\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 211, i32 27 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 212, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 212, i32 14 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 242, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant [22 x i8] c"input2_route_sel_enum\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 232, i32 30 }
@___asan_gen_.683 = private unnamed_addr constant [22 x i8] c"input2_route_sel_text\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 227, i32 27 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 228, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 228, i32 14 }
@___asan_gen_.692 = private unnamed_addr constant [27 x i8] c"cs53l30_dapm_routes_sdout2\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 444, i32 40 }
@___asan_gen_.695 = private unnamed_addr constant [27 x i8] c"cs53l30_dapm_routes_sdout1\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 431, i32 40 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 454, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 670, i32 5 }
@___asan_gen_.710 = private unnamed_addr constant [12 x i8] c"cs53l30_ops\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 853, i32 37 }
@___asan_gen_.713 = private unnamed_addr constant [21 x i8] c"cs53l30_mclkx_coeffs\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 511, i32 39 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 777, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 783, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 788, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 808, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 816, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 824, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 831, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant [16 x i8] c"src_constraints\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 747, i32 48 }
@___asan_gen_.761 = private unnamed_addr constant [18 x i8] c"cs53l30_src_rates\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 743, i32 27 }
@___asan_gen_.764 = private unnamed_addr constant [20 x i8] c"cs53l30_mclk_coeffs\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 466, i32 38 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1085, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.776 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.777 = private constant [30 x i8] c"../sound/soc/codecs/cs53l30.c\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.777, i32 1094, i32 3 }
@llvm.compiler.used = appending global [240 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_cs53l30_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_cs53l30__296_1132_cs53l30_i2c_driver_init6, ptr @cs53l30_i2c_driver_exit, ptr @cs53l30_i2c_probe._entry, ptr @cs53l30_i2c_probe._entry.11, ptr @cs53l30_i2c_probe._entry.14, ptr @cs53l30_i2c_probe._entry.17, ptr @cs53l30_i2c_probe._entry.20, ptr @cs53l30_i2c_probe._entry.27, ptr @cs53l30_i2c_probe._entry.31, ptr @cs53l30_i2c_probe._entry.6, ptr @cs53l30_i2c_probe._entry_ptr, ptr @cs53l30_i2c_probe._entry_ptr.13, ptr @cs53l30_i2c_probe._entry_ptr.16, ptr @cs53l30_i2c_probe._entry_ptr.19, ptr @cs53l30_i2c_probe._entry_ptr.22, ptr @cs53l30_i2c_probe._entry_ptr.30, ptr @cs53l30_i2c_probe._entry_ptr.33, ptr @cs53l30_i2c_probe._entry_ptr.8, ptr @cs53l30_runtime_resume._entry, ptr @cs53l30_runtime_resume._entry.177, ptr @cs53l30_runtime_resume._entry_ptr, ptr @cs53l30_runtime_resume._entry_ptr.179, ptr @cs53l30_set_bias_level._entry, ptr @cs53l30_set_bias_level._entry_ptr, ptr @cs53l30_set_dai_tdm_slot._entry, ptr @cs53l30_set_dai_tdm_slot._entry.161, ptr @cs53l30_set_dai_tdm_slot._entry.164, ptr @cs53l30_set_dai_tdm_slot._entry.167, ptr @cs53l30_set_dai_tdm_slot._entry.170, ptr @cs53l30_set_dai_tdm_slot._entry_ptr, ptr @cs53l30_set_dai_tdm_slot._entry_ptr.163, ptr @cs53l30_set_dai_tdm_slot._entry_ptr.166, ptr @cs53l30_set_dai_tdm_slot._entry_ptr.169, ptr @cs53l30_set_dai_tdm_slot._entry_ptr.172, ptr @cs53l30_i2c_driver, ptr @.str, ptr @cs53l30_of_match, ptr @cs53l30_runtime_pm, ptr @cs53l30_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @cs53l30_i2c_probe._key, ptr @cs53l30_regmap, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @cs53l30_driver, ptr @cs53l30_dai, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @cs53l30_reg_defaults, ptr @cs53l30_snd_controls, ptr @cs53l30_dapm_routes, ptr @.str.36, ptr @.compoundliteral, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @adc_boost_tlv, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @adc_ng_boost_tlv, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @pga_preamp_tlv, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @input1_sel_enum, ptr @.str.78, ptr @input2_sel_enum, ptr @.str.79, ptr @adc1_hpf_enum, ptr @.str.80, ptr @adc2_hpf_enum, ptr @.str.81, ptr @adc1_ng_thres_enum, ptr @.str.82, ptr @adc2_ng_thres_enum, ptr @.str.83, ptr @adc1_ng_delay_enum, ptr @.str.84, ptr @adc2_ng_delay_enum, ptr @.str.85, ptr @pga_tlv, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @dig_tlv, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @input1_sel_text, ptr @input1_sel_values, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @input2_sel_text, ptr @input2_sel_values, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @hpf_corner_freq_text, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @cs53l30_ng_thres_text, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @cs53l30_ng_delay_text, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @input1_route_sel_mux, ptr @.str.142, ptr @input2_route_sel_mux, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @cs53l30_dapm_widgets, ptr @.str.150, ptr @input1_route_sel_enum, ptr @input1_route_sel_text, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @input2_route_sel_enum, ptr @input2_route_sel_text, ptr @.str.154, ptr @.str.155, ptr @cs53l30_dapm_routes_sdout2, ptr @cs53l30_dapm_routes_sdout1, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @cs53l30_ops, ptr @cs53l30_mclkx_coeffs, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @src_constraints, ptr @cs53l30_src_rates, ptr @cs53l30_mclk_coeffs, ptr @.str.176, ptr @.str.178], section "llvm.metadata"
@0 = internal global [217 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_runtime_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_i2c_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_reg_defaults to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_snd_controls to i32), i32 1776, i32 2208, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_dapm_routes to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_ng_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_preamp_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input1_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input2_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc1_hpf_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc2_hpf_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc1_ng_thres_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc2_ng_thres_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc1_ng_delay_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc2_ng_delay_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dig_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input1_sel_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input1_sel_values to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input2_sel_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input2_sel_values to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpf_corner_freq_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_ng_thres_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_ng_delay_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input1_route_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input2_route_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_dapm_widgets to i32), i32 3240, i32 4064, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input1_route_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input1_route_sel_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input2_route_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input2_route_sel_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_dapm_routes_sdout2 to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_dapm_routes_sdout1 to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_mclkx_coeffs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_set_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_set_dai_tdm_slot._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_set_dai_tdm_slot._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_set_dai_tdm_slot._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_set_dai_tdm_slot._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @src_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_src_rates to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_mclk_coeffs to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs53l30_runtime_resume._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cs53l30_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs53l30_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @cs53l30_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %devid.i = alloca [3 x i8], align 1
  %reg = alloca i32, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !390
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val, align 1, !annotation !390
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.34, ptr %call.i, align 4
  %arrayidx3.1 = getelementptr [2 x %struct.regulator_bulk_data], ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.35, ptr %arrayidx3.1, align 4
  %call5 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call5) #10
  br label %cleanup

if.end8:                                          ; preds = %for.body.preheader
  %call11 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end17, label %do.end16

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call11) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %call18 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 3) #7
  %reset_gpio = getelementptr inbounds %struct.cs53l30_private, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call18 to i32
  br label %error_supplies

if.end24:                                         ; preds = %if.end17
  tail call void @gpiod_set_value_cansleep(ptr noundef %call18, i32 noundef 1) #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mclk_rate = getelementptr inbounds %struct.cs53l30_private, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mclk_rate, align 4
  %call26 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @cs53l30_regmap, ptr noundef nonnull @cs53l30_i2c_probe._key, ptr noundef nonnull @.str.10) #7
  %regmap = getelementptr inbounds %struct.cs53l30_private, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call26, ptr %regmap, align 4
  %cmp.i186 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %11) #10
  br label %error

if.end35:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %devid.i) #7
  %12 = ptrtoint ptr %devid.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %devid.i, align 1, !annotation !390
  %13 = getelementptr inbounds [3 x i8], ptr %devid.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %13, align 1, !annotation !390
  %15 = getelementptr inbounds [3 x i8], ptr %devid.i, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %15, align 1, !annotation !390
  %call.i187 = call i32 @regmap_bulk_read(ptr noundef %call26, i32 noundef 1, ptr noundef nonnull %devid.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %cmp.i188 = icmp slt i32 %call.i187, 0
  br i1 %cmp.i188, label %cirrus_read_device_id.exit.thread, label %cirrus_read_device_id.exit

cirrus_read_device_id.exit.thread:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %devid.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call.i187) #10
  br label %error

cirrus_read_device_id.exit:                       ; preds = %if.end35
  %17 = ptrtoint ptr %devid.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %devid.i, align 1
  %conv.i = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %13, align 1
  %conv2.i = zext i8 %20 to i32
  %shl4.i = shl nuw nsw i32 %conv2.i, 4
  %or.i = or i32 %shl4.i, %shl.i
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %15, align 1
  %23 = lshr i8 %22, 4
  %24 = zext i8 %23 to i32
  %or8.i = or i32 %or.i, %24
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %devid.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 342576, i32 %or8.i)
  %cmp44.not = icmp eq i32 %or8.i, 342576
  br i1 %cmp44.not, label %if.end49, label %if.then45

if.then45:                                        ; preds = %cirrus_read_device_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %or8.i, i32 noundef 342576) #10
  br label %error

if.end49:                                         ; preds = %cirrus_read_device_id.exit
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call51 = call i32 @regmap_read(ptr noundef %26, i32 noundef 5, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end56, label %if.end57

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call51) #10
  br label %error

if.end57:                                         ; preds = %if.end49
  %call58 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.23) #7
  %mclk = getelementptr inbounds %struct.cs53l30_private, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call58, ptr %mclk, align 4
  %cmp.i189 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %if.then61, label %if.end57.if.end70_crit_edge

if.end57.if.end70_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then61:                                        ; preds = %if.end57
  %28 = ptrtoint ptr %call58 to i32
  %cmp64.not = icmp eq ptr %call58, inttoptr (i32 -2 to ptr)
  br i1 %cmp64.not, label %if.end68, label %if.then61.error_crit_edge

if.then61.error_crit_edge:                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end68:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %mclk, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %if.end57.if.end70_crit_edge
  %call71 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef 7) #7
  %mute_gpio = getelementptr inbounds %struct.cs53l30_private, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %mute_gpio to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call71, ptr %mute_gpio, align 4
  %cmp.i190 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call71 to i32
  br label %error

if.end77:                                         ; preds = %if.end70
  %tobool79.not = icmp eq ptr %call71, null
  br i1 %tobool79.not, label %if.end77.if.end90_crit_edge, label %if.then80

if.end77.if.end90_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then80:                                        ; preds = %if.end77
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call82 = call i32 @regmap_write(ptr noundef %33, i32 noundef 31, i32 noundef 223) #7
  %34 = ptrtoint ptr %mute_gpio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mute_gpio, align 4
  %call84 = call i32 @gpiod_is_active_low(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then80.if.end90_crit_edge, label %if.then86

if.then80.if.end90_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then86:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call.i191 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 32, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.then80.if.end90_crit_edge, %if.end77.if.end90_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool92.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool92.not, label %if.then93, label %if.end90.if.end96_crit_edge

if.end90.if.end96_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %val, align 1
  %conv = zext i8 %41 to i32
  %call.i192 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 10, i32 noundef 3, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end90.if.end96_crit_edge
  %call.i193 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i193, null
  br i1 %tobool.i.not, label %if.end96.do.end102_crit_edge, label %if.then98

if.end96.do.end102_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end102

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %use_sdout2 = getelementptr inbounds %struct.cs53l30_private, ptr %call.i, i32 0, i32 5
  %42 = ptrtoint ptr %use_sdout2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %use_sdout2, align 4
  br label %do.end102

do.end102:                                        ; preds = %if.then98, %if.end96.do.end102_crit_edge
  %43 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg, align 4
  %and = and i32 %44, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %and) #10
  %call103 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @cs53l30_driver, ptr noundef nonnull @cs53l30_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %do.end102.cleanup_crit_edge, label %do.end108

do.end102.cleanup_crit_edge:                      ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end108:                                        ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call103) #10
  br label %error

error:                                            ; preds = %do.end108, %if.then74, %if.then61.error_crit_edge, %do.end56, %if.then45, %cirrus_read_device_id.exit.thread, %if.then29
  %ret.0 = phi i32 [ %11, %if.then29 ], [ %call.i187, %cirrus_read_device_id.exit.thread ], [ -19, %if.then45 ], [ %call51, %do.end56 ], [ %31, %if.then74 ], [ %call103, %do.end108 ], [ %28, %if.then61.error_crit_edge ]
  %45 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %46, i32 noundef 0) #7
  br label %error_supplies

error_supplies:                                   ; preds = %error, %if.then21
  %ret.1 = phi i32 [ %7, %if.then21 ], [ %ret.0, %error ]
  %call113 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error_supplies, %do.end102.cleanup_crit_edge, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call11, %do.end16 ], [ %ret.1, %error_supplies ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end102.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio = getelementptr inbounds %struct.cs53l30_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #7
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_is_active_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs53l30_writeable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 5, label %entry.return_crit_edge3
    i32 54, label %entry.return_crit_edge4
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4
  %retval.0 = phi i1 [ true, %sw.default ], [ false, %entry.return_crit_edge ], [ false, %entry.return_crit_edge1 ], [ false, %entry.return_crit_edge2 ], [ false, %entry.return_crit_edge3 ], [ false, %entry.return_crit_edge4 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs53l30_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 5, label %entry.return_crit_edge3
    i32 6, label %entry.return_crit_edge4
    i32 7, label %entry.return_crit_edge5
    i32 8, label %entry.return_crit_edge6
    i32 10, label %entry.return_crit_edge7
    i32 12, label %entry.return_crit_edge8
    i32 13, label %entry.return_crit_edge9
    i32 14, label %entry.return_crit_edge10
    i32 15, label %entry.return_crit_edge11
    i32 16, label %entry.return_crit_edge12
    i32 17, label %entry.return_crit_edge13
    i32 18, label %entry.return_crit_edge14
    i32 19, label %entry.return_crit_edge15
    i32 20, label %entry.return_crit_edge16
    i32 21, label %entry.return_crit_edge17
    i32 22, label %entry.return_crit_edge18
    i32 23, label %entry.return_crit_edge19
    i32 24, label %entry.return_crit_edge20
    i32 26, label %entry.return_crit_edge21
    i32 27, label %entry.return_crit_edge22
    i32 28, label %entry.return_crit_edge23
    i32 31, label %entry.return_crit_edge24
    i32 32, label %entry.return_crit_edge25
    i32 33, label %entry.return_crit_edge26
    i32 34, label %entry.return_crit_edge27
    i32 35, label %entry.return_crit_edge28
    i32 36, label %entry.return_crit_edge29
    i32 37, label %entry.return_crit_edge30
    i32 38, label %entry.return_crit_edge31
    i32 39, label %entry.return_crit_edge32
    i32 40, label %entry.return_crit_edge33
    i32 41, label %entry.return_crit_edge34
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
  ]

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs53l30_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %reg)
  %cmp = icmp eq i32 %reg, 54
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_component_probe(ptr noundef %component) #2 align 64 {
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
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %use_sdout2 = getelementptr inbounds %struct.cs53l30_private, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %use_sdout2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_sdout2, align 4, !range !391
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @cs53l30_dapm_routes_sdout2, i32 noundef 8) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @cs53l30_dapm_routes_sdout1, i32 noundef 7) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  %reg = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !390
  %5 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb17
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.cs53l30_private, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 6, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %10 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.bb3
  %mclk = getelementptr inbounds %struct.cs53l30_private, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mclk, align 4
  %call.i77 = tail call i32 @clk_prepare(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.do.end_crit_edge

if.then6.do.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.then6
  %call1.i = tail call i32 @clk_enable(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end9, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then6.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i77, %if.then6.do.end_crit_edge ]
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.157, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap10 = getelementptr inbounds %struct.cs53l30_private, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap10, align 4
  %call.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 7, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %18 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap10, align 4
  %call.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 6, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @msleep(i32 noundef 50) #7
  br label %cleanup

if.else:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %regmap14 = getelementptr inbounds %struct.cs53l30_private, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %regmap14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap14, align 4
  %call.i80 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 6, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %regmap18 = getelementptr inbounds %struct.cs53l30_private, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap18, align 4
  %call.i81 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 53, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %24 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap18, align 4
  %call21 = call i32 @regmap_read(ptr noundef %25, i32 noundef 26, ptr noundef nonnull %reg) #7
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg, align 4
  %and = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %. = select i1 %tobool22.not, i32 10, i32 90
  %28 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap18, align 4
  %call.i82 = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 6, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @msleep(i32 noundef 20) #7
  %30 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap18, align 4
  %call29 = call i32 @regmap_read(ptr noundef %31, i32 noundef 54, ptr noundef nonnull %reg) #7
  br label %if.else39

if.else39:                                        ; preds = %if.else39.if.else39_crit_edge, %sw.bb17
  %i.088 = phi i32 [ 0, %sw.bb17 ], [ %inc, %if.else39.if.else39_crit_edge ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10100, i32 noundef 2) #7
  %32 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap18, align 4
  %call41 = call i32 @regmap_read(ptr noundef %33, i32 noundef 54, ptr noundef nonnull %reg) #7
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg, align 4
  %and42 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp ne i32 %and42, 0
  %inc = add nuw nsw i32 %i.088, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %.)
  %exitcond.not = icmp eq i32 %inc, %.
  %or.cond = select i1 %tobool43.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %if.else39.if.else39_crit_edge

if.else39.if.else39_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else39

for.end:                                          ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap18, align 4
  %call.i83 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 53, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %38 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap18, align 4
  %call.i84 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 7, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %mclk51 = getelementptr inbounds %struct.cs53l30_private, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %mclk51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mclk51, align 4
  call void @clk_disable(ptr noundef %41) #7
  call void @clk_unprepare(ptr noundef %41) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else, %if.end9, %do.end, %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end9 ], [ 0, %if.else ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
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
declare dso_local i32 @snd_soc_info_volsw_sx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_sx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_sx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %6 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %freq, label %entry.cleanup_crit_edge [
    i32 5644800, label %entry.if.end_crit_edge
    i32 6000000, label %cleanup.fold.split.i
    i32 6144000, label %cleanup.fold.split7.i
    i32 11289600, label %cleanup.fold.split8.i
    i32 12288000, label %cleanup.fold.split9.i
    i32 12000000, label %cleanup.fold.split10.i
    i32 19200000, label %cleanup.fold.split11.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split7.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split8.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split7.i, %cleanup.fold.split.i, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 6, %cleanup.fold.split11.i ], [ 5, %cleanup.fold.split10.i ], [ 4, %cleanup.fold.split9.i ], [ 3, %cleanup.fold.split8.i ], [ 2, %cleanup.fold.split7.i ], [ 1, %cleanup.fold.split.i ], [ 0, %entry.if.end_crit_edge ]
  %arrayidx = getelementptr [7 x %struct.cs53l30_mclkx_div], ptr @cs53l30_mclkx_coeffs, i32 0, i32 %retval.0.i.ph
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %ratio = getelementptr [7 x %struct.cs53l30_mclkx_div], ptr @cs53l30_mclkx_coeffs, i32 0, i32 %retval.0.i.ph, i32 1
  %9 = ptrtoint ptr %ratio to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ratio, align 4
  %conv = zext i8 %10 to i32
  %div = udiv i32 %8, %conv
  %regmap = getelementptr inbounds %struct.cs53l30_private, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %mclkdiv = getelementptr [7 x %struct.cs53l30_mclkx_div], ptr @cs53l30_mclkx_coeffs, i32 0, i32 %retval.0.i.ph, i32 2
  %13 = ptrtoint ptr %mclkdiv to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mclkdiv, align 1
  %conv4 = zext i8 %14 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 7, i32 noundef 12, i32 noundef %conv4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %mclk_rate6 = getelementptr inbounds %struct.cs53l30_private, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %mclk_rate6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div, ptr %mclk_rate6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.183)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %aspcfg.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ -128, %sw.bb ]
  %and2 = and i32 %fmt, 15
  %8 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %and2, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.epilog.sw.epilog12_crit_edge
    i32 4, label %sw.bb7
  ]

sw.epilog.sw.epilog12_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %sw.bb7, %sw.epilog.sw.epilog12_crit_edge
  %aspctl1.0 = phi i32 [ 16, %sw.bb7 ], [ 128, %sw.epilog.sw.epilog12_crit_edge ]
  %and13 = and i32 %fmt, 3840
  %9 = zext i32 %and13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %and13, label %sw.epilog12.sw.epilog18_crit_edge [
    i32 768, label %sw.epilog12.sw.bb14_crit_edge
    i32 1024, label %sw.epilog12.sw.bb14_crit_edge35
  ]

sw.epilog12.sw.bb14_crit_edge35:                  ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

sw.epilog12.sw.bb14_crit_edge:                    ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

sw.epilog12.sw.epilog18_crit_edge:                ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog18

sw.bb14:                                          ; preds = %sw.epilog12.sw.bb14_crit_edge, %sw.epilog12.sw.bb14_crit_edge35
  %10 = or i8 %aspcfg.0, 16
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.bb14, %sw.epilog12.sw.epilog18_crit_edge
  %aspcfg.1 = phi i8 [ %aspcfg.0, %sw.epilog12.sw.epilog18_crit_edge ], [ %10, %sw.bb14 ]
  %regmap = getelementptr inbounds %struct.cs53l30_private, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %conv19 = zext i8 %aspcfg.1 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 12, i32 noundef 144, i32 noundef %conv19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 13, i32 noundef 144, i32 noundef %aspctl1.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog18, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog18 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_set_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  %loc = alloca [4 x i32], align 4
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %loc) #7
  %6 = call ptr @memcpy(ptr %loc, ptr @__const.cs53l30_set_dai_tdm_slot.loc, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_mask)
  %tobool.not = icmp eq i32 %rx_mask, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.159) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %slots)
  %cmp = icmp slt i32 %slots, 1
  %9 = add i32 %slot_width, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %9)
  %10 = icmp ult i32 %9, -64
  %11 = or i1 %cmp, %10
  br i1 %11, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.162) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %and = and i32 %slot_width, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %for.body.lr.ph, label %do.end14

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %14 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.165) #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end9
  %shr161 = lshr i32 %slot_width, 3
  %shl = shl nuw nsw i32 1, %shr161
  %16 = zext i32 %shl to i64
  %sub = add nsw i64 %16, -1
  %17 = tail call i32 @llvm.cttz.i32(i32 %rx_mask, i1 true) #7, !range !392
  %mul = mul i32 %17, %shr161
  %18 = ptrtoint ptr %loc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %loc, align 4
  %conv21 = zext i32 %mul to i64
  %shl22 = shl i64 %sub, %conv21
  %shl23 = shl nuw i32 1, %17
  %neg = xor i32 %shl23, -1
  %and24 = and i32 %neg, %rx_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool17.not = icmp ne i32 %and24, 0
  br i1 %tobool17.not, label %for.body.1, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %for.body.lr.ph
  %19 = tail call i32 @llvm.cttz.i32(i32 %and24, i1 true) #7, !range !392
  %mul.1 = mul i32 %19, %shr161
  %arrayidx.1 = getelementptr inbounds [4 x i32], ptr %loc, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.1, ptr %arrayidx.1, align 4
  %conv21.1 = zext i32 %mul.1 to i64
  %shl22.1 = shl i64 %sub, %conv21.1
  %or.1 = or i64 %shl22.1, %shl22
  %shl23.1 = shl nuw i32 1, %19
  %neg.1 = xor i32 %shl23.1, -1
  %and24.1 = and i32 %and24, %neg.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.1)
  %tobool17.not.1 = icmp ne i32 %and24.1, 0
  br i1 %tobool17.not.1, label %for.body.2, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %21 = tail call i32 @llvm.cttz.i32(i32 %and24.1, i1 true) #7, !range !392
  %mul.2 = mul i32 %21, %shr161
  %arrayidx.2 = getelementptr inbounds [4 x i32], ptr %loc, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.2, ptr %arrayidx.2, align 4
  %conv21.2 = zext i32 %mul.2 to i64
  %shl22.2 = shl i64 %sub, %conv21.2
  %or.2 = or i64 %shl22.2, %or.1
  %shl23.2 = shl nuw i32 1, %21
  %neg.2 = xor i32 %shl23.2, -1
  %and24.2 = and i32 %and24.1, %neg.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.2)
  %tobool17.not.2 = icmp ne i32 %and24.2, 0
  br i1 %tobool17.not.2, label %for.body.3, label %for.body.2.for.end_crit_edge

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  %23 = tail call i32 @llvm.cttz.i32(i32 %and24.2, i1 true) #7, !range !392
  %mul.3 = mul i32 %23, %shr161
  %arrayidx.3 = getelementptr inbounds [4 x i32], ptr %loc, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul.3, ptr %arrayidx.3, align 4
  %conv21.3 = zext i32 %mul.3 to i64
  %shl22.3 = shl i64 %sub, %conv21.3
  %or.3 = or i64 %shl22.3, %or.2
  %shl23.3 = shl nuw i32 1, %23
  %neg.3 = xor i32 %shl23.3, -1
  %and24.3 = and i32 %and24.2, %neg.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.3)
  %tobool17.not.3 = icmp ne i32 %and24.3, 0
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge
  %i.0164.lcssa = phi i32 [ 0, %for.body.lr.ph.for.end_crit_edge ], [ 1, %for.body.1.for.end_crit_edge ], [ 2, %for.body.2.for.end_crit_edge ], [ 3, %for.body.3 ]
  %or.lcssa = phi i64 [ %shl22, %for.body.lr.ph.for.end_crit_edge ], [ %or.1, %for.body.1.for.end_crit_edge ], [ %or.2, %for.body.2.for.end_crit_edge ], [ %or.3, %for.body.3 ]
  %cmp26 = phi i1 [ false, %for.body.lr.ph.for.end_crit_edge ], [ false, %for.body.1.for.end_crit_edge ], [ false, %for.body.2.for.end_crit_edge ], [ true, %for.body.3 ]
  %tobool17.not.lcssa = phi i1 [ %tobool17.not, %for.body.lr.ph.for.end_crit_edge ], [ %tobool17.not.1, %for.body.1.for.end_crit_edge ], [ %tobool17.not.2, %for.body.2.for.end_crit_edge ], [ %tobool17.not.3, %for.body.3 ]
  %or.cond154 = and i1 %tobool17.not.lcssa, %cmp26
  br i1 %or.cond154, label %do.end31, label %if.end33

do.end31:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev32 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %25 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.168, i32 noundef 4) #10
  br label %cleanup

if.end33:                                         ; preds = %for.end
  %arrayidx35 = getelementptr [4 x i32], ptr %loc, i32 0, i32 %i.0164.lcssa
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx35, align 4
  %add = add nsw i32 %shr161, -1
  %sub36 = add i32 %add, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %sub36)
  %cmp37 = icmp ugt i32 %sub36, 47
  br i1 %cmp37, label %do.end42, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %if.end33
  %regmap = getelementptr inbounds %struct.cs53l30_private, ptr %5, i32 0, i32 1
  %dev63 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  br label %land.rhs48

do.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %dev43 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %29 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.171, i32 noundef %sub36) #10
  br label %cleanup

land.rhs48:                                       ; preds = %for.inc68.land.rhs48_crit_edge, %for.cond45.preheader
  %i.1168 = phi i32 [ 0, %for.cond45.preheader ], [ %inc69, %for.inc68.land.rhs48_crit_edge ]
  %arrayidx49 = getelementptr [4 x i32], ptr %loc, i32 0, i32 %i.1168
  %31 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %32)
  %cmp50.not = icmp eq i32 %32, 48
  br i1 %cmp50.not, label %land.rhs48.for.end70_crit_edge, label %for.body53

land.rhs48.for.end70_crit_edge:                   ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end70

for.body53:                                       ; preds = %land.rhs48
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %add54 = add nuw nsw i32 %i.1168, 14
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %add54, i32 noundef 63, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs53l30_set_dai_tdm_slot.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs53l30_set_dai_tdm_slot, %if.then62)) #7
          to label %for.inc68 [label %if.then62], !srcloc !393

if.then62:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev63, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs53l30_set_dai_tdm_slot.__UNIQUE_ID_ddebug294, ptr noundef %36, ptr noundef nonnull @.str.174, i32 noundef %i.1168, i32 noundef %32) #7
  br label %for.inc68

for.inc68:                                        ; preds = %if.then62, %for.body53
  %inc69 = add nuw nsw i32 %i.1168, 1
  %exitcond.not = icmp eq i32 %inc69, 4
  br i1 %exitcond.not, label %for.inc68.for.end70_crit_edge, label %for.inc68.land.rhs48_crit_edge

for.inc68.land.rhs48_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs48

for.inc68.for.end70_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end70

for.end70:                                        ; preds = %for.inc68.for.end70_crit_edge, %land.rhs48.for.end70_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.lcssa)
  %tobool75.not170 = icmp eq i64 %or.lcssa, 0
  br i1 %tobool75.not170, label %for.end70.cleanup_crit_edge, label %for.end70.for.body77_crit_edge

for.end70.for.body77_crit_edge:                   ; preds = %for.end70
  br label %for.body77

for.end70.cleanup_crit_edge:                      ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body77:                                       ; preds = %for.inc103.for.body77_crit_edge, %for.end70.for.body77_crit_edge
  %i.2172 = phi i32 [ %inc104, %for.inc103.for.body77_crit_edge ], [ 0, %for.end70.for.body77_crit_edge ]
  %tx_enable.1171 = phi i64 [ %shr83, %for.inc103.for.body77_crit_edge ], [ %or.lcssa, %for.end70.for.body77_crit_edge ]
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %sub79 = sub nuw nsw i32 23, %i.2172
  %39 = trunc i64 %tx_enable.1171 to i32
  %conv81 = and i32 %39, 255
  %call82 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %sub79, i32 noundef %conv81) #7
  %shr83 = lshr i64 %tx_enable.1171, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs53l30_set_dai_tdm_slot.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs53l30_set_dai_tdm_slot, %if.then96)) #7
          to label %for.inc103 [label %if.then96], !srcloc !393

if.then96:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev63, align 4
  %and99 = and i64 %shr83, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs53l30_set_dai_tdm_slot.__UNIQUE_ID_ddebug295, ptr noundef %41, ptr noundef nonnull @.str.175, i32 noundef %sub79, i64 noundef %and99) #7
  br label %for.inc103

for.inc103:                                       ; preds = %if.then96, %for.body77
  %inc104 = add nuw nsw i32 %i.2172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.2172)
  %cmp72 = icmp ugt i32 %i.2172, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %tx_enable.1171)
  %tobool75.not = icmp ult i64 %tx_enable.1171, 256
  %or.cond155 = select i1 %cmp72, i1 true, i1 %tobool75.not
  br i1 %or.cond155, label %for.inc103.cleanup_crit_edge, label %for.inc103.for.body77_crit_edge

for.inc103.for.body77_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body77

for.inc103.cleanup_crit_edge:                     ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc103.cleanup_crit_edge, %for.end70.cleanup_crit_edge, %do.end42, %do.end31, %do.end14, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -22, %do.end14 ], [ -22, %do.end31 ], [ -22, %do.end42 ], [ -22, %do.end ], [ 0, %for.end70.cleanup_crit_edge ], [ 0, %for.inc103.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %loc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_set_tristate(ptr nocapture noundef readonly %dai, i32 noundef %tristate) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tristate)
  %tobool.not = icmp eq i32 %tristate, 0
  %regmap = getelementptr inbounds %struct.cs53l30_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %conv1 = select i1 %tobool.not, i32 0, i32 32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 13, i32 noundef 32, i32 noundef %conv1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_mute_stream(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %stream) #2 align 64 {
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
  %mute_gpio = getelementptr inbounds %struct.cs53l30_private, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mute_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mute_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef %mute) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_pcm_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @src_constraints) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_pcm_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %mclk_rate = getelementptr inbounds %struct.cs53l30_private, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_rate, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.010.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [30 x %struct.cs53l30_mclk_div], ptr @cs53l30_mclk_coeffs, i32 0, i32 %i.010.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp2.i = icmp eq i32 %11, %9
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %srate4.i = getelementptr [30 x %struct.cs53l30_mclk_div], ptr @cs53l30_mclk_coeffs, i32 0, i32 %i.010.i, i32 1
  %12 = ptrtoint ptr %srate4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %srate4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp5.i = icmp eq i32 %13, %7
  br i1 %cmp5.i, label %if.end, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.cs53l30_private, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %internal_fs_ratio = getelementptr [30 x %struct.cs53l30_mclk_div], ptr @cs53l30_mclk_coeffs, i32 0, i32 %i.010.i, i32 3
  %16 = ptrtoint ptr %internal_fs_ratio to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %internal_fs_ratio, align 1
  %conv = zext i8 %17 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 8, i32 noundef 16, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %mclk_int_scale = getelementptr [30 x %struct.cs53l30_mclk_div], ptr @cs53l30_mclk_coeffs, i32 0, i32 %i.010.i, i32 4
  %20 = ptrtoint ptr %mclk_int_scale to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mclk_int_scale, align 2
  %conv6 = zext i8 %21 to i32
  %call.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 7, i32 noundef 64, i32 noundef %conv6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %asp_rate = getelementptr [30 x %struct.cs53l30_mclk_div], ptr @cs53l30_mclk_coeffs, i32 0, i32 %i.010.i, i32 2
  %24 = ptrtoint ptr %asp_rate to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %asp_rate, align 4
  %conv10 = zext i8 %25 to i32
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 12, i32 noundef 15, i32 noundef %conv10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.cs53l30_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #7
  %reset_gpio = getelementptr inbounds %struct.cs53l30_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #7
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs53l30_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset_gpio = getelementptr inbounds %struct.cs53l30_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  %regmap = getelementptr inbounds %struct.cs53l30_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regcache_sync(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.178, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call3, %do.end8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 217)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 217)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !325, !326, !327, !329, !331, !333, !335, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !363, !365, !367, !369, !371, !373, !374, !375, !377, !378, !379}
!llvm.module.flags = !{!381, !382, !383, !384, !385, !386, !387, !388}
!llvm.ident = !{!389}

!0 = !{ptr @__initcall__kmod_snd_soc_cs53l30__296_1132_cs53l30_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_cs53l30__296_1132_cs53l30_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cs53l30.c", i32 1132, i32 1}
!2 = !{ptr @__exitcall_cs53l30_i2c_driver_exit, !1, !"__exitcall_cs53l30_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/cs53l30.c", i32 1134, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/cs53l30.c", i32 1135, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/cs53l30.c", i32 1136, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/cs53l30.c", i32 1123, i32 11}
!12 = !{ptr @cs53l30_i2c_driver, !13, !"cs53l30_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/cs53l30.c", i32 1121, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/cs53l30.c", i32 941, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cs53l30_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cs53l30_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/cs53l30.c", i32 948, i32 3}
!24 = !{ptr @cs53l30_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cs53l30_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/cs53l30.c", i32 953, i32 53}
!28 = !{ptr @cs53l30_i2c_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/cs53l30.c", i32 966, i32 20}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/cs53l30.c", i32 969, i32 3}
!33 = !{ptr @cs53l30_i2c_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cs53l30_i2c_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/cs53l30.c", i32 977, i32 3}
!37 = !{ptr @cs53l30_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cs53l30_i2c_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/cs53l30.c", i32 983, i32 3}
!41 = !{ptr @cs53l30_i2c_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cs53l30_i2c_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/cs53l30.c", i32 990, i32 3}
!45 = !{ptr @cs53l30_i2c_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cs53l30_i2c_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/cs53l30.c", i32 995, i32 36}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/cs53l30.c", i32 1006, i32 52}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/cs53l30.c", i32 1023, i32 31}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/cs53l30.c", i32 1027, i32 32}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/cs53l30.c", i32 1030, i32 2}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @cs53l30_i2c_probe._entry.27, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @cs53l30_i2c_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/cs53l30.c", i32 1034, i32 3}
!62 = !{ptr @cs53l30_i2c_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cs53l30_i2c_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/cs53l30.c", i32 27, i32 2}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/cs53l30.c", i32 28, i32 2}
!68 = distinct !{null, !69, !"cs53l30_supply_names", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/cs53l30.c", i32 26, i32 26}
!70 = !{ptr @cs53l30_regmap, !71, !"cs53l30_regmap", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/cs53l30.c", i32 905, i32 29}
!72 = !{ptr @cs53l30_reg_defaults, !73, !"cs53l30_reg_defaults", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/cs53l30.c", i32 41, i32 33}
!74 = !{ptr @cs53l30_driver, !75, !"cs53l30_driver", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/cs53l30.c", i32 891, i32 46}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/cs53l30.c", i32 293, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/cs53l30.c", i32 295, i32 2}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/cs53l30.c", i32 297, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/cs53l30.c", i32 299, i32 2}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/cs53l30.c", i32 301, i32 2}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/cs53l30.c", i32 303, i32 2}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/cs53l30.c", i32 305, i32 2}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/cs53l30.c", i32 307, i32 2}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/cs53l30.c", i32 309, i32 2}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/cs53l30.c", i32 311, i32 2}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/cs53l30.c", i32 313, i32 2}
!98 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/cs53l30.c", i32 315, i32 2}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/cs53l30.c", i32 317, i32 2}
!102 = !{ptr @.str.61, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/cs53l30.c", i32 320, i32 2}
!104 = !{ptr @.str.63, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/cs53l30.c", i32 322, i32 2}
!106 = !{ptr @.str.65, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/cs53l30.c", i32 324, i32 2}
!108 = !{ptr @.str.67, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/cs53l30.c", i32 326, i32 2}
!110 = !{ptr @.str.69, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/cs53l30.c", i32 328, i32 2}
!112 = !{ptr @.str.71, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/cs53l30.c", i32 330, i32 2}
!114 = !{ptr @.str.73, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/cs53l30.c", i32 333, i32 2}
!116 = !{ptr @.str.75, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/cs53l30.c", i32 336, i32 2}
!118 = !{ptr @.str.77, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/cs53l30.c", i32 340, i32 2}
!120 = !{ptr @.str.78, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/cs53l30.c", i32 341, i32 2}
!122 = !{ptr @.str.79, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/cs53l30.c", i32 343, i32 2}
!124 = !{ptr @.str.80, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/cs53l30.c", i32 344, i32 2}
!126 = !{ptr @.str.81, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/cs53l30.c", i32 345, i32 2}
!128 = !{ptr @.str.82, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/cs53l30.c", i32 346, i32 2}
!130 = !{ptr @.str.83, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/cs53l30.c", i32 347, i32 2}
!132 = !{ptr @.str.84, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/cs53l30.c", i32 348, i32 2}
!134 = !{ptr @.str.85, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/cs53l30.c", i32 350, i32 2}
!136 = !{ptr @.str.87, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/cs53l30.c", i32 352, i32 2}
!138 = !{ptr @.str.89, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/cs53l30.c", i32 354, i32 2}
!140 = !{ptr @.str.91, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/cs53l30.c", i32 356, i32 2}
!142 = !{ptr @.str.93, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/cs53l30.c", i32 359, i32 2}
!144 = !{ptr @.str.95, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/cs53l30.c", i32 361, i32 2}
!146 = !{ptr @.str.97, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/cs53l30.c", i32 363, i32 2}
!148 = !{ptr @.str.99, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/cs53l30.c", i32 365, i32 2}
!150 = !{ptr @cs53l30_snd_controls, !151, !"cs53l30_snd_controls", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/cs53l30.c", i32 292, i32 38}
!152 = !{ptr @adc_boost_tlv, !153, !"adc_boost_tlv", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/cs53l30.c", i32 165, i32 8}
!154 = !{ptr @adc_ng_boost_tlv, !155, !"adc_ng_boost_tlv", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/cs53l30.c", i32 166, i32 8}
!156 = !{ptr @pga_preamp_tlv, !157, !"pga_preamp_tlv", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/cs53l30.c", i32 169, i32 8}
!158 = !{ptr @input1_sel_enum, !159, !"input1_sel_enum", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/cs53l30.c", i32 220, i32 8}
!160 = !{ptr @.str.101, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/cs53l30.c", i32 172, i32 2}
!162 = !{ptr @.str.102, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/cs53l30.c", i32 173, i32 2}
!164 = !{ptr @.str.103, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/cs53l30.c", i32 174, i32 2}
!166 = !{ptr @.str.104, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/cs53l30.c", i32 175, i32 2}
!168 = !{ptr @.str.105, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/cs53l30.c", i32 176, i32 2}
!170 = !{ptr @.str.106, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/cs53l30.c", i32 177, i32 2}
!172 = !{ptr @.str.107, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/cs53l30.c", i32 178, i32 2}
!174 = !{ptr @input1_sel_text, !175, !"input1_sel_text", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/cs53l30.c", i32 171, i32 27}
!176 = !{ptr @input1_sel_values, !177, !"input1_sel_values", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/cs53l30.c", i32 181, i32 27}
!178 = !{ptr @input2_sel_enum, !179, !"input2_sel_enum", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/cs53l30.c", i32 237, i32 8}
!180 = !{ptr @.str.108, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/cs53l30.c", i32 192, i32 2}
!182 = !{ptr @.str.109, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/cs53l30.c", i32 193, i32 2}
!184 = !{ptr @.str.110, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/cs53l30.c", i32 194, i32 2}
!186 = !{ptr @.str.111, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/cs53l30.c", i32 195, i32 2}
!188 = !{ptr @.str.112, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/cs53l30.c", i32 196, i32 2}
!190 = !{ptr @.str.113, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/cs53l30.c", i32 197, i32 2}
!192 = !{ptr @.str.114, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/cs53l30.c", i32 198, i32 2}
!194 = !{ptr @input2_sel_text, !195, !"input2_sel_text", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/cs53l30.c", i32 191, i32 27}
!196 = !{ptr @input2_sel_values, !197, !"input2_sel_values", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/cs53l30.c", i32 201, i32 27}
!198 = !{ptr @adc1_hpf_enum, !199, !"adc1_hpf_enum", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/cs53l30.c", i32 284, i32 30}
!200 = !{ptr @.str.115, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/cs53l30.c", i32 281, i32 2}
!202 = !{ptr @.str.116, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/cs53l30.c", i32 281, i32 12}
!204 = !{ptr @.str.117, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/cs53l30.c", i32 281, i32 21}
!206 = !{ptr @.str.118, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/cs53l30.c", i32 281, i32 30}
!208 = !{ptr @hpf_corner_freq_text, !209, !"hpf_corner_freq_text", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/cs53l30.c", i32 280, i32 27}
!210 = !{ptr @adc2_hpf_enum, !211, !"adc2_hpf_enum", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/cs53l30.c", i32 288, i32 30}
!212 = !{ptr @adc1_ng_thres_enum, !213, !"adc1_ng_thres_enum", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/cs53l30.c", i32 269, i32 30}
!214 = !{ptr @.str.119, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/cs53l30.c", i32 265, i32 2}
!216 = !{ptr @.str.120, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/cs53l30.c", i32 265, i32 17}
!218 = !{ptr @.str.121, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/cs53l30.c", i32 265, i32 32}
!220 = !{ptr @.str.122, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/cs53l30.c", i32 265, i32 47}
!222 = !{ptr @.str.123, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/cs53l30.c", i32 266, i32 2}
!224 = !{ptr @.str.124, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/cs53l30.c", i32 266, i32 17}
!226 = !{ptr @.str.125, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/cs53l30.c", i32 266, i32 32}
!228 = !{ptr @.str.126, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/cs53l30.c", i32 266, i32 41}
!230 = !{ptr @cs53l30_ng_thres_text, !231, !"cs53l30_ng_thres_text", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/cs53l30.c", i32 264, i32 27}
!232 = !{ptr @adc2_ng_thres_enum, !233, !"adc2_ng_thres_enum", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/cs53l30.c", i32 274, i32 30}
!234 = !{ptr @adc1_ng_delay_enum, !235, !"adc1_ng_delay_enum", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/cs53l30.c", i32 253, i32 30}
!236 = !{ptr @.str.127, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/cs53l30.c", i32 250, i32 2}
!238 = !{ptr @.str.128, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/cs53l30.c", i32 250, i32 13}
!240 = !{ptr @.str.129, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/cs53l30.c", i32 250, i32 25}
!242 = !{ptr @.str.130, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/cs53l30.c", i32 250, i32 37}
!244 = !{ptr @cs53l30_ng_delay_text, !245, !"cs53l30_ng_delay_text", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/cs53l30.c", i32 249, i32 27}
!246 = !{ptr @adc2_ng_delay_enum, !247, !"adc2_ng_delay_enum", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/cs53l30.c", i32 258, i32 30}
!248 = !{ptr @pga_tlv, !249, !"pga_tlv", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/cs53l30.c", i32 167, i32 8}
!250 = !{ptr @dig_tlv, !251, !"dig_tlv", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/cs53l30.c", i32 168, i32 8}
!252 = !{ptr @.str.131, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/cs53l30.c", i32 370, i32 2}
!254 = !{ptr @.str.132, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/cs53l30.c", i32 371, i32 2}
!256 = !{ptr @.str.133, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/cs53l30.c", i32 372, i32 2}
!258 = !{ptr @.str.134, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/cs53l30.c", i32 373, i32 2}
!260 = !{ptr @.str.135, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/cs53l30.c", i32 374, i32 2}
!262 = !{ptr @.str.136, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/cs53l30.c", i32 376, i32 2}
!264 = !{ptr @.str.137, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/cs53l30.c", i32 378, i32 2}
!266 = !{ptr @.str.138, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/cs53l30.c", i32 380, i32 2}
!268 = !{ptr @.str.139, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/cs53l30.c", i32 383, i32 2}
!270 = !{ptr @.str.140, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/cs53l30.c", i32 385, i32 2}
!272 = !{ptr @.str.141, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/cs53l30.c", i32 388, i32 2}
!274 = !{ptr @.str.142, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/cs53l30.c", i32 390, i32 2}
!276 = !{ptr @.str.143, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/cs53l30.c", i32 393, i32 2}
!278 = !{ptr @.str.144, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/cs53l30.c", i32 395, i32 2}
!280 = !{ptr @.str.145, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/cs53l30.c", i32 397, i32 2}
!282 = !{ptr @.str.146, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/cs53l30.c", i32 399, i32 2}
!284 = !{ptr @.str.147, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/cs53l30.c", i32 401, i32 2}
!286 = !{ptr @.str.148, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/cs53l30.c", i32 403, i32 2}
!288 = !{ptr @cs53l30_dapm_widgets, !289, !"cs53l30_dapm_widgets", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/cs53l30.c", i32 369, i32 41}
!290 = !{ptr @.str.150, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/cs53l30.c", i32 225, i32 2}
!292 = !{ptr @input1_route_sel_mux, !293, !"input1_route_sel_mux", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/cs53l30.c", i32 224, i32 38}
!294 = !{ptr @input1_route_sel_enum, !295, !"input1_route_sel_enum", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/cs53l30.c", i32 215, i32 30}
!296 = !{ptr @.str.151, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/cs53l30.c", i32 212, i32 2}
!298 = !{ptr @.str.152, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/cs53l30.c", i32 212, i32 14}
!300 = !{ptr @input1_route_sel_text, !301, !"input1_route_sel_text", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/cs53l30.c", i32 211, i32 27}
!302 = !{ptr @.str.153, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/cs53l30.c", i32 242, i32 2}
!304 = !{ptr @input2_route_sel_mux, !305, !"input2_route_sel_mux", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/cs53l30.c", i32 241, i32 38}
!306 = !{ptr @input2_route_sel_enum, !307, !"input2_route_sel_enum", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/cs53l30.c", i32 232, i32 30}
!308 = !{ptr @.str.154, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/cs53l30.c", i32 228, i32 2}
!310 = !{ptr @.str.155, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/cs53l30.c", i32 228, i32 14}
!312 = !{ptr @input2_route_sel_text, !313, !"input2_route_sel_text", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/cs53l30.c", i32 227, i32 27}
!314 = !{ptr @cs53l30_dapm_routes, !315, !"cs53l30_dapm_routes", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/cs53l30.c", i32 407, i32 40}
!316 = !{ptr @.str.156, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/cs53l30.c", i32 454, i32 3}
!318 = !{ptr @cs53l30_dapm_routes_sdout2, !319, !"cs53l30_dapm_routes_sdout2", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/cs53l30.c", i32 444, i32 40}
!320 = !{ptr @cs53l30_dapm_routes_sdout1, !321, !"cs53l30_dapm_routes_sdout1", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/cs53l30.c", i32 431, i32 40}
!322 = !{ptr @.str.157, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/cs53l30.c", i32 670, i32 5}
!324 = !{ptr @.str.158, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @cs53l30_set_bias_level._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @cs53l30_set_bias_level._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @cs53l30_dai, !328, !"cs53l30_dai", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/cs53l30.c", i32 863, i32 34}
!329 = !{ptr @cs53l30_ops, !330, !"cs53l30_ops", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/cs53l30.c", i32 853, i32 37}
!331 = !{ptr @cs53l30_mclkx_coeffs, !332, !"cs53l30_mclkx_coeffs", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/cs53l30.c", i32 511, i32 39}
!333 = !{ptr @.str.159, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/cs53l30.c", i32 777, i32 3}
!335 = !{ptr @.str.160, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @cs53l30_set_dai_tdm_slot._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @cs53l30_set_dai_tdm_slot._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.162, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/cs53l30.c", i32 783, i32 3}
!340 = !{ptr @cs53l30_set_dai_tdm_slot._entry.161, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @cs53l30_set_dai_tdm_slot._entry_ptr.163, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.165, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/cs53l30.c", i32 788, i32 3}
!344 = !{ptr @cs53l30_set_dai_tdm_slot._entry.164, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @cs53l30_set_dai_tdm_slot._entry_ptr.166, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.168, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/cs53l30.c", i32 808, i32 3}
!348 = !{ptr @cs53l30_set_dai_tdm_slot._entry.167, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @cs53l30_set_dai_tdm_slot._entry_ptr.169, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.171, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/cs53l30.c", i32 816, i32 3}
!352 = !{ptr @cs53l30_set_dai_tdm_slot._entry.170, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @cs53l30_set_dai_tdm_slot._entry_ptr.172, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.173, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/cs53l30.c", i32 824, i32 3}
!356 = !{ptr @.str.174, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @cs53l30_set_dai_tdm_slot.__UNIQUE_ID_ddebug294, !355, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!358 = !{ptr @.str.175, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/cs53l30.c", i32 831, i32 3}
!360 = !{ptr @cs53l30_set_dai_tdm_slot.__UNIQUE_ID_ddebug295, !359, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!361 = !{ptr @src_constraints, !362, !"src_constraints", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/cs53l30.c", i32 747, i32 48}
!363 = !{ptr @cs53l30_src_rates, !364, !"cs53l30_src_rates", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/cs53l30.c", i32 743, i32 27}
!365 = !{ptr @cs53l30_mclk_coeffs, !366, !"cs53l30_mclk_coeffs", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/cs53l30.c", i32 466, i32 38}
!367 = !{ptr @cs53l30_of_match, !368, !"cs53l30_of_match", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/cs53l30.c", i32 1107, i32 34}
!369 = !{ptr @cs53l30_runtime_pm, !370, !"cs53l30_runtime_pm", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/cs53l30.c", i32 1102, i32 32}
!371 = !{ptr @.str.176, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/cs53l30.c", i32 1085, i32 3}
!373 = !{ptr @cs53l30_runtime_resume._entry, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @cs53l30_runtime_resume._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.178, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/cs53l30.c", i32 1094, i32 3}
!377 = !{ptr @cs53l30_runtime_resume._entry.177, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @cs53l30_runtime_resume._entry_ptr.179, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @cs53l30_id, !380, !"cs53l30_id", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/cs53l30.c", i32 1114, i32 35}
!381 = !{i32 1, !"wchar_size", i32 2}
!382 = !{i32 1, !"min_enum_size", i32 4}
!383 = !{i32 8, !"branch-target-enforcement", i32 0}
!384 = !{i32 8, !"sign-return-address", i32 0}
!385 = !{i32 8, !"sign-return-address-all", i32 0}
!386 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!387 = !{i32 7, !"uwtable", i32 1}
!388 = !{i32 7, !"frame-pointer", i32 2}
!389 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!390 = !{!"auto-init"}
!391 = !{i8 0, i8 2}
!392 = !{i32 0, i32 33}
!393 = !{i64 2148754840, i64 2148754845, i64 2148754858, i64 2148754902, i64 2148754936, i64 2148754957}
