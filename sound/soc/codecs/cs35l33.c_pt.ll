; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cs35l33.c_pt.bc'
source_filename = "../sound/soc/codecs/cs35l33.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.cs35l33_mclk_div = type { i32, i32, i8, i8 }
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
%struct.cs35l33_private = type { ptr, %struct.cs35l33_pdata, ptr, ptr, i8, i32, [2 x %struct.regulator_bulk_data], i32, i8, i8 }
%struct.cs35l33_pdata = type { i32, i32, i32, i32, i32, %struct.cs35l33_hg }
%struct.cs35l33_hg = type { i8, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_cs35l33__321_1293_cs35l33_i2c_driver_init6 = internal global ptr @cs35l33_i2c_driver_init, section ".initcall6.init", align 4
@cs35l33_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cs35l33_i2c_probe, ptr @cs35l33_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cs35l33_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l33_pm_ops, ptr null, ptr null }, ptr @cs35l33_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cs35l33_i2c_driver_exit = internal global ptr @cs35l33_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description322 = internal constant [48 x i8] c"snd_soc_cs35l33.description=ASoC CS35L33 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author323 = internal constant [85 x i8] c"snd_soc_cs35l33.author=Paul Handrigan, Cirrus Logic Inc, <paul.handrigan@cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [54 x i8] c"snd_soc_cs35l33.file=sound/soc/codecs/snd-soc-cs35l33\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [28 x i8] c"snd_soc_cs35l33.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cs35l33\00", [24 x i8] zeroinitializer }, align 32
@cs35l33_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs35l33\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cs35l33_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l33_runtime_suspend, ptr @cs35l33_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cs35l33_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cs35l33\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cs35l33_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @cs35l33_writeable_register, ptr @cs35l33_readable_register, ptr @cs35l33_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 89, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l33_reg, i32 36, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cs35l33:1133:(&cs35l33_regmap)->lock\00", [59 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1136, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs35l33_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/cs35l33.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry_ptr = internal global ptr @cs35l33_i2c_probe._entry, section ".printk_index", align 4
@cs35l33_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request core supplies: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry_ptr.9 = internal global ptr @cs35l33_i2c_probe._entry.7, section ".printk_index", align 4
@cs35l33_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1168, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry_ptr.13 = internal global ptr @cs35l33_i2c_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1175, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s ERROR: Can't get reset GPIO\0A\00", [32 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry_ptr.17 = internal global ptr @cs35l33_i2c_probe._entry.15, section ".printk_index", align 4
@cs35l33_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable core supplies: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry_ptr.20 = internal global ptr @cs35l33_i2c_probe._entry.18, section ".printk_index", align 4
@cs35l33_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1197, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read device ID: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry_ptr.23 = internal global ptr @cs35l33_i2c_probe._entry.21, section ".printk_index", align 4
@cs35l33_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CS35L33 Device ID (%X). Expected ID %X\0A\00", [56 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry_ptr.26 = internal global ptr @cs35l33_i2c_probe._entry.24, section ".printk_index", align 4
@cs35l33_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 1211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Get Revision ID failed\0A\00", [40 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry_ptr.29 = internal global ptr @cs35l33_i2c_probe._entry.27, section ".printk_index", align 4
@cs35l33_i2c_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 1216, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cirrus Logic CS35L33, Revision: %02X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry_ptr.33 = internal global ptr @cs35l33_i2c_probe._entry.30, section ".printk_index", align 4
@cs35l33_patch = internal constant { [7 x %struct.reg_sequence], [44 x i8] } { [7 x %struct.reg_sequence] [%struct.reg_sequence { i32 0, i32 153, i32 0 }, %struct.reg_sequence { i32 89, i32 2, i32 0 }, %struct.reg_sequence { i32 82, i32 48, i32 0 }, %struct.reg_sequence { i32 57, i32 69, i32 0 }, %struct.reg_sequence { i32 87, i32 48, i32 0 }, %struct.reg_sequence { i32 44, i32 104, i32 0 }, %struct.reg_sequence zeroinitializer], [44 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 1222, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error in applying regmap patch: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry_ptr.36 = internal global ptr @cs35l33_i2c_probe._entry.34, section ".printk_index", align 4
@soc_component_dev_cs35l33 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @cs35l33_snd_controls, i32 2, ptr @cs35l33_dapm_widgets, i32 9, ptr @cs35l33_audio_map, i32 8, ptr @cs35l33_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l33_component_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l33_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cs35l33_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.123, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs35l33_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.115, i64 68, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.114, i64 68, i32 254, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 1240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Register component failed\0A\00", [33 x i8] zeroinitializer }, align 32
@cs35l33_i2c_probe._entry_ptr.39 = internal global ptr @cs35l33_i2c_probe._entry.37, section ".printk_index", align 4
@cs35l33_reg = internal constant { [36 x %struct.reg_default], [64 x i8] } { [36 x %struct.reg_default] [%struct.reg_default { i32 6, i32 133 }, %struct.reg_default { i32 7, i32 254 }, %struct.reg_default { i32 8, i32 12 }, %struct.reg_default { i32 9, i32 144 }, %struct.reg_default { i32 10, i32 85 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 1 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 200 }, %struct.reg_default { i32 15, i32 20 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 4 }, %struct.reg_default { i32 18, i32 144 }, %struct.reg_default { i32 19, i32 255 }, %struct.reg_default { i32 20, i32 255 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 64 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 35, i32 98 }, %struct.reg_default { i32 36, i32 3 }, %struct.reg_default { i32 37, i32 18 }, %struct.reg_default { i32 41, i32 10 }, %struct.reg_default { i32 42, i32 5 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 3 }, %struct.reg_default { i32 47, i32 2 }, %struct.reg_default { i32 48, i32 5 }, %struct.reg_default { i32 49, i32 6 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 64 }, %struct.reg_default { i32 55, i32 3 }, %struct.reg_default { i32 56, i32 4 }, %struct.reg_default { i32 57, i32 99 }], [64 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VA\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VP\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cirrus,boost-ctl\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cirrus,ramp-rate\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cirrus,boost-ipk\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cirrus,imon-adc-scale\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cirrus,hg-algo\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cirrus,mem-depth\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cirrus,release-rate\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cirrus,ldo-thld\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cirrus,ldo-path-disable\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cirrus,ldo-entry-delay\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cirrus,vp-hg-auto\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cirrus,vp-hg\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cirrus,vp-hg-rate\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cirrus,vp-hg-va\00", [16 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 988, ptr @.str.58, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Amp short error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs35l33_irq_thread\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry_ptr = internal global ptr @cs35l33_irq_thread._entry, section ".printk_index", align 4
@cs35l33_irq_thread.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.57, ptr @.str.4, ptr @.str.60, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_cs35l33\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Amp short error release\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.4, i32 1006, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Cal error\0A\00", [21 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry_ptr.63 = internal global ptr @cs35l33_irq_thread._entry.61, section ".printk_index", align 4
@cs35l33_irq_thread.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.57, ptr @.str.4, ptr @.str.64, i8 0, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cal error release\0A\00", [45 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.57, ptr @.str.4, i32 1026, ptr @.str.58, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Over temperature error\0A\00", [40 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry_ptr.67 = internal global ptr @cs35l33_irq_thread._entry.65, section ".printk_index", align 4
@cs35l33_irq_thread.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.57, ptr @.str.4, ptr @.str.68, i8 1, i8 1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Over temperature error release\0A\00", [32 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.57, ptr @.str.4, i32 1041, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Over temperature warning\0A\00", [38 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry_ptr.71 = internal global ptr @cs35l33_irq_thread._entry.69, section ".printk_index", align 4
@cs35l33_irq_thread.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.57, ptr @.str.4, ptr @.str.72, i8 1, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Over temperature warning release\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.57, ptr @.str.4, i32 1055, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERROR: ADSPCLK Interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry_ptr.75 = internal global ptr @cs35l33_irq_thread._entry.73, section ".printk_index", align 4
@cs35l33_irq_thread._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.57, ptr @.str.4, i32 1058, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ERROR: MCLK Interrupt\0A\00", [41 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry_ptr.78 = internal global ptr @cs35l33_irq_thread._entry.76, section ".printk_index", align 4
@cs35l33_irq_thread._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.57, ptr @.str.4, i32 1062, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ERROR: VMON Overflow Interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry_ptr.81 = internal global ptr @cs35l33_irq_thread._entry.79, section ".printk_index", align 4
@cs35l33_irq_thread._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.57, ptr @.str.4, i32 1066, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ERROR: IMON Overflow Interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry_ptr.84 = internal global ptr @cs35l33_irq_thread._entry.82, section ".printk_index", align 4
@cs35l33_irq_thread._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.57, ptr @.str.4, i32 1070, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ERROR: VPMON Overflow Interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@cs35l33_irq_thread._entry_ptr.87 = internal global ptr @cs35l33_irq_thread._entry.85, section ".printk_index", align 4
@cs35l33_snd_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @classd_ctl_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }], [32 x i8] zeroinitializer }, align 32
@cs35l33_audio_map = internal constant { [8 x %struct.snd_soc_dapm_route], [96 x i8] } { [8 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }], [96 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SPK Amp Volume\00", [17 x i8] zeroinitializer }, align 32
@classd_ctl_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 900, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 18, i32 18, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Volume\00", [21 x i8] zeroinitializer }, align 32
@dac_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10200, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 52, i32 228, i32 0, i32 16, i32 16, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPK\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKDRV\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDIN\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MON\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VMON\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IMON\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VPMON\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VBSTMON\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDOUT\00", [26 x i8] zeroinitializer }, align 32
@cs35l33_dapm_widgets = internal constant { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [396 x i8] } { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @cs35l33_spkrdrv_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @cs35l33_sdin_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @cs35l33_sdout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [396 x i8] zeroinitializer }, align 32
@cs35l33_spkrdrv_event.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.101, ptr @.str.4, ptr @.str.102, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs35l33_spkrdrv_event\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Amp calibration done\0A\00", [42 x i8] zeroinitializer }, align 32
@cs35l33_spkrdrv_event.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.101, ptr @.str.4, ptr @.str.103, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Amp turned on\0A\00", [17 x i8] zeroinitializer }, align 32
@cs35l33_spkrdrv_event.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.101, ptr @.str.4, ptr @.str.104, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Amp turned off\0A\00", [16 x i8] zeroinitializer }, align 32
@cs35l33_spkrdrv_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.101, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid event = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@cs35l33_spkrdrv_event._entry_ptr = internal global ptr @cs35l33_spkrdrv_event._entry, section ".printk_index", align 4
@cs35l33_sdin_event.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.106, ptr @.str.4, ptr @.str.107, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs35l33_sdin_event\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BST turned on\0A\00", [17 x i8] zeroinitializer }, align 32
@cs35l33_sdin_event.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.106, ptr @.str.4, ptr @.str.108, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SDIN turned on\0A\00", [16 x i8] zeroinitializer }, align 32
@cs35l33_sdin_event.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.106, ptr @.str.4, ptr @.str.109, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Amp calibration started\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l33_sdin_event.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.106, ptr @.str.4, ptr @.str.110, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BST and SDIN turned off\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l33_sdin_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 260, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@cs35l33_sdin_event._entry_ptr = internal global ptr @cs35l33_sdin_event._entry, section ".printk_index", align 4
@cs35l33_sdout_event.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.111, ptr @.str.4, ptr @.str.112, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs35l33_sdout_event\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SDOUT turned on\0A\00", [47 x i8] zeroinitializer }, align 32
@cs35l33_sdout_event.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.111, ptr @.str.4, ptr @.str.113, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SDOUT turned off\0A\00", [46 x i8] zeroinitializer }, align 32
@cs35l33_sdout_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.111, ptr @.str.4, i32 297, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@cs35l33_sdout_event._entry_ptr = internal global ptr @cs35l33_sdout_event._entry, section ".printk_index", align 4
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CS35L33 Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CS35L33 Capture\00", [16 x i8] zeroinitializer }, align 32
@cs35l33_set_bst_ipk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.4, i32 754, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid boost current %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs35l33_set_bst_ipk\00", [44 x i8] zeroinitializer }, align 32
@cs35l33_set_bst_ipk._entry_ptr = internal global ptr @cs35l33_set_bst_ipk._entry, section ".printk_index", align 4
@cs35l33_set_bst_ipk._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.4, i32 761, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Current not a multiple of 15625uA (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@cs35l33_set_bst_ipk._entry_ptr.120 = internal global ptr @cs35l33_set_bst_ipk._entry.118, section ".printk_index", align 4
@cs35l33_vphg_auto_route = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@cs35l33_component_set_sysclk.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.121, ptr @.str.4, ptr @.str.122, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cs35l33_component_set_sysclk\00", [35 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"external mclk freq=%d, internal mclk freq=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs35l33-dai\00", [20 x i8] zeroinitializer }, align 32
@cs35l33_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @cs35l33_set_dai_fmt, ptr null, ptr @cs35l33_set_tdm_slot, ptr null, ptr null, ptr @cs35l33_set_tristate, ptr null, ptr null, ptr null, ptr @cs35l33_pcm_startup, ptr null, ptr @cs35l33_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.124, ptr @.str.4, ptr @.str.125, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs35l33_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Audio port in master mode\0A\00", [37 x i8] zeroinitializer }, align 32
@cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.124, ptr @.str.4, ptr @.str.126, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Audio port in slave mode\0A\00", [38 x i8] zeroinitializer }, align 32
@cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.124, ptr @.str.4, ptr @.str.127, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Audio port in TDM mode\0A\00", [40 x i8] zeroinitializer }, align 32
@cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.124, ptr @.str.4, ptr @.str.128, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Audio port in I2S mode\0A\00", [40 x i8] zeroinitializer }, align 32
@cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.129, ptr @.str.4, ptr @.str.130, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cs35l33_set_tdm_slot\00", [43 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Audio starts from slots %d\00", [37 x i8] zeroinitializer }, align 32
@cs35l33_vp_vbst_mon_route = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.129, ptr @.str.4, ptr @.str.131, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VMON enabled in slots %d-%d\00", [36 x i8] zeroinitializer }, align 32
@cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.129, ptr @.str.4, ptr @.str.132, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IMON enabled in slots %d-%d\00", [36 x i8] zeroinitializer }, align 32
@cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.129, ptr @.str.4, ptr @.str.133, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VPMON enabled in slots %d\00", [38 x i8] zeroinitializer }, align 32
@cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.129, ptr @.str.4, ptr @.str.134, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VBSTMON enabled in slots %d\00", [36 x i8] zeroinitializer }, align 32
@cs35l33_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @cs35l33_src_rates, i32 12, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cs35l33_src_rates = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 8000, i32 11025, i32 11029, i32 12000, i32 16000, i32 22050, i32 22059, i32 24000, i32 32000, i32 44100, i32 44118, i32 48000], [48 x i8] zeroinitializer }, align 32
@cs35l33_mclk_coeffs = internal constant { [21 x %struct.cs35l33_mclk_div], [36 x i8] } { [21 x %struct.cs35l33_mclk_div] [%struct.cs35l33_mclk_div { i32 5644800, i32 11025, i8 4, i8 16 }, %struct.cs35l33_mclk_div { i32 5644800, i32 22050, i8 8, i8 16 }, %struct.cs35l33_mclk_div { i32 5644800, i32 44100, i8 12, i8 16 }, %struct.cs35l33_mclk_div { i32 6000000, i32 8000, i8 1, i8 0 }, %struct.cs35l33_mclk_div { i32 6000000, i32 11025, i8 2, i8 0 }, %struct.cs35l33_mclk_div { i32 6000000, i32 11029, i8 3, i8 0 }, %struct.cs35l33_mclk_div { i32 6000000, i32 12000, i8 4, i8 0 }, %struct.cs35l33_mclk_div { i32 6000000, i32 16000, i8 5, i8 0 }, %struct.cs35l33_mclk_div { i32 6000000, i32 22050, i8 6, i8 0 }, %struct.cs35l33_mclk_div { i32 6000000, i32 22059, i8 7, i8 0 }, %struct.cs35l33_mclk_div { i32 6000000, i32 24000, i8 8, i8 0 }, %struct.cs35l33_mclk_div { i32 6000000, i32 32000, i8 9, i8 0 }, %struct.cs35l33_mclk_div { i32 6000000, i32 44100, i8 10, i8 0 }, %struct.cs35l33_mclk_div { i32 6000000, i32 44118, i8 11, i8 0 }, %struct.cs35l33_mclk_div { i32 6000000, i32 48000, i8 12, i8 0 }, %struct.cs35l33_mclk_div { i32 6144000, i32 8000, i8 1, i8 16 }, %struct.cs35l33_mclk_div { i32 6144000, i32 12000, i8 4, i8 16 }, %struct.cs35l33_mclk_div { i32 6144000, i32 16000, i8 5, i8 16 }, %struct.cs35l33_mclk_div { i32 6144000, i32 24000, i8 8, i8 16 }, %struct.cs35l33_mclk_div { i32 6144000, i32 32000, i8 9, i8 16 }, %struct.cs35l33_mclk_div { i32 6144000, i32 48000, i8 12, i8 16 }], [36 x i8] zeroinitializer }, align 32
@cs35l33_pcm_hw_params.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.135, ptr @.str.4, ptr @.str.136, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs35l33_pcm_hw_params\00", [42 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sample rate=%d, bits per sample=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l33_runtime_suspend.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.137, ptr @.str.4, ptr @.str.138, i8 0, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cs35l33_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@cs35l33_runtime_resume.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.139, ptr @.str.4, ptr @.str.138, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l33_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@cs35l33_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.139, ptr @.str.4, i32 873, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@cs35l33_runtime_resume._entry_ptr = internal global ptr @cs35l33_runtime_resume._entry, section ".printk_index", align 4
@cs35l33_runtime_resume._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.4, i32 885, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to restore register cache\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l33_runtime_resume._entry_ptr.142 = internal global ptr @cs35l33_runtime_resume._entry.140, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.143 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 5, i64 21, i64 22, i64 63]
@__sancov_gen_cov_switch_values.144 = internal global [44 x i64] [i64 42, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 35, i64 36, i64 37, i64 41, i64 42, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57]
@__sancov_gen_cov_switch_values.145 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 5, i64 21, i64 22, i64 63]
@__sancov_gen_cov_switch_values.146 = internal global [8 x i64] [i64 6, i64 32, i64 5644800, i64 6000000, i64 6144000, i64 11289600, i64 12000000, i64 12288000]
@__sancov_gen_cov_switch_values.147 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.153 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 4, i64 5]
@___asan_gen_.154 = private unnamed_addr constant [19 x i8] c"cs35l33_i2c_driver\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1281, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1283, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"cs35l33_of_match\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1268, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [15 x i8] c"cs35l33_pm_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 916, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant [11 x i8] c"cs35l33_id\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1274, i32 35 }
@___asan_gen_.169 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"cs35l33_regmap\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 846, i32 35 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1133, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1136, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1151, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1168, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1172, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1174, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1182, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1197, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1202, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1211, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1215, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [14 x i8] c"cs35l33_patch\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 93, i32 34 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1221, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [26 x i8] c"soc_component_dev_cs35l33\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 831, i32 46 }
@___asan_gen_.265 = private unnamed_addr constant [12 x i8] c"cs35l33_dai\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 677, i32 34 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1239, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [12 x i8] c"cs35l33_reg\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 54, i32 33 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1076, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1077, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1090, i32 31 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1095, i32 31 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1100, i32 31 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1103, i32 31 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 929, i32 32 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 933, i32 32 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 935, i32 32 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 938, i32 32 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 940, i32 32 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 943, i32 32 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 948, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 950, i32 32 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 952, i32 32 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 954, i32 32 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 988, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 990, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1006, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1012, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1026, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1028, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1041, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1043, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1055, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1058, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1061, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1065, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1069, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant [21 x i8] c"cs35l33_snd_controls\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 190, i32 38 }
@___asan_gen_.403 = private unnamed_addr constant [18 x i8] c"cs35l33_audio_map\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 335, i32 40 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 192, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [15 x i8] c"classd_ctl_tlv\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 187, i32 8 }
@___asan_gen_.412 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 194, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 188, i32 8 }
@___asan_gen_.419 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 311, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 312, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 315, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 319, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 321, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 323, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 325, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 327, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 330, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [21 x i8] c"cs35l33_dapm_widgets\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 309, i32 41 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 211, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 213, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 216, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 219, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 240, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 243, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 247, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 257, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 260, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 289, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 294, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 297, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 336, i32 17 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 345, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 754, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 760, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant [24 x i8] c"cs35l33_vphg_auto_route\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 348, i32 40 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 663, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 678, i32 11 }
@___asan_gen_.531 = private unnamed_addr constant [12 x i8] c"cs35l33_ops\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 669, i32 37 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 448, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 453, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 466, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 470, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 567, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant [26 x i8] c"cs35l33_vp_vbst_mon_route\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 353, i32 40 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 593, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 601, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 611, i32 4 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 620, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant [20 x i8] c"cs35l33_constraints\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 516, i32 48 }
@___asan_gen_.573 = private unnamed_addr constant [18 x i8] c"cs35l33_src_rates\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 511, i32 27 }
@___asan_gen_.576 = private unnamed_addr constant [20 x i8] c"cs35l33_mclk_coeffs\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 400, i32 38 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 505, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 903, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 866, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 873, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.601 = private constant [30 x i8] c"../sound/soc/codecs/cs35l33.c\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 885, i32 3 }
@llvm.compiler.used = appending global [185 x ptr] [ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__exitcall_cs35l33_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_cs35l33__321_1293_cs35l33_i2c_driver_init6, ptr @cs35l33_i2c_driver_exit, ptr @cs35l33_i2c_probe._entry, ptr @cs35l33_i2c_probe._entry.10, ptr @cs35l33_i2c_probe._entry.15, ptr @cs35l33_i2c_probe._entry.18, ptr @cs35l33_i2c_probe._entry.21, ptr @cs35l33_i2c_probe._entry.24, ptr @cs35l33_i2c_probe._entry.27, ptr @cs35l33_i2c_probe._entry.30, ptr @cs35l33_i2c_probe._entry.34, ptr @cs35l33_i2c_probe._entry.37, ptr @cs35l33_i2c_probe._entry.7, ptr @cs35l33_i2c_probe._entry_ptr, ptr @cs35l33_i2c_probe._entry_ptr.13, ptr @cs35l33_i2c_probe._entry_ptr.17, ptr @cs35l33_i2c_probe._entry_ptr.20, ptr @cs35l33_i2c_probe._entry_ptr.23, ptr @cs35l33_i2c_probe._entry_ptr.26, ptr @cs35l33_i2c_probe._entry_ptr.29, ptr @cs35l33_i2c_probe._entry_ptr.33, ptr @cs35l33_i2c_probe._entry_ptr.36, ptr @cs35l33_i2c_probe._entry_ptr.39, ptr @cs35l33_i2c_probe._entry_ptr.9, ptr @cs35l33_irq_thread._entry, ptr @cs35l33_irq_thread._entry.61, ptr @cs35l33_irq_thread._entry.65, ptr @cs35l33_irq_thread._entry.69, ptr @cs35l33_irq_thread._entry.73, ptr @cs35l33_irq_thread._entry.76, ptr @cs35l33_irq_thread._entry.79, ptr @cs35l33_irq_thread._entry.82, ptr @cs35l33_irq_thread._entry.85, ptr @cs35l33_irq_thread._entry_ptr, ptr @cs35l33_irq_thread._entry_ptr.63, ptr @cs35l33_irq_thread._entry_ptr.67, ptr @cs35l33_irq_thread._entry_ptr.71, ptr @cs35l33_irq_thread._entry_ptr.75, ptr @cs35l33_irq_thread._entry_ptr.78, ptr @cs35l33_irq_thread._entry_ptr.81, ptr @cs35l33_irq_thread._entry_ptr.84, ptr @cs35l33_irq_thread._entry_ptr.87, ptr @cs35l33_runtime_resume._entry, ptr @cs35l33_runtime_resume._entry.140, ptr @cs35l33_runtime_resume._entry_ptr, ptr @cs35l33_runtime_resume._entry_ptr.142, ptr @cs35l33_sdin_event._entry, ptr @cs35l33_sdin_event._entry_ptr, ptr @cs35l33_sdout_event._entry, ptr @cs35l33_sdout_event._entry_ptr, ptr @cs35l33_set_bst_ipk._entry, ptr @cs35l33_set_bst_ipk._entry.118, ptr @cs35l33_set_bst_ipk._entry_ptr, ptr @cs35l33_set_bst_ipk._entry_ptr.120, ptr @cs35l33_spkrdrv_event._entry, ptr @cs35l33_spkrdrv_event._entry_ptr, ptr @cs35l33_i2c_driver, ptr @.str, ptr @cs35l33_of_match, ptr @cs35l33_pm_ops, ptr @cs35l33_id, ptr @cs35l33_i2c_probe._key, ptr @cs35l33_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @cs35l33_patch, ptr @.str.35, ptr @soc_component_dev_cs35l33, ptr @cs35l33_dai, ptr @.str.38, ptr @cs35l33_reg, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @cs35l33_snd_controls, ptr @cs35l33_audio_map, ptr @.str.88, ptr @classd_ctl_tlv, ptr @.compoundliteral, ptr @.str.89, ptr @dac_tlv, ptr @.compoundliteral.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @cs35l33_dapm_widgets, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @cs35l33_vphg_auto_route, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @cs35l33_ops, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @cs35l33_vp_vbst_mon_route, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @cs35l33_constraints, ptr @cs35l33_src_rates, ptr @cs35l33_mclk_coeffs, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.141], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_patch to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_cs35l33 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_i2c_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_reg to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_irq_thread._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_irq_thread._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_irq_thread._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_irq_thread._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_irq_thread._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_irq_thread._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_irq_thread._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_irq_thread._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_snd_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_audio_map to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @classd_ctl_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_dapm_widgets to i32), i32 1620, i32 2016, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_spkrdrv_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_sdin_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_sdout_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_set_bst_ipk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_set_bst_ipk._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_vphg_auto_route to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_vp_vbst_mon_route to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_src_rates to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_mclk_coeffs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l33_runtime_resume._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cs35l33_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs35l33_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @cs35l33_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_i2c_probe(ptr noundef %i2c_client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !329
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c_client, ptr noundef nonnull @cs35l33_regmap, ptr noundef nonnull @cs35l33_i2c_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %5) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @regcache_cache_only(ptr noundef %call3, i1 noundef zeroext true) #8
  %arrayidx12 = getelementptr %struct.cs35l33_private, ptr %call.i, i32 0, i32 6, i32 0
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.40, ptr %arrayidx12, align 4
  %arrayidx12.1 = getelementptr %struct.cs35l33_private, ptr %call.i, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.41, ptr %arrayidx12.1, align 4
  %num_core_supplies = getelementptr inbounds %struct.cs35l33_private, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %num_core_supplies, align 4
  %call16 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call16) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  %tobool24.not = icmp eq ptr %1, null
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %pdata26 = getelementptr inbounds %struct.cs35l33_private, ptr %call.i, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %pdata26, ptr %1, i32 64)
  br label %if.end30

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cs35l33_of_get_pdata(ptr noundef %dev, ptr noundef nonnull %call.i)
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then25
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call32 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %11, ptr noundef null, ptr noundef nonnull @cs35l33_irq_thread, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end30.if.end39_crit_edge, label %do.end37

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call32) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end37, %if.end30.if.end39_crit_edge
  %call41 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 7) #8
  %reset_gpio = getelementptr inbounds %struct.cs35l33_private, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call41, ptr %reset_gpio, align 4
  %cmp.i202 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %do.end47, label %if.end51

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3) #11
  %13 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset_gpio, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.end39
  %16 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_core_supplies, align 4
  %call55 = tail call i32 @regulator_bulk_enable(i32 noundef %17, ptr noundef %arrayidx12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56.not = icmp eq i32 %call55, 0
  br i1 %cmp56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call55) #11
  br label %cleanup

if.end62:                                         ; preds = %if.end51
  %18 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 50) #8
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %21, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call66 = tail call fastcc i32 @cirrus_read_device_id(ptr noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then68, label %if.end73

if.then68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call66) #11
  br label %err_enable

if.end73:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp4(i32 219699, i32 %call66)
  %cmp74.not = icmp eq i32 %call66, 219699
  br i1 %cmp74.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call66, i32 noundef 219699) #11
  br label %err_enable

if.end80:                                         ; preds = %if.end73
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call82 = call i32 @regmap_read(ptr noundef %25, i32 noundef 5, ptr noundef nonnull %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %do.end87, label %do.end92

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #11
  br label %err_enable

do.end92:                                         ; preds = %if.end80
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg, align 4
  %and = and i32 %27, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %and) #11
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call95 = call i32 @regmap_register_patch(ptr noundef %29, ptr noundef nonnull @cs35l33_patch, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %do.end100, label %if.end102

do.end100:                                        ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call95) #11
  br label %err_enable

if.end102:                                        ; preds = %do.end92
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i203 = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 8, i32 noundef 160, i32 noundef 160, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 100) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i204 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %call111 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_cs35l33, ptr noundef nonnull @cs35l33_dai, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %do.end116, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end116:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #11
  br label %err_enable

err_enable:                                       ; preds = %do.end116, %do.end100, %do.end87, %do.end78, %if.then68
  %ret.0 = phi i32 [ %call66, %if.then68 ], [ -22, %do.end78 ], [ %call82, %do.end87 ], [ %call95, %do.end100 ], [ %call111, %do.end116 ]
  %32 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %33, i32 noundef 0) #8
  %34 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_core_supplies, align 4
  %call123 = call i32 @regulator_bulk_disable(i32 noundef %35, ptr noundef %arrayidx12) #8
  br label %cleanup

cleanup:                                          ; preds = %err_enable, %if.end102.cleanup_crit_edge, %do.end60, %do.end47, %do.end21, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ %call16, %do.end21 ], [ %15, %do.end47 ], [ %call55, %do.end60 ], [ %ret.0, %err_enable ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end102.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_i2c_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio = getelementptr inbounds %struct.cs35l33_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %num_core_supplies = getelementptr inbounds %struct.cs35l33_private, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_core_supplies, align 4
  %core_supplies = getelementptr inbounds %struct.cs35l33_private, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef %5, ptr noundef %core_supplies) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs35l33_of_get_pdata(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %cs35l33) unnamed_addr #2 align 64 {
entry:
  %val32.i = alloca i32, align 4
  %val32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %pdata1 = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32) #8
  %2 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val32, align 4, !annotation !329
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.42, ptr noundef nonnull %val32, i32 noundef 1, i32 noundef 0) #8
  %3 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val32, align 4
  %6 = ptrtoint ptr %pdata1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pdata1, align 4
  %amp_drv_sel = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %amp_drv_sel to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %amp_drv_sel, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call.i.i1 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.43, ptr noundef nonnull %val32, i32 noundef 1, i32 noundef 0) #8
  %8 = call i32 @llvm.smin.i32(i32 %call.i.i1, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp5 = icmp sgt i32 %8, -1
  br i1 %cmp5, label %if.then6, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val32, align 4
  %ramp_rate = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %ramp_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ramp_rate, align 4
  %enable_soft_ramp = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 9
  %12 = ptrtoint ptr %enable_soft_ramp to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %enable_soft_ramp, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3.if.end7_crit_edge
  %call.i.i2 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.44, ptr noundef nonnull %val32, i32 noundef 1, i32 noundef 0) #8
  %13 = call i32 @llvm.smin.i32(i32 %call.i.i2, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp9 = icmp sgt i32 %13, -1
  br i1 %cmp9, label %if.then10, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val32, align 4
  %boost_ipk = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %boost_ipk to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %boost_ipk, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %call.i.i3 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.45, ptr noundef nonnull %val32, i32 noundef 1, i32 noundef 0) #8
  %17 = call i32 @llvm.smin.i32(i32 %call.i.i3, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp13 = icmp sgt i32 %17, -1
  br i1 %cmp13, label %if.then14, label %if.end11.if.end24_crit_edge

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then14:                                        ; preds = %if.end11
  %18 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val32, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.else [
    i32 0, label %if.then14.if.end24_crit_edge
    i32 7, label %if.then14.if.end24_crit_edge5
    i32 6, label %if.then14.if.end24_crit_edge6
  ]

if.then14.if.end24_crit_edge6:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then14.if.end24_crit_edge5:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then14.if.end24_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then14.if.end24_crit_edge, %if.then14.if.end24_crit_edge5, %if.then14.if.end24_crit_edge6, %if.end11.if.end24_crit_edge
  %.sink = phi i32 [ 8, %if.else ], [ %19, %if.then14.if.end24_crit_edge ], [ %19, %if.then14.if.end24_crit_edge5 ], [ %19, %if.then14.if.end24_crit_edge6 ], [ 8, %if.end11.if.end24_crit_edge ]
  %imon_adc_scale = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %imon_adc_scale to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %imon_adc_scale, align 4
  %hg_config1.i = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i) #8
  %22 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val32.i, align 4, !annotation !329
  %call.i = call ptr @of_get_child_by_name(ptr noundef nonnull %1, ptr noundef nonnull @.str.46) #8
  %tobool.i = icmp ne ptr %call.i, null
  %frombool.i = zext i1 %tobool.i to i8
  %23 = ptrtoint ptr %hg_config1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool.i, ptr %hg_config1.i, align 4
  br i1 %tobool.i, label %if.then.i, label %if.end24.cs35l33_get_hg_data.exit_crit_edge

if.end24.cs35l33_get_hg_data.exit_crit_edge:      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs35l33_get_hg_data.exit

if.then.i:                                        ; preds = %if.end24
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.47, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #8
  %24 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i = icmp sgt i32 %24, -1
  br i1 %cmp.i, label %if.then6.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val32.i, align 4
  %mem_depth.i = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 5, i32 1
  %27 = ptrtoint ptr %mem_depth.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mem_depth.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then.i.if.end.i_crit_edge
  %call.i.i1.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.48, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #8
  %28 = call i32 @llvm.smin.i32(i32 %call.i.i1.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp8.i = icmp sgt i32 %28, -1
  br i1 %cmp8.i, label %if.then9.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val32.i, align 4
  %release_rate.i = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 5, i32 2
  %31 = ptrtoint ptr %release_rate.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %release_rate.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end.i.if.end10.i_crit_edge
  %call.i.i2.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.49, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #8
  %32 = call i32 @llvm.smin.i32(i32 %call.i.i2.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp12.i = icmp sgt i32 %32, -1
  br i1 %cmp12.i, label %if.then13.i, label %if.end10.i.if.end14.i_crit_edge

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val32.i, align 4
  %ldo_thld.i = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 5, i32 4
  %35 = ptrtoint ptr %ldo_thld.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ldo_thld.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end14.i_crit_edge
  %call.i.i3.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.50, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #8
  %36 = call i32 @llvm.smin.i32(i32 %call.i.i3.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp16.i = icmp sgt i32 %36, -1
  br i1 %cmp16.i, label %if.then17.i, label %if.end14.i.if.end18.i_crit_edge

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val32.i, align 4
  %ldo_path_disable.i = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 5, i32 5
  %39 = ptrtoint ptr %ldo_path_disable.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ldo_path_disable.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end18.i_crit_edge
  %call.i.i4.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.51, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #8
  %40 = call i32 @llvm.smin.i32(i32 %call.i.i4.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp20.i = icmp sgt i32 %40, -1
  br i1 %cmp20.i, label %if.then21.i, label %if.end18.i.if.end22.i_crit_edge

if.end18.i.if.end22.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val32.i, align 4
  %ldo_entry_delay.i = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 5, i32 6
  %43 = ptrtoint ptr %ldo_entry_delay.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %ldo_entry_delay.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end22.i_crit_edge
  %call.i.i4 = call ptr @of_find_property(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.52, ptr noundef null) #8
  %tobool.i.i = icmp ne ptr %call.i.i4, null
  %vp_hg_auto.i = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 5, i32 7
  %frombool24.i = zext i1 %tobool.i.i to i8
  %44 = ptrtoint ptr %vp_hg_auto.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool24.i, ptr %vp_hg_auto.i, align 4
  %call.i.i5.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.53, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #8
  %45 = call i32 @llvm.smin.i32(i32 %call.i.i5.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp26.i = icmp sgt i32 %45, -1
  br i1 %cmp26.i, label %if.then27.i, label %if.end22.i.if.end28.i_crit_edge

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val32.i, align 4
  %vp_hg.i = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 5, i32 8
  %48 = ptrtoint ptr %vp_hg.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %vp_hg.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %if.end22.i.if.end28.i_crit_edge
  %call.i.i6.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.54, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #8
  %49 = call i32 @llvm.smin.i32(i32 %call.i.i6.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp30.i = icmp sgt i32 %49, -1
  br i1 %cmp30.i, label %if.then31.i, label %if.end28.i.if.end32.i_crit_edge

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val32.i, align 4
  %vp_hg_rate.i = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 5, i32 9
  %52 = ptrtoint ptr %vp_hg_rate.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %vp_hg_rate.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end32.i_crit_edge
  %call.i.i7.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.55, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #8
  %53 = call i32 @llvm.smin.i32(i32 %call.i.i7.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp34.i = icmp sgt i32 %53, -1
  br i1 %cmp34.i, label %if.then35.i, label %if.end32.i.cs35l33_get_hg_data.exit_crit_edge

if.end32.i.cs35l33_get_hg_data.exit_crit_edge:    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs35l33_get_hg_data.exit

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val32.i, align 4
  %vp_hg_va.i = getelementptr inbounds %struct.cs35l33_private, ptr %cs35l33, i32 0, i32 1, i32 5, i32 10
  %56 = ptrtoint ptr %vp_hg_va.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %vp_hg_va.i, align 4
  br label %cs35l33_get_hg_data.exit

cs35l33_get_hg_data.exit:                         ; preds = %if.then35.i, %if.end32.i.cs35l33_get_hg_data.exit_crit_edge, %if.end24.cs35l33_get_hg_data.exit_crit_edge
  call void @of_node_put(ptr noundef %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cs35l33_get_hg_data.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_irq_thread(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  %sticky_val1 = alloca i32, align 4
  %sticky_val2 = alloca i32, align 4
  %current_val = alloca i32, align 4
  %mask1 = alloca i32, align 4
  %mask2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sticky_val1) #8
  %2 = ptrtoint ptr %sticky_val1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sticky_val1, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sticky_val2) #8
  %3 = ptrtoint ptr %sticky_val2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sticky_val2, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_val) #8
  %4 = ptrtoint ptr %current_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %current_val, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask1) #8
  %5 = ptrtoint ptr %mask1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mask1, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask2) #8
  %6 = ptrtoint ptr %mask2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mask2, align 4, !annotation !329
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %8, i32 noundef 22, ptr noundef nonnull %sticky_val2) #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %10, i32 noundef 21, ptr noundef nonnull %sticky_val1) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_read(ptr noundef %12, i32 noundef 20, ptr noundef nonnull %mask2) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_read(ptr noundef %14, i32 noundef 19, ptr noundef nonnull %mask1) #8
  %15 = ptrtoint ptr %sticky_val1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sticky_val1, align 4
  %17 = ptrtoint ptr %mask1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask1, align 4
  %neg = xor i32 %18, -1
  %and = and i32 %16, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %19 = ptrtoint ptr %sticky_val2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sticky_val2, align 4
  %21 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask2, align 4
  %neg8 = xor i32 %22, -1
  %and9 = and i32 %20, %neg8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call12 = call i32 @regmap_read(ptr noundef %24, i32 noundef 21, ptr noundef nonnull %current_val) #8
  %25 = ptrtoint ptr %sticky_val1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sticky_val1, align 4
  %and13 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end.if.end36_crit_edge, label %do.end

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %28, ptr noundef nonnull @.str.56) #11
  %29 = ptrtoint ptr %current_val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %current_val, align 4
  %and16 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body19, label %do.end.if.end36_crit_edge

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.body19:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_irq_thread.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_irq_thread, %if.then24)) #8
          to label %do.end28 [label %if.then24], !srcloc !330

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_irq_thread.__UNIQUE_ID_ddebug317, ptr noundef %32, ptr noundef nonnull @.str.60) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body19
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 18, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i227 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 18, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call.i228 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 18, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end36

if.end36:                                         ; preds = %do.end28, %do.end.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %39 = ptrtoint ptr %sticky_val1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sticky_val1, align 4
  %and37 = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end71_crit_edge, label %do.end42

if.end36.if.end71_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

do.end42:                                         ; preds = %if.end36
  %dev43 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev43, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.62) #11
  %amp_cal = getelementptr inbounds %struct.cs35l33_private, ptr %data, i32 0, i32 4
  %43 = ptrtoint ptr %amp_cal to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %amp_cal, align 4
  %44 = ptrtoint ptr %current_val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %current_val, align 4
  %and44 = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body47, label %do.end42.if.end71_crit_edge

do.end42.if.end71_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

do.body47:                                        ; preds = %do.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_irq_thread.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_irq_thread, %if.then59)) #8
          to label %do.end63 [label %if.then59], !srcloc !330

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev43, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_irq_thread.__UNIQUE_ID_ddebug318, ptr noundef %47, ptr noundef nonnull @.str.64) #8
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body47
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call.i229 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 18, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call.i230 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 18, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call.i231 = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 18, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end71

if.end71:                                         ; preds = %do.end63, %do.end42.if.end71_crit_edge, %if.end36.if.end71_crit_edge
  %54 = ptrtoint ptr %sticky_val1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sticky_val1, align 4
  %and72 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end106_crit_edge, label %do.end77

if.end71.if.end106_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

do.end77:                                         ; preds = %if.end71
  %dev78 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %56 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev78, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %57, ptr noundef nonnull @.str.66) #11
  %58 = ptrtoint ptr %current_val to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %current_val, align 4
  %and79 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body82, label %do.end77.if.end106_crit_edge

do.end77.if.end106_crit_edge:                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

do.body82:                                        ; preds = %do.end77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_irq_thread.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_irq_thread, %if.then94)) #8
          to label %do.end98 [label %if.then94], !srcloc !330

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev78, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_irq_thread.__UNIQUE_ID_ddebug319, ptr noundef %61, ptr noundef nonnull @.str.68) #8
  br label %do.end98

do.end98:                                         ; preds = %if.then94, %do.body82
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call.i232 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 18, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %call.i233 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 18, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call.i234 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 18, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end106

if.end106:                                        ; preds = %do.end98, %do.end77.if.end106_crit_edge, %if.end71.if.end106_crit_edge
  %68 = ptrtoint ptr %sticky_val1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sticky_val1, align 4
  %and107 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end106.if.end141_crit_edge, label %do.end112

if.end106.if.end141_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

do.end112:                                        ; preds = %if.end106
  %dev113 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %70 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev113, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.70) #11
  %72 = ptrtoint ptr %current_val to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %current_val, align 4
  %and114 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.body117, label %do.end112.if.end141_crit_edge

do.end112.if.end141_crit_edge:                    ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

do.body117:                                       ; preds = %do.end112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_irq_thread.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_irq_thread, %if.then129)) #8
          to label %do.end133 [label %if.then129], !srcloc !330

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev113, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_irq_thread.__UNIQUE_ID_ddebug320, ptr noundef %75, ptr noundef nonnull @.str.72) #8
  br label %do.end133

do.end133:                                        ; preds = %if.then129, %do.body117
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call.i235 = call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 18, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %78 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap, align 4
  %call.i236 = call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 18, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %call.i237 = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 18, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end141

if.end141:                                        ; preds = %do.end133, %do.end112.if.end141_crit_edge, %if.end106.if.end141_crit_edge
  %82 = ptrtoint ptr %sticky_val1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sticky_val1, align 4
  %and142 = and i32 %83, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end141.if.end149_crit_edge, label %do.end147

if.end141.if.end149_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

do.end147:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %dev148 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %84 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev148, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.74) #11
  br label %if.end149

if.end149:                                        ; preds = %do.end147, %if.end141.if.end149_crit_edge
  %86 = ptrtoint ptr %sticky_val1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sticky_val1, align 4
  %and150 = and i32 %87, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end149.if.end157_crit_edge, label %do.end155

if.end149.if.end157_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

do.end155:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %dev156 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %88 = ptrtoint ptr %dev156 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev156, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.77) #11
  br label %if.end157

if.end157:                                        ; preds = %do.end155, %if.end149.if.end157_crit_edge
  %90 = ptrtoint ptr %sticky_val2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sticky_val2, align 4
  %and158 = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end157.if.end165_crit_edge, label %do.end163

if.end157.if.end165_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165

do.end163:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  %dev164 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %92 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev164, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.80) #11
  br label %if.end165

if.end165:                                        ; preds = %do.end163, %if.end157.if.end165_crit_edge
  %94 = ptrtoint ptr %sticky_val2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sticky_val2, align 4
  %and166 = and i32 %95, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.end165.if.end173_crit_edge, label %do.end171

if.end165.if.end173_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end173

do.end171:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  %dev172 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %dev172 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev172, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.83) #11
  br label %if.end173

if.end173:                                        ; preds = %do.end171, %if.end165.if.end173_crit_edge
  %98 = ptrtoint ptr %sticky_val2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sticky_val2, align 4
  %and174 = and i32 %99, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end173.cleanup_crit_edge, label %do.end179

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end179:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  %dev180 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %100 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev180, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.86) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end179, %if.end173.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %do.end179 ], [ 1, %if.end173.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_val) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sticky_val2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sticky_val1) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cirrus_read_device_id(ptr noundef %regmap) unnamed_addr #5 align 64 {
entry:
  %devid = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %devid) #8
  %0 = ptrtoint ptr %devid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %devid, align 1, !annotation !329
  %1 = getelementptr inbounds [3 x i8], ptr %devid, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !329
  %3 = getelementptr inbounds [3 x i8], ptr %devid, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !329
  %call = call i32 @regmap_bulk_read(ptr noundef %regmap, i32 noundef 1, ptr noundef nonnull %devid, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %devid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %devid, align 1
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv, 12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  %conv2 = zext i8 %8 to i32
  %shl4 = shl nuw nsw i32 %conv2, 4
  %or = or i32 %shl4, %shl
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  %11 = lshr i8 %10, 4
  %12 = zext i8 %11 to i32
  %or8 = or i32 %or, %12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or8, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %devid) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs35l33_writeable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 5, label %entry.return_crit_edge3
    i32 21, label %entry.return_crit_edge4
    i32 22, label %entry.return_crit_edge5
    i32 63, label %entry.return_crit_edge6
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6
  %retval.0 = phi i1 [ true, %sw.default ], [ false, %entry.return_crit_edge ], [ false, %entry.return_crit_edge1 ], [ false, %entry.return_crit_edge2 ], [ false, %entry.return_crit_edge3 ], [ false, %entry.return_crit_edge4 ], [ false, %entry.return_crit_edge5 ], [ false, %entry.return_crit_edge6 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs35l33_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
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
    i32 17, label %entry.return_crit_edge15
    i32 18, label %entry.return_crit_edge16
    i32 19, label %entry.return_crit_edge17
    i32 20, label %entry.return_crit_edge18
    i32 21, label %entry.return_crit_edge19
    i32 22, label %entry.return_crit_edge20
    i32 23, label %entry.return_crit_edge21
    i32 24, label %entry.return_crit_edge22
    i32 25, label %entry.return_crit_edge23
    i32 35, label %entry.return_crit_edge24
    i32 36, label %entry.return_crit_edge25
    i32 37, label %entry.return_crit_edge26
    i32 41, label %entry.return_crit_edge27
    i32 42, label %entry.return_crit_edge28
    i32 45, label %entry.return_crit_edge29
    i32 46, label %entry.return_crit_edge30
    i32 47, label %entry.return_crit_edge31
    i32 48, label %entry.return_crit_edge32
    i32 49, label %entry.return_crit_edge33
    i32 50, label %entry.return_crit_edge34
    i32 51, label %entry.return_crit_edge35
    i32 52, label %entry.return_crit_edge36
    i32 53, label %entry.return_crit_edge37
    i32 54, label %entry.return_crit_edge38
    i32 55, label %entry.return_crit_edge39
    i32 56, label %entry.return_crit_edge40
    i32 57, label %entry.return_crit_edge41
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs35l33_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 5, label %entry.return_crit_edge3
    i32 21, label %entry.return_crit_edge4
    i32 22, label %entry.return_crit_edge5
    i32 63, label %entry.return_crit_edge6
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_probe(ptr noundef %component) #2 align 64 {
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
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %3, align 4
  %5 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 10, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %pdata = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdata, align 4
  %call.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 11, i32 noundef 63, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %amp_drv_sel = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %amp_drv_sel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %amp_drv_sel, align 4
  %shl = shl i32 %17, 4
  %call.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 17, i32 noundef 16, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %boost_ipk = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %boost_ipk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %boost_ipk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %24 = add i32 %19, -3600001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1750001, i32 %24)
  %25 = icmp ult i32 %24, -1750001
  br i1 %25, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.116, i32 noundef %19) #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %rem.i = urem i32 %19, 15625
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %while.cond.preheader.i, label %do.end5.i

while.cond.preheader.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1850000, i32 %19)
  %cmp81.i = icmp ugt i32 %19, 1850000
  %26 = add nsw i32 %19, -1850001
  %27 = udiv i32 %26, 15625
  %phi.bo.i = add nuw nsw i32 %27, 113
  %steps.0.lcssa.i = select i1 %cmp81.i, i32 %phi.bo.i, i32 112
  %regmap.i = getelementptr inbounds %struct.cs35l33_private, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call9.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 9, i32 noundef %steps.0.lcssa.i) #8
  br label %if.end

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.119, i32 noundef %19) #11
  br label %if.end

if.end:                                           ; preds = %do.end5.i, %while.cond.preheader.i, %do.end.i, %entry.if.end_crit_edge
  %enable_soft_ramp = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 9
  %30 = ptrtoint ptr %enable_soft_ramp to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enable_soft_ramp, align 1, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15.not = icmp eq i8 %31, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 15, i32 noundef 16, i32 noundef 16) #8
  %ramp_rate = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %ramp_rate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ramp_rate, align 4
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 15, i32 noundef 15, i32 noundef %33) #8
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 15, i32 noundef 16, i32 noundef 0) #8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  %imon_adc_scale = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %imon_adc_scale to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %imon_adc_scale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %35)
  %cmp.not = icmp eq i32 %35, 8
  br i1 %cmp.not, label %if.end21.if.end27_crit_edge, label %if.then23

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 14, i32 noundef 15, i32 noundef %35) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end21.if.end27_crit_edge
  %hg_config1.i = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 5
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %36 = ptrtoint ptr %hg_config1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hg_config1.i, align 4, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i62 = icmp eq i8 %37, 0
  br i1 %tobool.not.i62, label %if.end27.cs35l33_set_hg_data.exit_crit_edge, label %if.then.i

if.end27.cs35l33_set_hg_data.exit_crit_edge:      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs35l33_set_hg_data.exit

if.then.i:                                        ; preds = %if.end27
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i64 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i.i64, align 4
  %regmap.i65 = getelementptr inbounds %struct.cs35l33_private, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %regmap.i65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i65, align 4
  %mem_depth.i = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 5, i32 1
  %44 = ptrtoint ptr %mem_depth.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mem_depth.i, align 4
  %shl.i = shl i32 %45, 5
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 35, i32 noundef 96, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %46 = ptrtoint ptr %regmap.i65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i65, align 4
  %release_rate.i = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 5, i32 2
  %48 = ptrtoint ptr %release_rate.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %release_rate.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 36, i32 noundef %49) #8
  %50 = ptrtoint ptr %regmap.i65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i65, align 4
  %hd_rm.i = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 5, i32 3
  %52 = ptrtoint ptr %hd_rm.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hd_rm.i, align 4
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 41, i32 noundef 127, i32 noundef %53, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %54 = ptrtoint ptr %regmap.i65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i65, align 4
  %ldo_thld.i = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 5, i32 4
  %56 = ptrtoint ptr %ldo_thld.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ldo_thld.i, align 4
  %shl10.i = shl i32 %57, 1
  %call.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 35, i32 noundef 30, i32 noundef %shl10.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %58 = ptrtoint ptr %regmap.i65 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i65, align 4
  %ldo_path_disable.i = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 5, i32 5
  %60 = ptrtoint ptr %ldo_path_disable.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ldo_path_disable.i, align 4
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 35, i32 noundef 1, i32 noundef %61, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %62 = ptrtoint ptr %regmap.i65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i65, align 4
  %ldo_entry_delay.i = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 5, i32 6
  %64 = ptrtoint ptr %ldo_entry_delay.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ldo_entry_delay.i, align 4
  %shl16.i = shl i32 %65, 2
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 37, i32 noundef 28, i32 noundef %shl16.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %vp_hg_auto.i = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 5, i32 7
  %66 = ptrtoint ptr %vp_hg_auto.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %vp_hg_auto.i, align 4, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool18.not.i = icmp eq i8 %67, 0
  br i1 %tobool18.not.i, label %if.then.i.if.end.i66_crit_edge, label %if.then19.i

if.then.i.if.end.i66_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i66

if.then19.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %regmap.i65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i65, align 4
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 42, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call22.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @cs35l33_vphg_auto_route, i32 noundef 2) #8
  br label %if.end.i66

if.end.i66:                                       ; preds = %if.then19.i, %if.then.i.if.end.i66_crit_edge
  %70 = ptrtoint ptr %regmap.i65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap.i65, align 4
  %vp_hg.i = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 5, i32 8
  %72 = ptrtoint ptr %vp_hg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vp_hg.i, align 4
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 42, i32 noundef 31, i32 noundef %73, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %74 = ptrtoint ptr %regmap.i65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap.i65, align 4
  %vp_hg_rate.i = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 5, i32 9
  %76 = ptrtoint ptr %vp_hg_rate.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vp_hg_rate.i, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 37, i32 noundef 3, i32 noundef %77, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %78 = ptrtoint ptr %regmap.i65 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i65, align 4
  %vp_hg_va.i = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 1, i32 5, i32 10
  %80 = ptrtoint ptr %vp_hg_va.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vp_hg_va.i, align 4
  %shl30.i = shl i32 %81, 5
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 37, i32 noundef 224, i32 noundef %shl30.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %82 = ptrtoint ptr %regmap.i65 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap.i65, align 4
  %call.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 42, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cs35l33_set_hg_data.exit

cs35l33_set_hg_data.exit:                         ; preds = %if.end.i66, %if.end27.cs35l33_set_hg_data.exit_crit_edge
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef 19, i32 noundef 71, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %86 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i, align 4
  %call.i68 = tail call i32 @__pm_runtime_idle(ptr noundef %87, i32 noundef 4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_component_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %4 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %freq, label %sw.default [
    i32 5644800, label %entry.sw.bb_crit_edge
    i32 6000000, label %entry.sw.bb_crit_edge23
    i32 6144000, label %entry.sw.bb_crit_edge24
    i32 11289600, label %entry.sw.bb2_crit_edge
    i32 12000000, label %entry.sw.bb2_crit_edge25
    i32 12288000, label %entry.sw.bb2_crit_edge26
  ]

entry.sw.bb2_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge23, %entry.sw.bb_crit_edge24
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 8, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %do.body

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge25, %entry.sw.bb2_crit_edge26
  %regmap3 = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap3, align 4
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 8, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %div20 = lshr i32 %freq, 1
  br label %do.body

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mclk_int6 = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %mclk_int6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mclk_int6, align 4
  br label %cleanup

do.body:                                          ; preds = %sw.bb2, %sw.bb
  %freq.sink = phi i32 [ %freq, %sw.bb ], [ %div20, %sw.bb2 ]
  %mclk_int = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %mclk_int to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %freq.sink, ptr %mclk_int, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_component_set_sysclk.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_component_set_sysclk, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !330

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %mclk_int10 = getelementptr inbounds %struct.cs35l33_private, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %mclk_int10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mclk_int10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_component_set_sysclk.__UNIQUE_ID_ddebug314, ptr noundef %12, ptr noundef nonnull @.str.122, i32 noundef %freq, i32 noundef %14) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %if.then ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !329
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %5 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
    i32 0, label %entry.sw.epilog_crit_edge19
  ]

entry.sw.epilog_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 6, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 8, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %regmap5 = getelementptr inbounds %struct.cs35l33_private, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap5, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 6, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap5, align 4
  %call8 = call i32 @regmap_read(ptr noundef %13, i32 noundef 22, ptr noundef nonnull %val) #8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #8
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb4.sw.epilog_crit_edge, label %if.then

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap5, align 4
  %call.i18 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 8, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb4.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge19
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_sx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_sx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_sx(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_spkrdrv_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %event, label %do.end47 [
    i32 2, label %sw.bb
    i32 8, label %do.body28
  ]

sw.bb:                                            ; preds = %entry
  %amp_cal = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %amp_cal to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %amp_cal, align 4, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.do.body10_crit_edge

sw.bb.do.body10_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 8000, i32 noundef 9000, i32 noundef 2) #8
  %9 = ptrtoint ptr %amp_cal to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %amp_cal, align 4
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 17, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_spkrdrv_event.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_spkrdrv_event, %if.then8)) #8
          to label %do.body10 [label %if.then8], !srcloc !330

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_spkrdrv_event.__UNIQUE_ID_ddebug295, ptr noundef %13, ptr noundef nonnull @.str.102) #8
  br label %do.body10

do.body10:                                        ; preds = %if.then8, %if.then, %sw.bb.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_spkrdrv_event.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_spkrdrv_event, %if.then22)) #8
          to label %sw.epilog [label %if.then22], !srcloc !330

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_spkrdrv_event.__UNIQUE_ID_ddebug296, ptr noundef %15, ptr noundef nonnull @.str.103) #8
  br label %sw.epilog

do.body28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_spkrdrv_event.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_spkrdrv_event, %if.then40)) #8
          to label %sw.epilog [label %if.then40], !srcloc !330

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_spkrdrv_event.__UNIQUE_ID_ddebug297, ptr noundef %17, ptr noundef nonnull @.str.104) #8
  br label %sw.epilog

do.end47:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.105, i32 noundef %event) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end47, %if.then40, %do.body28, %if.then22, %do.body10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_sdin_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %event, label %do.end73 [
    i32 1, label %sw.bb
    i32 2, label %do.body10
    i32 8, label %sw.bb49
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 6, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %is_tdm_mode = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %is_tdm_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_tdm_mode, align 4, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool.not, i32 2, i32 0
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i96 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 7, i32 noundef 2, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_sdin_event.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_sdin_event, %if.then)) #8
          to label %sw.epilog [label %if.then], !srcloc !330

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_sdin_event.__UNIQUE_ID_ddebug298, ptr noundef %14, ptr noundef nonnull @.str.107) #8
  br label %sw.epilog

do.body10:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_sdin_event.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_sdin_event, %if.then22)) #8
          to label %do.end26 [label %if.then22], !srcloc !330

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_sdin_event.__UNIQUE_ID_ddebug299, ptr noundef %16, ptr noundef nonnull @.str.108) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body10
  %amp_cal = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %amp_cal to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %amp_cal, align 4, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool27.not = icmp eq i8 %18, 0
  br i1 %tobool27.not, label %if.then28, label %do.end26.sw.epilog_crit_edge

do.end26.sw.epilog_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then28:                                        ; preds = %do.end26
  %regmap29 = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %regmap29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap29, align 4
  %call.i97 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 17, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_sdin_event.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_sdin_event, %if.then43)) #8
          to label %do.end47 [label %if.then43], !srcloc !330

if.then43:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_sdin_event.__UNIQUE_ID_ddebug300, ptr noundef %22, ptr noundef nonnull @.str.109) #8
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %if.then28
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap50 = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %regmap50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap50, align 4
  %call.i98 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 7, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 4100, i32 noundef 2) #8
  %25 = ptrtoint ptr %regmap50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap50, align 4
  %call.i99 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 6, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_sdin_event.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_sdin_event, %if.then66)) #8
          to label %sw.epilog [label %if.then66], !srcloc !330

if.then66:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_sdin_event.__UNIQUE_ID_ddebug301, ptr noundef %28, ptr noundef nonnull @.str.110) #8
  br label %sw.epilog

do.end73:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.105, i32 noundef %event) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end73, %if.then66, %sw.bb49, %do.end47, %do.end26.sw.epilog_crit_edge, %if.then, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_sdout_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %event, label %do.end28 [
    i32 1, label %sw.bb
    i32 4, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %is_tdm_mode = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %is_tdm_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_tdm_mode, align 4, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %. = select i1 %tobool.not, i32 2, i32 8
  %.44 = select i1 %tobool.not, i32 32, i32 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_sdout_event.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_sdout_event, %if.then6)) #8
          to label %sw.epilog [label %if.then6], !srcloc !330

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_sdout_event.__UNIQUE_ID_ddebug302, ptr noundef %10, ptr noundef nonnull @.str.112) #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_sdout_event.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_sdout_event, %if.then21)) #8
          to label %sw.epilog [label %if.then21], !srcloc !330

if.then21:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_sdout_event.__UNIQUE_ID_ddebug303, ptr noundef %12, ptr noundef nonnull @.str.113) #8
  br label %sw.epilog

do.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.105, i32 noundef %event) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.then21, %sw.bb8, %if.then6, %sw.bb
  %val.1 = phi i32 [ 10, %if.then21 ], [ %., %if.then6 ], [ %., %sw.bb ], [ 10, %sw.bb8 ]
  %val2.1 = phi i32 [ 32, %if.then21 ], [ %.44, %if.then6 ], [ %.44, %sw.bb ], [ 32, %sw.bb8 ]
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 7, i32 noundef 10, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 8, i32 noundef 32, i32 noundef %val2.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end28
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.151)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 13, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_set_dai_fmt, %if.then)) #8
          to label %sw.epilog [label %if.then], !srcloc !330

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug304, ptr noundef %11, ptr noundef nonnull @.str.125) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap7 = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap7, align 4
  %call.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 13, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_set_dai_fmt, %if.then21)) #8
          to label %sw.epilog [label %if.then21], !srcloc !330

if.then21:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug305, ptr noundef %15, ptr noundef nonnull @.str.126) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then21, %sw.bb6, %if.then, %sw.bb
  %and26 = and i32 %fmt, 15
  %16 = zext i32 %and26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %and26, label %sw.epilog.cleanup_crit_edge [
    i32 4, label %sw.bb27
    i32 1, label %sw.bb45
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb27:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %is_tdm_mode = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %is_tdm_mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %is_tdm_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_set_dai_fmt, %if.then40)) #8
          to label %cleanup [label %if.then40], !srcloc !330

if.then40:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug306, ptr noundef %19, ptr noundef nonnull @.str.127) #8
  br label %cleanup

sw.bb45:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %is_tdm_mode46 = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 8
  %20 = ptrtoint ptr %is_tdm_mode46 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %is_tdm_mode46, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_set_dai_fmt, %if.then59)) #8
          to label %cleanup [label %if.then59], !srcloc !330

if.then59:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug307, ptr noundef %22, ptr noundef nonnull @.str.128) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %sw.bb45, %if.then40, %sw.bb27, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then59 ], [ 0, %if.then40 ], [ 0, %sw.bb27 ], [ 0, %sw.bb45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %slot_width)
  %cmp.not = icmp eq i32 %slot_width, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.cttz.i32(i32 %rx_mask, i1 true), !range !332
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_mask)
  %iszero = icmp eq i32 %rx_mask, 0
  %sub = select i1 %iszero, i32 -1, i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp3 = icmp sgt i32 %sub, -1
  br i1 %cmp3, label %if.then4, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 54, i32 noundef 31, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_set_tdm_slot, %if.then9)) #8
          to label %if.end11 [label %if.then9], !srcloc !330

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug309, ptr noundef %10, ptr noundef nonnull @.str.130, i32 noundef %sub) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then4, %if.end.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %iszero12.not = icmp eq i32 %tx_mask, 0
  %regmap16 = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap16, align 4
  %call.i182 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 47, i32 noundef 159, i32 noundef 159, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %13 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap16, align 4
  %call.i182.1 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 48, i32 noundef 159, i32 noundef 159, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call18 = tail call i32 @snd_soc_dapm_del_routes(ptr noundef %dapm.i, ptr noundef nonnull @cs35l33_vp_vbst_mon_route, i32 noundef 4) #8
  br i1 %iszero12.not, label %if.end11.cleanup_crit_edge, label %while.body.preheader

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.preheader:                             ; preds = %if.end11
  %15 = tail call i32 @llvm.cttz.i32(i32 %tx_mask, i1 true), !range !332
  br label %while.body

while.body:                                       ; preds = %if.end111.while.body_crit_edge, %while.body.preheader
  %tx_mask.addr.0200 = phi i32 [ %and, %if.end111.while.body_crit_edge ], [ %tx_mask, %while.body.preheader ]
  %slot.0199 = phi i32 [ %35, %if.end111.while.body_crit_edge ], [ %15, %while.body.preheader ]
  %slot_num.0198 = phi i32 [ %inc122, %if.end111.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %16 = zext i32 %slot_num.0198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %slot_num.0198, label %while.body.if.end111_crit_edge [
    i32 0, label %if.then21
    i32 3, label %if.then44
    i32 4, label %if.then67
    i32 5, label %if.then90
  ]

while.body.if.end111_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap16, align 4
  %call.i183 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 45, i32 noundef 159, i32 noundef %slot.0199, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_set_tdm_slot, %if.end42.thread)) #8
          to label %if.end111 [label %if.end42.thread], !srcloc !330

if.end42.thread:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %add38 = add nuw nsw i32 %slot.0199, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug310, ptr noundef %20, ptr noundef nonnull @.str.131, i32 noundef %slot.0199, i32 noundef %add38) #8
  br label %if.end111

if.then44:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap16, align 4
  %call.i184 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 46, i32 noundef 159, i32 noundef %slot.0199, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_set_tdm_slot, %if.end65.thread)) #8
          to label %if.end111 [label %if.end65.thread], !srcloc !330

if.end65.thread:                                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %add61 = add nuw nsw i32 %slot.0199, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug311, ptr noundef %24, ptr noundef nonnull @.str.132, i32 noundef %slot.0199, i32 noundef %add61) #8
  br label %if.end111

if.then67:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap16, align 4
  %call.i185 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 47, i32 noundef 159, i32 noundef %slot.0199, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call70 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @cs35l33_vp_vbst_mon_route, i32 noundef 2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_set_tdm_slot, %if.then83)) #8
          to label %if.end111 [label %if.then83], !srcloc !330

if.then83:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug312, ptr noundef %28, ptr noundef nonnull @.str.133, i32 noundef %slot.0199) #8
  br label %if.end111

if.then90:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap16, align 4
  %call.i186 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 48, i32 noundef 159, i32 noundef %slot.0199, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call93 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef getelementptr inbounds ([4 x %struct.snd_soc_dapm_route], ptr @cs35l33_vp_vbst_mon_route, i32 0, i32 2), i32 noundef 2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_set_tdm_slot, %if.then106)) #8
          to label %if.end111 [label %if.then106], !srcloc !330

if.then106:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug313, ptr noundef %32, ptr noundef nonnull @.str.134, i32 noundef %slot.0199) #8
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %if.then90, %if.then83, %if.then67, %if.end65.thread, %if.then44, %if.end42.thread, %if.then21, %while.body.if.end111_crit_edge
  %div193195 = lshr i32 %slot.0199, 3
  %sub112 = sub nuw nsw i32 53, %div193195
  %mul.neg = mul nsw i32 %div193195, -8
  %sub114 = add nsw i32 %mul.neg, %slot.0199
  %33 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap16, align 4
  %shl = shl nuw i32 1, %sub114
  %call.i187 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %sub112, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %shl118 = shl nuw i32 1, %slot.0199
  %neg = xor i32 %shl118, -1
  %and = and i32 %tx_mask.addr.0200, %neg
  %35 = tail call i32 @llvm.cttz.i32(i32 %and, i1 true), !range !332
  %iszero119.not = icmp eq i32 %and, 0
  %inc122 = add i32 %slot_num.0198, 1
  br i1 %iszero119.not, label %if.end111.cleanup_crit_edge, label %if.end111.while.body_crit_edge

if.end111.while.body_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end111.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.end111.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_set_tristate(ptr nocapture noundef readonly %dai, i32 noundef %tristate) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tristate)
  %tobool.not = icmp eq i32 %tristate, 0
  %regmap5 = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap5, align 4
  %. = select i1 %tobool.not, i32 0, i32 8
  %.16 = select i1 %tobool.not, i32 0, i32 32
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 7, i32 noundef 8, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap5, align 4
  %call.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 8, i32 noundef 32, i32 noundef %.16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_pcm_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @cs35l33_constraints) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_pcm_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !332
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
  %mclk_int = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %mclk_int to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mclk_int, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %params_width.exit
  %i.010.i = phi i32 [ 0, %params_width.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [21 x %struct.cs35l33_mclk_div], ptr @cs35l33_mclk_coeffs, i32 0, i32 %i.010.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %12)
  %cmp2.i = icmp eq i32 %16, %12
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %srate4.i = getelementptr [21 x %struct.cs35l33_mclk_div], ptr @cs35l33_mclk_coeffs, i32 0, i32 %i.010.i, i32 1
  %17 = ptrtoint ptr %srate4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %srate4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %14)
  %cmp5.i = icmp eq i32 %18, %14
  br i1 %cmp5.i, label %if.end, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %int_fs_ratio = getelementptr [21 x %struct.cs35l33_mclk_div], ptr @cs35l33_mclk_coeffs, i32 0, i32 %i.010.i, i32 3
  %21 = ptrtoint ptr %int_fs_ratio to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %int_fs_ratio, align 1
  %adsp_rate = getelementptr [21 x %struct.cs35l33_mclk_div], ptr @cs35l33_mclk_coeffs, i32 0, i32 %i.010.i, i32 2
  %23 = ptrtoint ptr %adsp_rate to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %adsp_rate, align 4
  %or39 = or i8 %24, %22
  %or = zext i8 %or39 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 8, i32 noundef 31, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %is_tdm_mode = getelementptr inbounds %struct.cs35l33_private, ptr %5, i32 0, i32 8
  %25 = ptrtoint ptr %is_tdm_mode to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_tdm_mode, align 4, !range !331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then8

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div = sdiv i32 %call1.i, 8
  %27 = tail call i32 @llvm.smin.i32(i32 %div, i32 3)
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %30 = shl i32 %27, 5
  %shl = add i32 %30, -32
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 54, i32 noundef 224, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %do.body

do.body:                                          ; preds = %if.then8, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_pcm_hw_params.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_pcm_hw_params, %if.then20)) #8
          to label %cleanup [label %if.then20], !srcloc !330

if.then20:                                        ; preds = %do.body
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i44 = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i44, label %for.inc.i.i.i51, label %if.then20.if.then.i.i.i48_crit_edge

if.then20.if.then.i.i.i48_crit_edge:              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i48

if.then.i.i.i48:                                  ; preds = %for.inc.i.i.i51.if.then.i.i.i48_crit_edge, %if.then20.if.then.i.i.i48_crit_edge
  %i.09.lcssa.i.i.i45 = phi i32 [ 0, %if.then20.if.then.i.i.i48_crit_edge ], [ 32, %for.inc.i.i.i51.if.then.i.i.i48_crit_edge ]
  %.lcssa.i.i.i46 = phi i32 [ %36, %if.then20.if.then.i.i.i48_crit_edge ], [ %39, %for.inc.i.i.i51.if.then.i.i.i48_crit_edge ]
  %37 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i46, i1 true) #8, !range !332
  %add.i.i.i47 = or i32 %37, %i.09.lcssa.i.i.i45
  br label %params_width.exit54

for.inc.i.i.i51:                                  ; preds = %if.then20
  %arrayidx.1.i.i.i49 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx.1.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.1.i.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.1.i.i.i50 = icmp eq i32 %39, 0
  br i1 %tobool.not.1.i.i.i50, label %for.inc.i.i.i51.params_width.exit54_crit_edge, label %for.inc.i.i.i51.if.then.i.i.i48_crit_edge

for.inc.i.i.i51.if.then.i.i.i48_crit_edge:        ; preds = %for.inc.i.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i48

for.inc.i.i.i51.params_width.exit54_crit_edge:    ; preds = %for.inc.i.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit54

params_width.exit54:                              ; preds = %for.inc.i.i.i51.params_width.exit54_crit_edge, %if.then.i.i.i48
  %retval.0.i.i.i52 = phi i32 [ %add.i.i.i47, %if.then.i.i.i48 ], [ 0, %for.inc.i.i.i51.params_width.exit54_crit_edge ]
  %call1.i53 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i52) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_pcm_hw_params.__UNIQUE_ID_ddebug308, ptr noundef %32, ptr noundef nonnull @.str.136, i32 noundef %34, i32 noundef %call1.i53) #8
  br label %cleanup

cleanup:                                          ; preds = %params_width.exit54, %do.body, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %params_width.exit54 ], [ 0, %do.body ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_del_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_runtime_suspend.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_runtime_suspend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !330

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_runtime_suspend.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.137) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %amp_cal = getelementptr inbounds %struct.cs35l33_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %amp_cal to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %amp_cal, align 4
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %4, i1 noundef zeroext true) #8
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %6) #8
  %num_core_supplies = getelementptr inbounds %struct.cs35l33_private, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_core_supplies, align 4
  %core_supplies = getelementptr inbounds %struct.cs35l33_private, ptr %1, i32 0, i32 6
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef %8, ptr noundef %core_supplies) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l33_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l33_runtime_resume.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l33_runtime_resume, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !330

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l33_runtime_resume.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reset_gpio = getelementptr inbounds %struct.cs35l33_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #8
  %num_core_supplies = getelementptr inbounds %struct.cs35l33_private, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_core_supplies, align 4
  %core_supplies = getelementptr inbounds %struct.cs35l33_private, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @regulator_bulk_enable(i32 noundef %5, ptr noundef %core_supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call4) #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %regmap = getelementptr inbounds %struct.cs35l33_private, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 50) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call12 = tail call i32 @regcache_sync(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end9.cleanup_crit_edge, label %do.end17

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.141) #11
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext true) #8
  %14 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_core_supplies, align 4
  %call23 = tail call i32 @regulator_bulk_disable(i32 noundef %15, ptr noundef %core_supplies) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end9.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ %call4, %do.end8 ], [ %call12, %do.end17 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !131, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !195, !196, !198, !199, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !226, !228, !229, !231, !232, !234, !236, !238, !240, !241, !242, !243, !245, !246, !247, !249, !251, !252, !253, !255, !257, !259, !261, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !292, !294, !296, !297, !298, !300, !302, !304, !306, !307, !308, !310, !311, !313, !314, !316, !317, !318}
!llvm.module.flags = !{!320, !321, !322, !323, !324, !325, !326, !327}
!llvm.ident = !{!328}

!0 = !{ptr @__initcall__kmod_snd_soc_cs35l33__321_1293_cs35l33_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_cs35l33__321_1293_cs35l33_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cs35l33.c", i32 1293, i32 1}
!2 = !{ptr @__exitcall_cs35l33_i2c_driver_exit, !1, !"__exitcall_cs35l33_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description322, !4, !"__UNIQUE_ID_description322", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/cs35l33.c", i32 1295, i32 1}
!5 = !{ptr @__UNIQUE_ID_author323, !6, !"__UNIQUE_ID_author323", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/cs35l33.c", i32 1296, i32 1}
!7 = !{ptr @__UNIQUE_ID_file324, !8, !"__UNIQUE_ID_file324", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/cs35l33.c", i32 1297, i32 1}
!9 = !{ptr @__UNIQUE_ID_license325, !8, !"__UNIQUE_ID_license325", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/cs35l33.c", i32 1283, i32 11}
!12 = !{ptr @cs35l33_i2c_driver, !13, !"cs35l33_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/cs35l33.c", i32 1281, i32 26}
!14 = !{ptr @cs35l33_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/cs35l33.c", i32 1133, i32 20}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/cs35l33.c", i32 1136, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cs35l33_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @cs35l33_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/cs35l33.c", i32 1151, i32 3}
!27 = !{ptr @cs35l33_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cs35l33_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/cs35l33.c", i32 1168, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cs35l33_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @cs35l33_i2c_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/cs35l33.c", i32 1172, i32 4}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/cs35l33.c", i32 1174, i32 3}
!38 = !{ptr @cs35l33_i2c_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cs35l33_i2c_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/cs35l33.c", i32 1182, i32 3}
!42 = !{ptr @cs35l33_i2c_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cs35l33_i2c_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/cs35l33.c", i32 1197, i32 3}
!46 = !{ptr @cs35l33_i2c_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cs35l33_i2c_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/cs35l33.c", i32 1202, i32 3}
!50 = !{ptr @cs35l33_i2c_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cs35l33_i2c_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/cs35l33.c", i32 1211, i32 3}
!54 = !{ptr @cs35l33_i2c_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cs35l33_i2c_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/cs35l33.c", i32 1215, i32 2}
!58 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cs35l33_i2c_probe._entry.30, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @cs35l33_i2c_probe._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/cs35l33.c", i32 1221, i32 3}
!63 = !{ptr @cs35l33_i2c_probe._entry.34, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cs35l33_i2c_probe._entry_ptr.36, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/cs35l33.c", i32 1239, i32 3}
!67 = !{ptr @cs35l33_i2c_probe._entry.37, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @cs35l33_i2c_probe._entry_ptr.39, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @cs35l33_regmap, !70, !"cs35l33_regmap", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/cs35l33.c", i32 846, i32 35}
!71 = !{ptr @cs35l33_reg, !72, !"cs35l33_reg", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/cs35l33.c", i32 54, i32 33}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/cs35l33.c", i32 1076, i32 2}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/cs35l33.c", i32 1077, i32 2}
!77 = distinct !{null, !78, !"cs35l33_core_supplies", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/cs35l33.c", i32 1075, i32 27}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/cs35l33.c", i32 1090, i32 31}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/cs35l33.c", i32 1095, i32 31}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/cs35l33.c", i32 1100, i32 31}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/cs35l33.c", i32 1103, i32 31}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/cs35l33.c", i32 929, i32 32}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/cs35l33.c", i32 933, i32 32}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/cs35l33.c", i32 935, i32 32}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/cs35l33.c", i32 938, i32 32}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/cs35l33.c", i32 940, i32 32}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/cs35l33.c", i32 943, i32 32}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/cs35l33.c", i32 948, i32 4}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/cs35l33.c", i32 950, i32 32}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/cs35l33.c", i32 952, i32 32}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/cs35l33.c", i32 954, i32 32}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/cs35l33.c", i32 988, i32 3}
!109 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @cs35l33_irq_thread._entry, !108, !"_entry", i1 false, i1 false}
!112 = !{ptr @cs35l33_irq_thread._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/cs35l33.c", i32 990, i32 4}
!115 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @cs35l33_irq_thread.__UNIQUE_ID_ddebug317, !114, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/cs35l33.c", i32 1006, i32 3}
!119 = !{ptr @cs35l33_irq_thread._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @cs35l33_irq_thread._entry_ptr.63, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/cs35l33.c", i32 1012, i32 4}
!123 = !{ptr @cs35l33_irq_thread.__UNIQUE_ID_ddebug318, !122, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/cs35l33.c", i32 1026, i32 3}
!126 = !{ptr @cs35l33_irq_thread._entry.65, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @cs35l33_irq_thread._entry_ptr.67, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/cs35l33.c", i32 1028, i32 4}
!130 = !{ptr @cs35l33_irq_thread.__UNIQUE_ID_ddebug319, !129, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/cs35l33.c", i32 1041, i32 3}
!133 = !{ptr @cs35l33_irq_thread._entry.69, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @cs35l33_irq_thread._entry_ptr.71, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/cs35l33.c", i32 1043, i32 4}
!137 = !{ptr @cs35l33_irq_thread.__UNIQUE_ID_ddebug320, !136, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!138 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/cs35l33.c", i32 1055, i32 3}
!140 = !{ptr @cs35l33_irq_thread._entry.73, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @cs35l33_irq_thread._entry_ptr.75, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/cs35l33.c", i32 1058, i32 3}
!144 = !{ptr @cs35l33_irq_thread._entry.76, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @cs35l33_irq_thread._entry_ptr.78, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/cs35l33.c", i32 1061, i32 3}
!148 = !{ptr @cs35l33_irq_thread._entry.79, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @cs35l33_irq_thread._entry_ptr.81, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.83, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/cs35l33.c", i32 1065, i32 3}
!152 = !{ptr @cs35l33_irq_thread._entry.82, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @cs35l33_irq_thread._entry_ptr.84, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.86, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/cs35l33.c", i32 1069, i32 3}
!156 = !{ptr @cs35l33_irq_thread._entry.85, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @cs35l33_irq_thread._entry_ptr.87, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @cs35l33_patch, !159, !"cs35l33_patch", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/cs35l33.c", i32 93, i32 34}
!160 = !{ptr @soc_component_dev_cs35l33, !161, !"soc_component_dev_cs35l33", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/cs35l33.c", i32 831, i32 46}
!162 = !{ptr @.str.88, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/cs35l33.c", i32 192, i32 2}
!164 = !{ptr @.str.89, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/cs35l33.c", i32 194, i32 2}
!166 = !{ptr @cs35l33_snd_controls, !167, !"cs35l33_snd_controls", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/cs35l33.c", i32 190, i32 38}
!168 = !{ptr @classd_ctl_tlv, !169, !"classd_ctl_tlv", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/cs35l33.c", i32 187, i32 8}
!170 = !{ptr @dac_tlv, !171, !"dac_tlv", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/cs35l33.c", i32 188, i32 8}
!172 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/cs35l33.c", i32 311, i32 2}
!174 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/cs35l33.c", i32 312, i32 2}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/cs35l33.c", i32 315, i32 2}
!178 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/cs35l33.c", i32 319, i32 2}
!180 = !{ptr @.str.95, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/cs35l33.c", i32 321, i32 2}
!182 = !{ptr @.str.96, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/cs35l33.c", i32 323, i32 2}
!184 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/cs35l33.c", i32 325, i32 2}
!186 = !{ptr @.str.98, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/cs35l33.c", i32 327, i32 2}
!188 = !{ptr @.str.99, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/cs35l33.c", i32 330, i32 2}
!190 = !{ptr @cs35l33_dapm_widgets, !191, !"cs35l33_dapm_widgets", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/cs35l33.c", i32 309, i32 41}
!192 = !{ptr @.str.101, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/cs35l33.c", i32 211, i32 4}
!194 = !{ptr @.str.102, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @cs35l33_spkrdrv_event.__UNIQUE_ID_ddebug295, !193, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!196 = !{ptr @.str.103, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/cs35l33.c", i32 213, i32 3}
!198 = !{ptr @cs35l33_spkrdrv_event.__UNIQUE_ID_ddebug296, !197, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!199 = !{ptr @.str.104, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/cs35l33.c", i32 216, i32 3}
!201 = !{ptr @cs35l33_spkrdrv_event.__UNIQUE_ID_ddebug297, !200, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!202 = !{ptr @.str.105, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/cs35l33.c", i32 219, i32 3}
!204 = !{ptr @cs35l33_spkrdrv_event._entry, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @cs35l33_spkrdrv_event._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/cs35l33.c", i32 240, i32 3}
!208 = !{ptr @.str.107, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @cs35l33_sdin_event.__UNIQUE_ID_ddebug298, !207, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!210 = !{ptr @.str.108, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/cs35l33.c", i32 243, i32 3}
!212 = !{ptr @cs35l33_sdin_event.__UNIQUE_ID_ddebug299, !211, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!213 = !{ptr @.str.109, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/cs35l33.c", i32 247, i32 4}
!215 = !{ptr @cs35l33_sdin_event.__UNIQUE_ID_ddebug300, !214, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!216 = !{ptr @.str.110, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/cs35l33.c", i32 257, i32 3}
!218 = !{ptr @cs35l33_sdin_event.__UNIQUE_ID_ddebug301, !217, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!219 = !{ptr @cs35l33_sdin_event._entry, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/cs35l33.c", i32 260, i32 3}
!221 = !{ptr @cs35l33_sdin_event._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/cs35l33.c", i32 289, i32 3}
!224 = !{ptr @.str.112, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @cs35l33_sdout_event.__UNIQUE_ID_ddebug302, !223, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/cs35l33.c", i32 294, i32 3}
!228 = !{ptr @cs35l33_sdout_event.__UNIQUE_ID_ddebug303, !227, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!229 = !{ptr @cs35l33_sdout_event._entry, !230, !"_entry", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/cs35l33.c", i32 297, i32 3}
!231 = !{ptr @cs35l33_sdout_event._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/cs35l33.c", i32 336, i32 17}
!234 = !{ptr @.str.115, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/cs35l33.c", i32 345, i32 3}
!236 = !{ptr @cs35l33_audio_map, !237, !"cs35l33_audio_map", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/cs35l33.c", i32 335, i32 40}
!238 = !{ptr @.str.116, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/cs35l33.c", i32 754, i32 3}
!240 = !{ptr @.str.117, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @cs35l33_set_bst_ipk._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @cs35l33_set_bst_ipk._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.119, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/cs35l33.c", i32 760, i32 3}
!245 = !{ptr @cs35l33_set_bst_ipk._entry.118, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @cs35l33_set_bst_ipk._entry_ptr.120, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @cs35l33_vphg_auto_route, !248, !"cs35l33_vphg_auto_route", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/cs35l33.c", i32 348, i32 40}
!249 = !{ptr @.str.121, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/cs35l33.c", i32 663, i32 2}
!251 = !{ptr @.str.122, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @cs35l33_component_set_sysclk.__UNIQUE_ID_ddebug314, !250, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/cs35l33.c", i32 678, i32 11}
!255 = !{ptr @cs35l33_dai, !256, !"cs35l33_dai", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/cs35l33.c", i32 677, i32 34}
!257 = !{ptr @cs35l33_ops, !258, !"cs35l33_ops", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/cs35l33.c", i32 669, i32 37}
!259 = !{ptr @.str.124, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/cs35l33.c", i32 448, i32 3}
!261 = !{ptr @.str.125, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug304, !260, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!263 = !{ptr @.str.126, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/cs35l33.c", i32 453, i32 3}
!265 = !{ptr @cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug305, !264, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!266 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/cs35l33.c", i32 466, i32 3}
!268 = !{ptr @cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug306, !267, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!269 = !{ptr @.str.128, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/cs35l33.c", i32 470, i32 3}
!271 = !{ptr @cs35l33_set_dai_fmt.__UNIQUE_ID_ddebug307, !270, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!272 = !{ptr @.str.129, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/cs35l33.c", i32 567, i32 3}
!274 = !{ptr @.str.130, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug309, !273, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!276 = !{ptr @.str.131, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/cs35l33.c", i32 593, i32 4}
!278 = !{ptr @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug310, !277, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!279 = !{ptr @.str.132, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/cs35l33.c", i32 601, i32 4}
!281 = !{ptr @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug311, !280, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!282 = !{ptr @.str.133, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/cs35l33.c", i32 611, i32 4}
!284 = !{ptr @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug312, !283, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!285 = !{ptr @.str.134, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/cs35l33.c", i32 620, i32 4}
!287 = !{ptr @cs35l33_set_tdm_slot.__UNIQUE_ID_ddebug313, !286, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!288 = !{ptr @cs35l33_vp_vbst_mon_route, !289, !"cs35l33_vp_vbst_mon_route", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/cs35l33.c", i32 353, i32 40}
!290 = !{ptr @cs35l33_constraints, !291, !"cs35l33_constraints", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/cs35l33.c", i32 516, i32 48}
!292 = !{ptr @cs35l33_src_rates, !293, !"cs35l33_src_rates", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/cs35l33.c", i32 511, i32 27}
!294 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/cs35l33.c", i32 505, i32 2}
!296 = !{ptr @.str.136, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @cs35l33_pcm_hw_params.__UNIQUE_ID_ddebug308, !295, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!298 = !{ptr @cs35l33_mclk_coeffs, !299, !"cs35l33_mclk_coeffs", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/cs35l33.c", i32 400, i32 38}
!300 = !{ptr @cs35l33_of_match, !301, !"cs35l33_of_match", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/cs35l33.c", i32 1268, i32 34}
!302 = !{ptr @cs35l33_pm_ops, !303, !"cs35l33_pm_ops", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/cs35l33.c", i32 916, i32 32}
!304 = !{ptr @.str.137, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/cs35l33.c", i32 903, i32 2}
!306 = !{ptr @.str.138, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @cs35l33_runtime_suspend.__UNIQUE_ID_ddebug316, !305, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!308 = !{ptr @.str.139, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/cs35l33.c", i32 866, i32 2}
!310 = !{ptr @cs35l33_runtime_resume.__UNIQUE_ID_ddebug315, !309, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!311 = !{ptr @cs35l33_runtime_resume._entry, !312, !"_entry", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/cs35l33.c", i32 873, i32 3}
!313 = !{ptr @cs35l33_runtime_resume._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.141, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/cs35l33.c", i32 885, i32 3}
!316 = !{ptr @cs35l33_runtime_resume._entry.140, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @cs35l33_runtime_resume._entry_ptr.142, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @cs35l33_id, !319, !"cs35l33_id", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/cs35l33.c", i32 1274, i32 35}
!320 = !{i32 1, !"wchar_size", i32 2}
!321 = !{i32 1, !"min_enum_size", i32 4}
!322 = !{i32 8, !"branch-target-enforcement", i32 0}
!323 = !{i32 8, !"sign-return-address", i32 0}
!324 = !{i32 8, !"sign-return-address-all", i32 0}
!325 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!326 = !{i32 7, !"uwtable", i32 1}
!327 = !{i32 7, !"frame-pointer", i32 2}
!328 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!329 = !{!"auto-init"}
!330 = !{i64 2148986957, i64 2148986962, i64 2148986975, i64 2148987019, i64 2148987053, i64 2148987074}
!331 = !{i8 0, i8 2}
!332 = !{i32 0, i32 33}
