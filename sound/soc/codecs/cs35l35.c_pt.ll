; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cs35l35.c_pt.bc'
source_filename = "../sound/soc/codecs/cs35l35.c"
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
%struct.cs35l35_sysclk_config = type { i32, i32, i8 }
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
%struct.cs35l35_private = type { ptr, %struct.cs35l35_platform_data, ptr, [2 x %struct.regulator_bulk_data], i32, i32, i32, i8, i8, i8, ptr, %struct.completion }
%struct.cs35l35_platform_data = type { i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, %struct.classh_cfg, %struct.monitor_cfg }
%struct.classh_cfg = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.monitor_cfg = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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

@__initcall__kmod_snd_soc_cs35l35__301_1665_cs35l35_i2c_driver_init6 = internal global ptr @cs35l35_i2c_driver_init, section ".initcall6.init", align 4
@cs35l35_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cs35l35_i2c_probe, ptr @cs35l35_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cs35l35_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cs35l35_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cs35l35_i2c_driver_exit = internal global ptr @cs35l35_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [48 x i8] c"snd_soc_cs35l35.description=ASoC CS35L35 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [81 x i8] c"snd_soc_cs35l35.author=Brian Austin, Cirrus Logic Inc, <brian.austin@cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [54 x i8] c"snd_soc_cs35l35.file=sound/soc/codecs/snd-soc-cs35l35\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [28 x i8] c"snd_soc_cs35l35.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cs35l35\00", [24 x i8] zeroinitializer }, align 32
@cs35l35_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs35l35\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cs35l35_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cs35l35\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cs35l35_regmap = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @cs35l35_readable_register, ptr @cs35l35_volatile_register, ptr @cs35l35_precious_register, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l35_reg, i32 59, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cs35l35:1486:(&cs35l35_regmap)->lock\00", [59 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1489, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs35l35_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/cs35l35.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry_ptr = internal global ptr @cs35l35_i2c_probe._entry, section ".printk_index", align 4
@cs35l35_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1501, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request core supplies: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry_ptr.9 = internal global ptr @cs35l35_i2c_probe._entry.7, section ".printk_index", align 4
@cs35l35_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1524, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable core supplies: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry_ptr.12 = internal global ptr @cs35l35_i2c_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1536, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Reset line busy, assuming shared reset\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry_ptr.17 = internal global ptr @cs35l35_i2c_probe._entry.14, section ".printk_index", align 4
@cs35l35_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1538, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get reset GPIO: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry_ptr.20 = internal global ptr @cs35l35_i2c_probe._entry.18, section ".printk_index", align 4
@cs35l35_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1551, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry_ptr.23 = internal global ptr @cs35l35_i2c_probe._entry.21, section ".printk_index", align 4
@cs35l35_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1558, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read device ID: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry_ptr.26 = internal global ptr @cs35l35_i2c_probe._entry.24, section ".printk_index", align 4
@cs35l35_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 1564, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CS35L35 Device ID (%X). Expected ID %X\0A\00", [56 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry_ptr.29 = internal global ptr @cs35l35_i2c_probe._entry.27, section ".printk_index", align 4
@cs35l35_i2c_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 1571, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Get Revision ID failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry_ptr.32 = internal global ptr @cs35l35_i2c_probe._entry.30, section ".printk_index", align 4
@cs35l35_errata_patch = internal constant { [11 x %struct.reg_sequence], [60 x i8] } { [11 x %struct.reg_sequence] [%struct.reg_sequence { i32 127, i32 153, i32 0 }, %struct.reg_sequence { i32 0, i32 153, i32 0 }, %struct.reg_sequence { i32 82, i32 34, i32 0 }, %struct.reg_sequence { i32 4, i32 20, i32 0 }, %struct.reg_sequence { i32 109, i32 68, i32 0 }, %struct.reg_sequence { i32 36, i32 16, i32 0 }, %struct.reg_sequence { i32 88, i32 196, i32 0 }, %struct.reg_sequence { i32 0, i32 152, i32 0 }, %struct.reg_sequence { i32 24, i32 8, i32 0 }, %struct.reg_sequence zeroinitializer, %struct.reg_sequence { i32 127, i32 0, i32 0 }], [60 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 1578, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to apply errata patch: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry_ptr.35 = internal global ptr @cs35l35_i2c_probe._entry.33, section ".printk_index", align 4
@cs35l35_i2c_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 1583, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cirrus Logic CS35L35 (%x), Revision: %02X\0A\00", [53 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry_ptr.38 = internal global ptr @cs35l35_i2c_probe._entry.36, section ".printk_index", align 4
@soc_component_dev_cs35l35 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @cs35l35_aud_controls, i32 3, ptr @cs35l35_dapm_widgets, i32 13, ptr @cs35l35_audio_map, i32 13, ptr @cs35l35_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l35_component_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cs35l35_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.150, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs35l35_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.134, i64 1094, i32 -2147483648, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.135, i64 1094, i32 -2147483648, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.151, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs35l35_pdm_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.152, i64 1094, i32 -2147483648, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 1618, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register component: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l35_i2c_probe._entry_ptr.41 = internal global ptr @cs35l35_i2c_probe._entry.39, section ".printk_index", align 4
@cs35l35_reg = internal constant { [59 x %struct.reg_default], [104 x i8] } { [59 x %struct.reg_default] [%struct.reg_default { i32 6, i32 1 }, %struct.reg_default { i32 7, i32 17 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 10, i32 4 }, %struct.reg_default { i32 11, i32 18 }, %struct.reg_default { i32 12, i32 207 }, %struct.reg_default { i32 13, i32 32 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 2 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 1 }, %struct.reg_default { i32 21, i32 18 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 6 }, %struct.reg_default { i32 25, i32 19 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 7 }, %struct.reg_default { i32 32, i32 133 }, %struct.reg_default { i32 33, i32 36 }, %struct.reg_default { i32 34, i32 36 }, %struct.reg_default { i32 35, i32 78 }, %struct.reg_default { i32 36, i32 4 }, %struct.reg_default { i32 48, i32 11 }, %struct.reg_default { i32 49, i32 11 }, %struct.reg_default { i32 50, i32 8 }, %struct.reg_default { i32 51, i32 65 }, %struct.reg_default { i32 52, i32 197 }, %struct.reg_default { i32 58, i32 10 }, %struct.reg_default { i32 59, i32 144 }, %struct.reg_default { i32 60, i32 106 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 78, i32 192 }, %struct.reg_default { i32 81, i32 48 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 83, i32 128 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 85, i32 128 }, %struct.reg_default { i32 86, i32 4 }, %struct.reg_default { i32 87, i32 132 }, %struct.reg_default { i32 88, i32 4 }, %struct.reg_default { i32 89, i32 0 }, %struct.reg_default { i32 90, i32 15 }, %struct.reg_default { i32 91, i32 15 }, %struct.reg_default { i32 92, i32 15 }, %struct.reg_default { i32 93, i32 0 }, %struct.reg_default { i32 98, i32 2 }, %struct.reg_default { i32 99, i32 128 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 64 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 112, i32 255 }, %struct.reg_default { i32 113, i32 255 }, %struct.reg_default { i32 114, i32 255 }, %struct.reg_default { i32 115, i32 255 }], [104 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VA\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VP\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cirrus,boost-pdn-fet-on\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,boost-ctl-millivolt\00", [37 x i8] zeroinitializer }, align 32
@cs35l35_handle_of_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 1263, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid Boost Voltage %d mV\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l35_handle_of_data\00", [41 x i8] zeroinitializer }, align 32
@cs35l35_handle_of_data._entry_ptr = internal global ptr @cs35l35_handle_of_data._entry, section ".printk_index", align 4
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,boost-peak-milliamp\00", [37 x i8] zeroinitializer }, align 32
@cs35l35_handle_of_data._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.47, ptr @.str.4, i32 1273, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid Boost Peak Current %u mA\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l35_handle_of_data._entry_ptr.51 = internal global ptr @cs35l35_handle_of_data._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,boost-ind-nanohenry\00", [37 x i8] zeroinitializer }, align 32
@cs35l35_handle_of_data._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.4, i32 1284, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Inductor not specified.\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l35_handle_of_data._entry_ptr.55 = internal global ptr @cs35l35_handle_of_data._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cirrus,sp-drv-strength\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cirrus,sp-drv-unused\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cirrus,stereo-config\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cirrus,audio-channel\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cirrus,advisory-channel\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cirrus,shared-boost\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cirrus,external-boost\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cirrus,amp-gain-zc\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cirrus,classh-internal-algo\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cirrus,classh-bst-overide\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cirrus,classh-bst-max-limit\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cirrus,classh-mem-depth\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,classh-release-rate\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cirrus,classh-headroom\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cirrus,classh-wk-fet-disable\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,classh-wk-fet-delay\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cirrus,classh-wk-fet-thld\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cirrus,classh-vpch-auto\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cirrus,classh-vpch-rate\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cirrus,classh-vpch-man\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cirrus,monitor-signal-format\00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cirrus,imon\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cirrus,vmon\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cirrus,vpmon\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cirrus,vbstmon\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cirrus,vpbrstat\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cirrus,zerofill\00", [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cs35l35_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.4, i32 1138, ptr @.str.86, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Calibration Error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs35l35_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@cs35l35_irq._entry_ptr = internal global ptr @cs35l35_irq._entry, section ".printk_index", align 4
@cs35l35_irq.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.87, ptr @.str.85, ptr @.str.4, ptr @.str.88, i8 1, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_cs35l35\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s : Cal error release\0A\00", [40 x i8] zeroinitializer }, align 32
@cs35l35_irq._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.4, i32 1157, ptr @.str.86, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AMP Short Error\0A\00", [47 x i8] zeroinitializer }, align 32
@cs35l35_irq._entry_ptr.91 = internal global ptr @cs35l35_irq._entry.89, section ".printk_index", align 4
@cs35l35_irq.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.87, ptr @.str.85, ptr @.str.4, ptr @.str.92, i8 1, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Amp short error release\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l35_irq._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.85, ptr @.str.4, i32 1175, ptr @.str.95, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Over temperature warning\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cs35l35_irq._entry_ptr.96 = internal global ptr @cs35l35_irq._entry.93, section ".printk_index", align 4
@cs35l35_irq.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.87, ptr @.str.85, ptr @.str.4, ptr @.str.97, i8 1, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Over temperature warn release\0A\00", [33 x i8] zeroinitializer }, align 32
@cs35l35_irq._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.85, ptr @.str.4, i32 1194, ptr @.str.86, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Over temperature error\0A\00", [40 x i8] zeroinitializer }, align 32
@cs35l35_irq._entry_ptr.100 = internal global ptr @cs35l35_irq._entry.98, section ".printk_index", align 4
@cs35l35_irq.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.87, ptr @.str.85, ptr @.str.4, ptr @.str.101, i8 1, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Over temperature error release\0A\00", [32 x i8] zeroinitializer }, align 32
@cs35l35_irq._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.85, ptr @.str.4, i32 1212, ptr @.str.86, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VBST error: powering off!\0A\00", [37 x i8] zeroinitializer }, align 32
@cs35l35_irq._entry_ptr.104 = internal global ptr @cs35l35_irq._entry.102, section ".printk_index", align 4
@cs35l35_irq._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.85, ptr @.str.4, i32 1220, ptr @.str.86, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LBST error: powering off!\0A\00", [37 x i8] zeroinitializer }, align 32
@cs35l35_irq._entry_ptr.107 = internal global ptr @cs35l35_irq._entry.105, section ".printk_index", align 4
@cs35l35_irq.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.87, ptr @.str.85, ptr @.str.4, ptr @.str.108, i8 1, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error: Reactive Brownout\0A\00", [38 x i8] zeroinitializer }, align 32
@cs35l35_irq.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.87, ptr @.str.85, ptr @.str.4, ptr @.str.109, i8 1, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error: VMON overflow\0A\00", [42 x i8] zeroinitializer }, align 32
@cs35l35_irq.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.87, ptr @.str.85, ptr @.str.4, ptr @.str.110, i8 1, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error: IMON overflow\0A\00", [42 x i8] zeroinitializer }, align 32
@cs35l35_aud_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @dig_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @amp_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @amp_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }], [48 x i8] zeroinitializer }, align 32
@cs35l35_audio_map = internal constant { [13 x %struct.snd_soc_dapm_route], [188 x i8] } { [13 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }], [188 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Digital Audio Volume\00", [43 x i8] zeroinitializer }, align 32
@dig_vol_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10200, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 52, i32 228, i32 0, i32 22, i32 22, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Analog Audio Volume\00", [44 x i8] zeroinitializer }, align 32
@amp_gain_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 65537], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 19, i32 19, i32 25, i32 25, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PDM Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 19, i32 19, i32 26, i32 26, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDIN\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDOUT\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPK\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBST\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ISENSE\00", [25 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VSENSE\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VMON ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IMON ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VPMON ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VBSTMON ADC\00", [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLASS H\00", [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Main AMP\00", [23 x i8] zeroinitializer }, align 32
@cs35l35_dapm_widgets = internal constant { [13 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [604 x i8] } { [13 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @cs35l35_sdin_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @cs35l35_main_amp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [604 x i8] zeroinitializer }, align 32
@cs35l35_sdin_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid event = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs35l35_sdin_event\00", [45 x i8] zeroinitializer }, align 32
@cs35l35_sdin_event._entry_ptr = internal global ptr @cs35l35_sdin_event._entry, section ".printk_index", align 4
@cs35l35_wait_for_pdn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.4, i32 183, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PDN_DONE did not complete\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cs35l35_wait_for_pdn\00", [43 x i8] zeroinitializer }, align 32
@cs35l35_wait_for_pdn._entry_ptr = internal global ptr @cs35l35_wait_for_pdn._entry, section ".printk_index", align 4
@cs35l35_main_amp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.133, ptr @.str.4, i32 300, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l35_main_amp_event\00", [41 x i8] zeroinitializer }, align 32
@cs35l35_main_amp_event._entry_ptr = internal global ptr @cs35l35_main_amp_event._entry, section ".printk_index", align 4
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AMP Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AMP Playback\00", [19 x i8] zeroinitializer }, align 32
@cs35l35_adv_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @dig_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @amp_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }], [32 x i8] zeroinitializer }, align 32
@cs35l35_boost_inductor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.4, i32 827, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid Inductor Value %d uH\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l35_boost_inductor\00", [41 x i8] zeroinitializer }, align 32
@cs35l35_boost_inductor._entry_ptr = internal global ptr @cs35l35_boost_inductor._entry, section ".printk_index", align 4
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Advisory Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 52, i32 228, i32 0, i32 23, i32 23, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Analog Advisory Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 19, i32 19, i32 27, i32 27, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@cs35l35_component_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.4, i32 730, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid CLK Source\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cs35l35_component_set_sysclk\00", [35 x i8] zeroinitializer }, align 32
@cs35l35_component_set_sysclk._entry_ptr = internal global ptr @cs35l35_component_set_sysclk._entry, section ".printk_index", align 4
@cs35l35_component_set_sysclk._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.4, i32 748, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid CLK Frequency Input : %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l35_component_set_sysclk._entry_ptr.146 = internal global ptr @cs35l35_component_set_sysclk._entry.144, section ".printk_index", align 4
@cs35l35_component_set_sysclk._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.143, ptr @.str.4, i32 756, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set sysclk %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l35_component_set_sysclk._entry_ptr.149 = internal global ptr @cs35l35_component_set_sysclk._entry.147, section ".printk_index", align 4
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs35l35-pcm\00", [20 x i8] zeroinitializer }, align 32
@cs35l35_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cs35l35_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @cs35l35_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l35_pcm_startup, ptr null, ptr @cs35l35_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs35l35-pdm\00", [20 x i8] zeroinitializer }, align 32
@cs35l35_pdm_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @cs35l35_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l35_pdm_startup, ptr null, ptr @cs35l35_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PDM Playback\00", [19 x i8] zeroinitializer }, align 32
@cs35l35_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @cs35l35_src_rates, i32 6, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cs35l35_src_rates = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [40 x i8] zeroinitializer }, align 32
@cs35l35_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.4, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid CLK:Rate %d:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs35l35_hw_params\00", [46 x i8] zeroinitializer }, align 32
@cs35l35_hw_params._entry_ptr = internal global ptr @cs35l35_hw_params._entry, section ".printk_index", align 4
@cs35l35_hw_params._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.4, i32 489, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set port config %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cs35l35_hw_params._entry_ptr.157 = internal global ptr @cs35l35_hw_params._entry.155, section ".printk_index", align 4
@cs35l35_hw_params._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.154, ptr @.str.4, i32 509, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set fet config %d\0A\00", [35 x i8] zeroinitializer }, align 32
@cs35l35_hw_params._entry_ptr.160 = internal global ptr @cs35l35_hw_params._entry.158, section ".printk_index", align 4
@cs35l35_hw_params._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.154, ptr @.str.4, i32 531, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported Width %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cs35l35_hw_params._entry_ptr.163 = internal global ptr @cs35l35_hw_params._entry.161, section ".printk_index", align 4
@cs35l35_hw_params._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.154, ptr @.str.4, i32 554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported sclk/fs ratio %d:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@cs35l35_hw_params._entry_ptr.166 = internal global ptr @cs35l35_hw_params._entry.164, section ".printk_index", align 4
@cs35l35_hw_params._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.154, ptr @.str.4, i32 567, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ratio not supported\0A\00", [43 x i8] zeroinitializer }, align 32
@cs35l35_hw_params._entry_ptr.169 = internal global ptr @cs35l35_hw_params._entry.167, section ".printk_index", align 4
@cs35l35_hw_params._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.154, ptr @.str.4, i32 577, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@cs35l35_hw_params._entry_ptr.171 = internal global ptr @cs35l35_hw_params._entry.170, section ".printk_index", align 4
@cs35l35_hw_params._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.154, ptr @.str.4, i32 586, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set fsclk %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cs35l35_hw_params._entry_ptr.174 = internal global ptr @cs35l35_hw_params._entry.172, section ".printk_index", align 4
@cs35l35_clk_ctl = internal constant { [40 x %struct.cs35l35_sysclk_config], [96 x i8] } { [40 x %struct.cs35l35_sysclk_config] [%struct.cs35l35_sysclk_config { i32 5644800, i32 44100, i8 0 }, %struct.cs35l35_sysclk_config { i32 5644800, i32 88200, i8 64 }, %struct.cs35l35_sysclk_config { i32 6144000, i32 48000, i8 16 }, %struct.cs35l35_sysclk_config { i32 6144000, i32 96000, i8 80 }, %struct.cs35l35_sysclk_config { i32 11289600, i32 44100, i8 1 }, %struct.cs35l35_sysclk_config { i32 11289600, i32 88200, i8 65 }, %struct.cs35l35_sysclk_config { i32 11289600, i32 176400, i8 -127 }, %struct.cs35l35_sysclk_config { i32 12000000, i32 44100, i8 3 }, %struct.cs35l35_sysclk_config { i32 12000000, i32 48000, i8 19 }, %struct.cs35l35_sysclk_config { i32 12000000, i32 88200, i8 67 }, %struct.cs35l35_sysclk_config { i32 12000000, i32 96000, i8 83 }, %struct.cs35l35_sysclk_config { i32 12000000, i32 176400, i8 -125 }, %struct.cs35l35_sysclk_config { i32 12000000, i32 192000, i8 -109 }, %struct.cs35l35_sysclk_config { i32 12288000, i32 48000, i8 17 }, %struct.cs35l35_sysclk_config { i32 12288000, i32 96000, i8 81 }, %struct.cs35l35_sysclk_config { i32 12288000, i32 192000, i8 -111 }, %struct.cs35l35_sysclk_config { i32 13000000, i32 44100, i8 7 }, %struct.cs35l35_sysclk_config { i32 13000000, i32 48000, i8 23 }, %struct.cs35l35_sysclk_config { i32 13000000, i32 88200, i8 71 }, %struct.cs35l35_sysclk_config { i32 13000000, i32 96000, i8 87 }, %struct.cs35l35_sysclk_config { i32 13000000, i32 176400, i8 -121 }, %struct.cs35l35_sysclk_config { i32 13000000, i32 192000, i8 -105 }, %struct.cs35l35_sysclk_config { i32 22579200, i32 44100, i8 2 }, %struct.cs35l35_sysclk_config { i32 22579200, i32 88200, i8 66 }, %struct.cs35l35_sysclk_config { i32 22579200, i32 176400, i8 -126 }, %struct.cs35l35_sysclk_config { i32 24000000, i32 44100, i8 11 }, %struct.cs35l35_sysclk_config { i32 24000000, i32 48000, i8 27 }, %struct.cs35l35_sysclk_config { i32 24000000, i32 88200, i8 75 }, %struct.cs35l35_sysclk_config { i32 24000000, i32 96000, i8 91 }, %struct.cs35l35_sysclk_config { i32 24000000, i32 176400, i8 -117 }, %struct.cs35l35_sysclk_config { i32 24000000, i32 192000, i8 -101 }, %struct.cs35l35_sysclk_config { i32 24576000, i32 48000, i8 18 }, %struct.cs35l35_sysclk_config { i32 24576000, i32 96000, i8 82 }, %struct.cs35l35_sysclk_config { i32 24576000, i32 192000, i8 -110 }, %struct.cs35l35_sysclk_config { i32 26000000, i32 44100, i8 15 }, %struct.cs35l35_sysclk_config { i32 26000000, i32 48000, i8 31 }, %struct.cs35l35_sysclk_config { i32 26000000, i32 88200, i8 79 }, %struct.cs35l35_sysclk_config { i32 26000000, i32 96000, i8 95 }, %struct.cs35l35_sysclk_config { i32 26000000, i32 176400, i8 -113 }, %struct.cs35l35_sysclk_config { i32 26000000, i32 192000, i8 -97 }], [96 x i8] zeroinitializer }, align 32
@cs35l35_pdm_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @cs35l35_pdm_rates, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cs35l35_pdm_rates = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [74 x i64] [i64 72, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 34, i64 35, i64 36, i64 48, i64 49, i64 50, i64 51, i64 52, i64 56, i64 58, i64 59, i64 60, i64 61, i64 75, i64 78, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 98, i64 99, i64 100, i64 104, i64 105, i64 106, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 126]
@__sancov_gen_cov_switch_values.175 = internal global [6 x i64] [i64 4, i64 32, i64 1000, i64 1200, i64 1500, i64 2200]
@__sancov_gen_cov_switch_values.176 = internal global [12 x i64] [i64 10, i64 32, i64 5644800, i64 6144000, i64 11289600, i64 12000000, i64 12288000, i64 13000000, i64 22579200, i64 24000000, i64 24576000, i64 26000000]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.178 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@___asan_gen_.184 = private unnamed_addr constant [19 x i8] c"cs35l35_i2c_driver\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1655, i32 26 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1657, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"cs35l35_of_match\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1642, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant [11 x i8] c"cs35l35_id\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1648, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [15 x i8] c"cs35l35_regmap\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1093, i32 29 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1486, i32 20 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1489, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1501, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1524, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1529, i32 53 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1535, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1538, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1551, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1558, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1563, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1571, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [21 x i8] c"cs35l35_errata_patch\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1454, i32 34 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1578, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1582, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [26 x i8] c"soc_component_dev_cs35l35\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1078, i32 46 }
@___asan_gen_.295 = private unnamed_addr constant [12 x i8] c"cs35l35_dai\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 676, i32 34 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1618, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [12 x i8] c"cs35l35_reg\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 44, i32 33 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 293, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [30 x i8] c"../sound/soc/codecs/cs35l35.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 294, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1257, i32 6 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1259, i32 33 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1262, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1269, i32 33 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1272, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1280, i32 33 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1284, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1288, i32 31 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1290, i32 31 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1293, i32 44 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1296, i32 34 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1300, i32 34 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1306, i32 7 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1309, i32 45 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1311, i32 45 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1313, i32 36 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1318, i32 30 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1321, i32 9 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1336, i32 38 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1343, i32 38 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1348, i32 38 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1356, i32 9 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1361, i32 38 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1368, i32 38 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1373, i32 38 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1380, i32 38 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1387, i32 38 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1395, i32 43 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1398, i32 50 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1407, i32 50 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1415, i32 50 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1423, i32 50 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1431, i32 50 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1439, i32 50 }
@___asan_gen_.427 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.431, i32 87, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1138, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1142, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1157, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1160, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1175, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1179, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1194, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1197, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1212, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1220, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1228, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1231, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1234, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant [21 x i8] c"cs35l35_aud_controls\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 308, i32 38 }
@___asan_gen_.505 = private unnamed_addr constant [18 x i8] c"cs35l35_audio_map\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 349, i32 40 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 309, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [12 x i8] c"dig_vol_tlv\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 306, i32 8 }
@___asan_gen_.514 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 311, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [13 x i8] c"amp_gain_tlv\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 305, i32 8 }
@___asan_gen_.521 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 313, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 325, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 328, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 330, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 333, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 334, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 335, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 337, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 338, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 339, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 340, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 341, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 343, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant [21 x i8] c"cs35l35_dapm_widgets\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 324, i32 41 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 230, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 183, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 300, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 358, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 360, i32 17 }
@___asan_gen_.595 = private unnamed_addr constant [21 x i8] c"cs35l35_adv_controls\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 317, i32 38 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 826, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 318, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 320, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 730, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 748, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 756, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 678, i32 11 }
@___asan_gen_.639 = private unnamed_addr constant [12 x i8] c"cs35l35_ops\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 663, i32 37 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 698, i32 11 }
@___asan_gen_.645 = private unnamed_addr constant [16 x i8] c"cs35l35_pdm_ops\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 670, i32 37 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 701, i32 19 }
@___asan_gen_.651 = private unnamed_addr constant [20 x i8] c"cs35l35_constraints\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 598, i32 48 }
@___asan_gen_.654 = private unnamed_addr constant [18 x i8] c"cs35l35_src_rates\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 594, i32 27 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 481, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 489, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 508, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 530, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 553, i32 4 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 567, i32 5 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 577, i32 5 }
@___asan_gen_.699 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.702 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 586, i32 4 }
@___asan_gen_.705 = private unnamed_addr constant [16 x i8] c"cs35l35_clk_ctl\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 408, i32 37 }
@___asan_gen_.708 = private unnamed_addr constant [24 x i8] c"cs35l35_pdm_constraints\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 626, i32 48 }
@___asan_gen_.711 = private unnamed_addr constant [18 x i8] c"cs35l35_pdm_rates\00", align 1
@___asan_gen_.712 = private constant [30 x i8] c"../sound/soc/codecs/cs35l35.c\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 622, i32 27 }
@llvm.compiler.used = appending global [223 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_cs35l35_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_cs35l35__301_1665_cs35l35_i2c_driver_init6, ptr @cs35l35_boost_inductor._entry, ptr @cs35l35_boost_inductor._entry_ptr, ptr @cs35l35_component_set_sysclk._entry, ptr @cs35l35_component_set_sysclk._entry.144, ptr @cs35l35_component_set_sysclk._entry.147, ptr @cs35l35_component_set_sysclk._entry_ptr, ptr @cs35l35_component_set_sysclk._entry_ptr.146, ptr @cs35l35_component_set_sysclk._entry_ptr.149, ptr @cs35l35_handle_of_data._entry, ptr @cs35l35_handle_of_data._entry.49, ptr @cs35l35_handle_of_data._entry.53, ptr @cs35l35_handle_of_data._entry_ptr, ptr @cs35l35_handle_of_data._entry_ptr.51, ptr @cs35l35_handle_of_data._entry_ptr.55, ptr @cs35l35_hw_params._entry, ptr @cs35l35_hw_params._entry.155, ptr @cs35l35_hw_params._entry.158, ptr @cs35l35_hw_params._entry.161, ptr @cs35l35_hw_params._entry.164, ptr @cs35l35_hw_params._entry.167, ptr @cs35l35_hw_params._entry.170, ptr @cs35l35_hw_params._entry.172, ptr @cs35l35_hw_params._entry_ptr, ptr @cs35l35_hw_params._entry_ptr.157, ptr @cs35l35_hw_params._entry_ptr.160, ptr @cs35l35_hw_params._entry_ptr.163, ptr @cs35l35_hw_params._entry_ptr.166, ptr @cs35l35_hw_params._entry_ptr.169, ptr @cs35l35_hw_params._entry_ptr.171, ptr @cs35l35_hw_params._entry_ptr.174, ptr @cs35l35_i2c_driver_exit, ptr @cs35l35_i2c_probe._entry, ptr @cs35l35_i2c_probe._entry.10, ptr @cs35l35_i2c_probe._entry.14, ptr @cs35l35_i2c_probe._entry.18, ptr @cs35l35_i2c_probe._entry.21, ptr @cs35l35_i2c_probe._entry.24, ptr @cs35l35_i2c_probe._entry.27, ptr @cs35l35_i2c_probe._entry.30, ptr @cs35l35_i2c_probe._entry.33, ptr @cs35l35_i2c_probe._entry.36, ptr @cs35l35_i2c_probe._entry.39, ptr @cs35l35_i2c_probe._entry.7, ptr @cs35l35_i2c_probe._entry_ptr, ptr @cs35l35_i2c_probe._entry_ptr.12, ptr @cs35l35_i2c_probe._entry_ptr.17, ptr @cs35l35_i2c_probe._entry_ptr.20, ptr @cs35l35_i2c_probe._entry_ptr.23, ptr @cs35l35_i2c_probe._entry_ptr.26, ptr @cs35l35_i2c_probe._entry_ptr.29, ptr @cs35l35_i2c_probe._entry_ptr.32, ptr @cs35l35_i2c_probe._entry_ptr.35, ptr @cs35l35_i2c_probe._entry_ptr.38, ptr @cs35l35_i2c_probe._entry_ptr.41, ptr @cs35l35_i2c_probe._entry_ptr.9, ptr @cs35l35_irq._entry, ptr @cs35l35_irq._entry.102, ptr @cs35l35_irq._entry.105, ptr @cs35l35_irq._entry.89, ptr @cs35l35_irq._entry.93, ptr @cs35l35_irq._entry.98, ptr @cs35l35_irq._entry_ptr, ptr @cs35l35_irq._entry_ptr.100, ptr @cs35l35_irq._entry_ptr.104, ptr @cs35l35_irq._entry_ptr.107, ptr @cs35l35_irq._entry_ptr.91, ptr @cs35l35_irq._entry_ptr.96, ptr @cs35l35_main_amp_event._entry, ptr @cs35l35_main_amp_event._entry_ptr, ptr @cs35l35_sdin_event._entry, ptr @cs35l35_sdin_event._entry_ptr, ptr @cs35l35_wait_for_pdn._entry, ptr @cs35l35_wait_for_pdn._entry_ptr, ptr @cs35l35_i2c_driver, ptr @.str, ptr @cs35l35_of_match, ptr @cs35l35_id, ptr @cs35l35_i2c_probe._key, ptr @cs35l35_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @cs35l35_errata_patch, ptr @.str.34, ptr @.str.37, ptr @soc_component_dev_cs35l35, ptr @cs35l35_dai, ptr @.str.40, ptr @cs35l35_reg, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @init_completion.__key, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @cs35l35_aud_controls, ptr @cs35l35_audio_map, ptr @.str.111, ptr @dig_vol_tlv, ptr @.compoundliteral, ptr @.str.112, ptr @amp_gain_tlv, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @cs35l35_dapm_widgets, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @cs35l35_adv_controls, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.148, ptr @.str.150, ptr @cs35l35_ops, ptr @.str.151, ptr @cs35l35_pdm_ops, ptr @.str.152, ptr @cs35l35_constraints, ptr @cs35l35_src_rates, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.173, ptr @cs35l35_clk_ctl, ptr @cs35l35_pdm_constraints, ptr @cs35l35_pdm_rates], section "llvm.metadata"
@0 = internal global [180 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_errata_patch to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_cs35l35 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_i2c_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_reg to i32), i32 472, i32 576, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_handle_of_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_handle_of_data._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_handle_of_data._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_irq._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_irq._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_irq._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_irq._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_irq._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_aud_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_audio_map to i32), i32 676, i32 864, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dig_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_dapm_widgets to i32), i32 2340, i32 2944, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_sdin_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_wait_for_pdn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_main_amp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_adv_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_boost_inductor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_component_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_component_set_sysclk._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_component_set_sysclk._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_pdm_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_src_rates to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_hw_params._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_hw_params._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_hw_params._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_hw_params._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_hw_params._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_hw_params._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_hw_params._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_clk_ctl to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_pdm_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l35_pdm_rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l35_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cs35l35_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs35l35_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @cs35l35_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l35_i2c_probe(ptr noundef %i2c_client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val32.i = alloca i32, align 4
  %monitor_array.i = alloca [4 x i8], align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !362
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 224, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c_client, ptr noundef nonnull @cs35l35_regmap, ptr noundef nonnull @cs35l35_i2c_probe._key, ptr noundef nonnull @.str.1) #9
  %regmap = getelementptr inbounds %struct.cs35l35_private, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %arrayidx11 = getelementptr %struct.cs35l35_private, ptr %call.i, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.42, ptr %arrayidx11, align 4
  %arrayidx11.1 = getelementptr %struct.cs35l35_private, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.43, ptr %arrayidx11.1, align 4
  %num_supplies = getelementptr inbounds %struct.cs35l35_private, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %num_supplies to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %num_supplies, align 4
  %call14 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %arrayidx11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end20, label %do.end19

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %9) #12
  br label %cleanup

do.end19:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call14) #12
  br label %cleanup

if.end20:                                         ; preds = %for.body.preheader
  %tobool21.not = icmp eq ptr %1, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %pdata23 = getelementptr inbounds %struct.cs35l35_private, ptr %call.i, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %pdata23, ptr %1, i32 116)
  br label %if.end37

if.else:                                          ; preds = %if.end20
  %call.i239 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #9
  %tobool25.not = icmp eq ptr %call.i239, null
  br i1 %tobool25.not, label %if.else.cleanup_crit_edge, label %if.end27

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.else
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %tobool29.not = icmp eq ptr %12, null
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %if.end.i

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end.i:                                         ; preds = %if.end27
  %classh_algo.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12
  %mon_cfg.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i) #9
  %13 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %val32.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %monitor_array.i) #9
  %14 = getelementptr inbounds [4 x i8], ptr %monitor_array.i, i32 0, i32 1
  %15 = getelementptr inbounds [4 x i8], ptr %monitor_array.i, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i8], ptr %monitor_array.i, i32 0, i32 3
  %17 = ptrtoint ptr %monitor_array.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %monitor_array.i, align 4
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.44, ptr noundef null) #9
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %bst_pdn_fet_on.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 3
  %frombool.i = zext i1 %tobool.i.i to i8
  %18 = ptrtoint ptr %bst_pdn_fet_on.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool.i, ptr %bst_pdn_fet_on.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %12, ptr noundef nonnull @.str.45, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %19 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i240 = icmp sgt i32 %19, -1
  br i1 %cmp.i240, label %if.then2.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then2.i:                                       ; preds = %if.end.i
  %20 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val32.i, align 4
  %22 = add i32 %21, -9001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6401, i32 %22)
  %23 = icmp ult i32 %22, -6401
  br i1 %23, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %21) #12
  br label %cs35l35_handle_of_data.exit.thread

if.end7.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = trunc i32 %21 to i16
  %div.lhs.trunc.i = add nsw i16 %24, -2600
  %div333.i = udiv i16 %div.lhs.trunc.i, 100
  %narrow.i = add nuw nsw i16 %div333.i, 1
  %add.i = zext i16 %narrow.i to i32
  %bst_vctl.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 4
  %25 = ptrtoint ptr %bst_vctl.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %bst_vctl.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end7.i, %if.end.i.if.end8.i_crit_edge
  %call.i.i300.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %12, ptr noundef nonnull @.str.48, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %26 = call i32 @llvm.smin.i32(i32 %call.i.i300.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp10.i = icmp sgt i32 %26, -1
  br i1 %cmp10.i, label %if.then11.i, label %if.end8.i.if.end23.i_crit_edge

if.end8.i.if.end23.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then11.i:                                      ; preds = %if.end8.i
  %27 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val32.i, align 4
  %29 = add i32 %28, -4481
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2801, i32 %29)
  %30 = icmp ult i32 %29, -2801
  br i1 %30, label %do.end18.i, label %if.end20.i

do.end18.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.50, i32 noundef %28) #12
  br label %cs35l35_handle_of_data.exit.thread

if.end20.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = trunc i32 %28 to i16
  %div22.lhs.trunc.i = add nsw i16 %31, -1680
  %div22334.i = udiv i16 %div22.lhs.trunc.i, 110
  %div22.zext.i = zext i16 %div22334.i to i32
  %or.i = or i32 %div22.zext.i, -2147483648
  %bst_ipk.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 5
  %32 = ptrtoint ptr %bst_ipk.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i, ptr %bst_ipk.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end20.i, %if.end8.i.if.end23.i_crit_edge
  %call.i.i301.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %12, ptr noundef nonnull @.str.52, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %33 = call i32 @llvm.smin.i32(i32 %call.i.i301.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp25.i = icmp sgt i32 %33, -1
  br i1 %cmp25.i, label %if.then26.i, label %do.end29.i

if.then26.i:                                      ; preds = %if.end23.i
  %34 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val32.i, align 4
  %boost_ind.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 11
  %36 = ptrtoint ptr %boost_ind.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %boost_ind.i, align 4
  %call.i.i302.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %12, ptr noundef nonnull @.str.56, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %37 = call i32 @llvm.smin.i32(i32 %call.i.i302.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp33.i = icmp sgt i32 %37, -1
  br i1 %cmp33.i, label %if.then34.i, label %if.then26.i.if.end35.i_crit_edge

if.then26.i.if.end35.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

do.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54) #12
  br label %cs35l35_handle_of_data.exit.thread

if.then34.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val32.i, align 4
  %sp_drv_str.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 1
  %40 = ptrtoint ptr %sp_drv_str.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %sp_drv_str.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then34.i, %if.then26.i.if.end35.i_crit_edge
  %call.i.i303.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %12, ptr noundef nonnull @.str.57, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %41 = call i32 @llvm.smin.i32(i32 %call.i.i303.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp37.i = icmp sgt i32 %41, -1
  br i1 %cmp37.i, label %if.then38.i, label %if.end35.i.if.end40.i_crit_edge

if.end35.i.if.end40.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val32.i, align 4
  %or39.i = or i32 %43, -2147483648
  %sp_drv_unused.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 2
  %44 = ptrtoint ptr %sp_drv_unused.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or39.i, ptr %sp_drv_unused.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %if.end35.i.if.end40.i_crit_edge
  %call.i304.i = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.58, ptr noundef null) #9
  %tobool.i305.i = icmp ne ptr %call.i304.i, null
  %frombool42.i = zext i1 %tobool.i305.i to i8
  %45 = ptrtoint ptr %call.i239 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool42.i, ptr %call.i239, align 4
  br i1 %tobool.i305.i, label %if.then45.i, label %if.end40.i.if.end56.i_crit_edge

if.end40.i.if.end56.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

if.then45.i:                                      ; preds = %if.end40.i
  %call.i.i306.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %12, ptr noundef nonnull @.str.59, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %46 = call i32 @llvm.smin.i32(i32 %call.i.i306.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp47.i = icmp sgt i32 %46, -1
  br i1 %cmp47.i, label %if.then48.i, label %if.then45.i.if.end49.i_crit_edge

if.then45.i.if.end49.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then48.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val32.i, align 4
  %aud_channel.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 7
  %49 = ptrtoint ptr %aud_channel.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %aud_channel.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then48.i, %if.then45.i.if.end49.i_crit_edge
  %call.i.i307.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %12, ptr noundef nonnull @.str.60, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %50 = call i32 @llvm.smin.i32(i32 %call.i.i307.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp51.i = icmp sgt i32 %50, -1
  br i1 %cmp51.i, label %if.then52.i, label %if.end49.i.if.end53.i_crit_edge

if.end49.i.if.end53.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val32.i, align 4
  %adv_channel.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 8
  %53 = ptrtoint ptr %adv_channel.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %adv_channel.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then52.i, %if.end49.i.if.end53.i_crit_edge
  %call.i308.i = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.61, ptr noundef null) #9
  %tobool.i309.i = icmp ne ptr %call.i308.i, null
  %shared_bst.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 9
  %frombool55.i = zext i1 %tobool.i309.i to i8
  %54 = ptrtoint ptr %shared_bst.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %frombool55.i, ptr %shared_bst.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.end53.i, %if.end40.i.if.end56.i_crit_edge
  %call.i310.i = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.62, ptr noundef null) #9
  %tobool.i311.i = icmp ne ptr %call.i310.i, null
  %ext_bst.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 10
  %frombool58.i = zext i1 %tobool.i311.i to i8
  %55 = ptrtoint ptr %ext_bst.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool58.i, ptr %ext_bst.i, align 1
  %call.i312.i = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.63, ptr noundef null) #9
  %tobool.i313.i = icmp ne ptr %call.i312.i, null
  %gain_zc.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 6
  %frombool60.i = zext i1 %tobool.i313.i to i8
  %56 = ptrtoint ptr %gain_zc.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %frombool60.i, ptr %gain_zc.i, align 4
  %call61.i = call ptr @of_get_child_by_name(ptr noundef nonnull %12, ptr noundef nonnull @.str.64) #9
  %cmp62.i = icmp ne ptr %call61.i, null
  %classh_algo_enable.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12, i32 1
  %frombool63.i = zext i1 %cmp62.i to i8
  %57 = ptrtoint ptr %classh_algo_enable.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %frombool63.i, ptr %classh_algo_enable.i, align 1
  br i1 %cmp62.i, label %if.then66.i, label %if.end56.i.if.end121.i_crit_edge

if.end56.i.if.end121.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

if.then66.i:                                      ; preds = %if.end56.i
  %call.i314.i = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.65, ptr noundef null) #9
  %tobool.i315.i = icmp ne ptr %call.i314.i, null
  %frombool68.i = zext i1 %tobool.i315.i to i8
  %58 = ptrtoint ptr %classh_algo.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %frombool68.i, ptr %classh_algo.i, align 4
  %call.i.i316.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call61.i, ptr noundef nonnull @.str.66, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %59 = call i32 @llvm.smin.i32(i32 %call.i.i316.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp70.i = icmp sgt i32 %59, -1
  br i1 %cmp70.i, label %if.then71.i, label %if.then66.i.if.end73.i_crit_edge

if.then66.i.if.end73.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73.i

if.then71.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val32.i, align 4
  %or72.i = or i32 %61, -2147483648
  store i32 %or72.i, ptr %val32.i, align 4
  %classh_bst_max_limit.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12, i32 2
  %62 = ptrtoint ptr %classh_bst_max_limit.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or72.i, ptr %classh_bst_max_limit.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then71.i, %if.then66.i.if.end73.i_crit_edge
  %call.i.i317.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call61.i, ptr noundef nonnull @.str.66, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %63 = call i32 @llvm.smin.i32(i32 %call.i.i317.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp75.i = icmp sgt i32 %63, -1
  br i1 %cmp75.i, label %if.then76.i, label %if.end73.i.if.end79.i_crit_edge

if.end73.i.if.end79.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val32.i, align 4
  %or77.i = or i32 %65, -2147483648
  store i32 %or77.i, ptr %val32.i, align 4
  %classh_bst_max_limit78.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12, i32 2
  %66 = ptrtoint ptr %classh_bst_max_limit78.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or77.i, ptr %classh_bst_max_limit78.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then76.i, %if.end73.i.if.end79.i_crit_edge
  %call.i.i318.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call61.i, ptr noundef nonnull @.str.67, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %67 = call i32 @llvm.smin.i32(i32 %call.i.i318.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp81.i = icmp sgt i32 %67, -1
  br i1 %cmp81.i, label %if.then82.i, label %if.end79.i.if.end84.i_crit_edge

if.end79.i.if.end84.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i

if.then82.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val32.i, align 4
  %or83.i = or i32 %69, -2147483648
  store i32 %or83.i, ptr %val32.i, align 4
  %classh_mem_depth.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12, i32 3
  %70 = ptrtoint ptr %classh_mem_depth.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or83.i, ptr %classh_mem_depth.i, align 4
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then82.i, %if.end79.i.if.end84.i_crit_edge
  %call.i.i319.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call61.i, ptr noundef nonnull @.str.68, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %71 = call i32 @llvm.smin.i32(i32 %call.i.i319.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp86.i = icmp sgt i32 %71, -1
  br i1 %cmp86.i, label %if.then87.i, label %if.end84.i.if.end88.i_crit_edge

if.end84.i.if.end88.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i

if.then87.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val32.i, align 4
  %classh_release_rate.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12, i32 4
  %74 = ptrtoint ptr %classh_release_rate.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %classh_release_rate.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then87.i, %if.end84.i.if.end88.i_crit_edge
  %call.i.i320.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call61.i, ptr noundef nonnull @.str.69, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %75 = call i32 @llvm.smin.i32(i32 %call.i.i320.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp90.i = icmp sgt i32 %75, -1
  br i1 %cmp90.i, label %if.then91.i, label %if.end88.i.if.end93.i_crit_edge

if.end88.i.if.end93.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93.i

if.then91.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val32.i, align 4
  %or92.i = or i32 %77, -2147483648
  store i32 %or92.i, ptr %val32.i, align 4
  %classh_headroom.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12, i32 5
  %78 = ptrtoint ptr %classh_headroom.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or92.i, ptr %classh_headroom.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then91.i, %if.end88.i.if.end93.i_crit_edge
  %call.i.i321.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call61.i, ptr noundef nonnull @.str.70, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %79 = call i32 @llvm.smin.i32(i32 %call.i.i321.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp95.i = icmp sgt i32 %79, -1
  br i1 %cmp95.i, label %if.then96.i, label %if.end93.i.if.end97.i_crit_edge

if.end93.i.if.end97.i_crit_edge:                  ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i

if.then96.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val32.i, align 4
  %classh_wk_fet_disable.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12, i32 6
  %82 = ptrtoint ptr %classh_wk_fet_disable.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %classh_wk_fet_disable.i, align 4
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then96.i, %if.end93.i.if.end97.i_crit_edge
  %call.i.i322.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call61.i, ptr noundef nonnull @.str.71, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %83 = call i32 @llvm.smin.i32(i32 %call.i.i322.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp99.i = icmp sgt i32 %83, -1
  br i1 %cmp99.i, label %if.then100.i, label %if.end97.i.if.end102.i_crit_edge

if.end97.i.if.end102.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i

if.then100.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val32.i, align 4
  %or101.i = or i32 %85, -2147483648
  store i32 %or101.i, ptr %val32.i, align 4
  %classh_wk_fet_delay.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12, i32 7
  %86 = ptrtoint ptr %classh_wk_fet_delay.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or101.i, ptr %classh_wk_fet_delay.i, align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then100.i, %if.end97.i.if.end102.i_crit_edge
  %call.i.i323.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call61.i, ptr noundef nonnull @.str.72, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %87 = call i32 @llvm.smin.i32(i32 %call.i.i323.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp104.i = icmp sgt i32 %87, -1
  br i1 %cmp104.i, label %if.then105.i, label %if.end102.i.if.end106.i_crit_edge

if.end102.i.if.end106.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i

if.then105.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %val32.i, align 4
  %classh_wk_fet_thld.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12, i32 8
  %90 = ptrtoint ptr %classh_wk_fet_thld.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %classh_wk_fet_thld.i, align 4
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then105.i, %if.end102.i.if.end106.i_crit_edge
  %call.i.i324.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call61.i, ptr noundef nonnull @.str.73, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %91 = call i32 @llvm.smin.i32(i32 %call.i.i324.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %91)
  %cmp108.i = icmp sgt i32 %91, -1
  br i1 %cmp108.i, label %if.then109.i, label %if.end106.i.if.end111.i_crit_edge

if.end106.i.if.end111.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111.i

if.then109.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %val32.i, align 4
  %or110.i = or i32 %93, -2147483648
  store i32 %or110.i, ptr %val32.i, align 4
  %classh_vpch_auto.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12, i32 9
  %94 = ptrtoint ptr %classh_vpch_auto.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or110.i, ptr %classh_vpch_auto.i, align 4
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then109.i, %if.end106.i.if.end111.i_crit_edge
  %call.i.i325.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call61.i, ptr noundef nonnull @.str.74, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %95 = call i32 @llvm.smin.i32(i32 %call.i.i325.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp113.i = icmp sgt i32 %95, -1
  br i1 %cmp113.i, label %if.then114.i, label %if.end111.i.if.end116.i_crit_edge

if.end111.i.if.end116.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116.i

if.then114.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %val32.i, align 4
  %or115.i = or i32 %97, -2147483648
  store i32 %or115.i, ptr %val32.i, align 4
  %classh_vpch_rate.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12, i32 10
  %98 = ptrtoint ptr %classh_vpch_rate.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or115.i, ptr %classh_vpch_rate.i, align 4
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then114.i, %if.end111.i.if.end116.i_crit_edge
  %call.i.i326.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call61.i, ptr noundef nonnull @.str.75, ptr noundef nonnull %val32.i, i32 noundef 1, i32 noundef 0) #9
  %99 = call i32 @llvm.smin.i32(i32 %call.i.i326.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %99)
  %cmp118.i = icmp sgt i32 %99, -1
  br i1 %cmp118.i, label %if.then119.i, label %if.end116.i.if.end121.i_crit_edge

if.end116.i.if.end121.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

if.then119.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val32.i, align 4
  %classh_vpch_man.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 12, i32 11
  %102 = ptrtoint ptr %classh_vpch_man.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %classh_vpch_man.i, align 4
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then119.i, %if.end116.i.if.end121.i_crit_edge, %if.end56.i.if.end121.i_crit_edge
  call void @of_node_put(ptr noundef %call61.i) #9
  %call122.i = call ptr @of_get_child_by_name(ptr noundef nonnull %12, ptr noundef nonnull @.str.76) #9
  %tobool123.i = icmp ne ptr %call122.i, null
  %frombool125.i = zext i1 %tobool123.i to i8
  %103 = ptrtoint ptr %mon_cfg.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %frombool125.i, ptr %mon_cfg.i, align 1
  br i1 %tobool123.i, label %if.then128.i, label %if.end121.i.cs35l35_handle_of_data.exit_crit_edge

if.end121.i.cs35l35_handle_of_data.exit_crit_edge: ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cs35l35_handle_of_data.exit

if.then128.i:                                     ; preds = %if.end121.i
  %call.i327.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %call122.i, ptr noundef nonnull @.str.77, ptr noundef nonnull %monitor_array.i, i32 noundef 4, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i327.i)
  %tobool130.not.i = icmp sgt i32 %call.i327.i, -1
  br i1 %tobool130.not.i, label %if.then131.i, label %if.then128.i.if.end135.i_crit_edge

if.then128.i.if.end135.i_crit_edge:               ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135.i

if.then131.i:                                     ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #11
  %imon_specs.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 1
  %104 = ptrtoint ptr %imon_specs.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %imon_specs.i, align 1
  %105 = ptrtoint ptr %monitor_array.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %monitor_array.i, align 4
  %imon_dpth.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 7
  %107 = ptrtoint ptr %imon_dpth.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %imon_dpth.i, align 1
  %108 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %14, align 1
  %imon_loc.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 8
  %110 = ptrtoint ptr %imon_loc.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %imon_loc.i, align 1
  %111 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %15, align 2
  %imon_frm.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 9
  %113 = ptrtoint ptr %imon_frm.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %imon_frm.i, align 1
  %114 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %16, align 1
  %imon_scale.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 10
  %116 = ptrtoint ptr %imon_scale.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %imon_scale.i, align 1
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then131.i, %if.then128.i.if.end135.i_crit_edge
  %call.i328.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %call122.i, ptr noundef nonnull @.str.78, ptr noundef nonnull %monitor_array.i, i32 noundef 3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i328.i)
  %tobool138.not.i = icmp sgt i32 %call.i328.i, -1
  br i1 %tobool138.not.i, label %if.then139.i, label %if.end135.i.if.end143.i_crit_edge

if.end135.i.if.end143.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143.i

if.then139.i:                                     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #11
  %vmon_specs.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 2
  %117 = ptrtoint ptr %vmon_specs.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %vmon_specs.i, align 1
  %118 = ptrtoint ptr %monitor_array.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %monitor_array.i, align 4
  %vmon_dpth.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 11
  %120 = ptrtoint ptr %vmon_dpth.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %vmon_dpth.i, align 1
  %121 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %14, align 1
  %vmon_loc.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 12
  %123 = ptrtoint ptr %vmon_loc.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %vmon_loc.i, align 1
  %124 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %15, align 2
  %vmon_frm.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 13
  %126 = ptrtoint ptr %vmon_frm.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %vmon_frm.i, align 1
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then139.i, %if.end135.i.if.end143.i_crit_edge
  %call.i329.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %call122.i, ptr noundef nonnull @.str.79, ptr noundef nonnull %monitor_array.i, i32 noundef 3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i329.i)
  %tobool146.not.i = icmp sgt i32 %call.i329.i, -1
  br i1 %tobool146.not.i, label %if.then147.i, label %if.end143.i.if.end151.i_crit_edge

if.end143.i.if.end151.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151.i

if.then147.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #11
  %vpmon_specs.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 3
  %127 = ptrtoint ptr %vpmon_specs.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %vpmon_specs.i, align 1
  %128 = ptrtoint ptr %monitor_array.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %monitor_array.i, align 4
  %vpmon_dpth.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 14
  %130 = ptrtoint ptr %vpmon_dpth.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %vpmon_dpth.i, align 1
  %131 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %14, align 1
  %vpmon_loc.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 15
  %133 = ptrtoint ptr %vpmon_loc.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %vpmon_loc.i, align 1
  %134 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %15, align 2
  %vpmon_frm.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 16
  %136 = ptrtoint ptr %vpmon_frm.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %vpmon_frm.i, align 1
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then147.i, %if.end143.i.if.end151.i_crit_edge
  %call.i330.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %call122.i, ptr noundef nonnull @.str.80, ptr noundef nonnull %monitor_array.i, i32 noundef 3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i330.i)
  %tobool154.not.i = icmp sgt i32 %call.i330.i, -1
  br i1 %tobool154.not.i, label %if.then155.i, label %if.end151.i.if.end159.i_crit_edge

if.end151.i.if.end159.i_crit_edge:                ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159.i

if.then155.i:                                     ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #11
  %vbstmon_specs.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 4
  %137 = ptrtoint ptr %vbstmon_specs.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %vbstmon_specs.i, align 1
  %138 = ptrtoint ptr %monitor_array.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %monitor_array.i, align 4
  %vbstmon_dpth.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 17
  %140 = ptrtoint ptr %vbstmon_dpth.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %vbstmon_dpth.i, align 1
  %141 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %14, align 1
  %vbstmon_loc.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 18
  %143 = ptrtoint ptr %vbstmon_loc.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %vbstmon_loc.i, align 1
  %144 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %15, align 2
  %vbstmon_frm.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 19
  %146 = ptrtoint ptr %vbstmon_frm.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %vbstmon_frm.i, align 1
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then155.i, %if.end151.i.if.end159.i_crit_edge
  %call.i331.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %call122.i, ptr noundef nonnull @.str.81, ptr noundef nonnull %monitor_array.i, i32 noundef 3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i331.i)
  %tobool162.not.i = icmp sgt i32 %call.i331.i, -1
  br i1 %tobool162.not.i, label %if.then163.i, label %if.end159.i.if.end167.i_crit_edge

if.end159.i.if.end167.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167.i

if.then163.i:                                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #11
  %vpbrstat_specs.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 5
  %147 = ptrtoint ptr %vpbrstat_specs.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %vpbrstat_specs.i, align 1
  %148 = ptrtoint ptr %monitor_array.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %monitor_array.i, align 4
  %vpbrstat_dpth.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 20
  %150 = ptrtoint ptr %vpbrstat_dpth.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %vpbrstat_dpth.i, align 1
  %151 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %14, align 1
  %vpbrstat_loc.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 21
  %153 = ptrtoint ptr %vpbrstat_loc.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %vpbrstat_loc.i, align 1
  %154 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %15, align 2
  %vpbrstat_frm.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 22
  %156 = ptrtoint ptr %vpbrstat_frm.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %vpbrstat_frm.i, align 1
  br label %if.end167.i

if.end167.i:                                      ; preds = %if.then163.i, %if.end159.i.if.end167.i_crit_edge
  %call.i332.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %call122.i, ptr noundef nonnull @.str.82, ptr noundef nonnull %monitor_array.i, i32 noundef 3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i332.i)
  %tobool170.not.i = icmp sgt i32 %call.i332.i, -1
  br i1 %tobool170.not.i, label %if.then171.i, label %if.end167.i.cs35l35_handle_of_data.exit_crit_edge

if.end167.i.cs35l35_handle_of_data.exit_crit_edge: ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cs35l35_handle_of_data.exit

if.then171.i:                                     ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #11
  %zerofill_specs.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 6
  %157 = ptrtoint ptr %zerofill_specs.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %zerofill_specs.i, align 1
  %158 = ptrtoint ptr %monitor_array.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %monitor_array.i, align 4
  %zerofill_dpth.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 23
  %160 = ptrtoint ptr %zerofill_dpth.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %zerofill_dpth.i, align 1
  %161 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %14, align 1
  %zerofill_loc.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 24
  %163 = ptrtoint ptr %zerofill_loc.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %zerofill_loc.i, align 1
  %164 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %15, align 2
  %zerofill_frm.i = getelementptr inbounds %struct.cs35l35_platform_data, ptr %call.i239, i32 0, i32 13, i32 25
  %166 = ptrtoint ptr %zerofill_frm.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %zerofill_frm.i, align 1
  br label %cs35l35_handle_of_data.exit

cs35l35_handle_of_data.exit.thread:               ; preds = %do.end29.i, %do.end18.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %monitor_array.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #9
  br label %cleanup

cs35l35_handle_of_data.exit:                      ; preds = %if.then171.i, %if.end167.i.cs35l35_handle_of_data.exit_crit_edge, %if.end121.i.cs35l35_handle_of_data.exit_crit_edge
  call void @of_node_put(ptr noundef %call122.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %monitor_array.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #9
  br label %if.end35

if.end35:                                         ; preds = %cs35l35_handle_of_data.exit, %if.end27.if.end35_crit_edge
  %pdata36 = getelementptr inbounds %struct.cs35l35_private, ptr %call.i, i32 0, i32 1
  %167 = call ptr @memcpy(ptr %pdata36, ptr %call.i239, i32 116)
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.then22
  %168 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %num_supplies, align 4
  %call41 = call i32 @regulator_bulk_enable(i32 noundef %169, ptr noundef %arrayidx11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %if.end47, label %do.end46

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call41) #12
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %call48 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 3) #9
  %reset_gpio = getelementptr inbounds %struct.cs35l35_private, ptr %call.i, i32 0, i32 10
  %170 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call48, ptr %reset_gpio, align 4
  %cmp.i241 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %if.then51, label %if.end47.if.end65_crit_edge

if.end47.if.end65_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then51:                                        ; preds = %if.end47
  %171 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %reset_gpio, align 4
  %cmp55 = icmp eq ptr %call48, inttoptr (i32 -16 to ptr)
  br i1 %cmp55, label %do.end59, label %do.end63

do.end59:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15) #12
  br label %if.end65

do.end63:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %call48 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %172) #12
  br label %err

if.end65:                                         ; preds = %do.end59, %if.end47.if.end65_crit_edge
  %173 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %174, i32 noundef 0) #9
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #9
  %175 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %176, i32 noundef 1) #9
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #9
  %pdn_done = getelementptr inbounds %struct.cs35l35_private, ptr %call.i, i32 0, i32 11
  %177 = ptrtoint ptr %pdn_done to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %pdn_done, align 4
  %wait.i = getelementptr inbounds %struct.cs35l35_private, ptr %call.i, i32 0, i32 11, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @init_completion.__key) #9
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 6
  %178 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %irq, align 4
  %call66 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %179, ptr noundef null, ptr noundef nonnull @cs35l35_irq, i32 noundef 8328, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 0
  br i1 %cmp67.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call66) #12
  br label %err

if.end72:                                         ; preds = %if.end65
  %180 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regmap, align 4
  %call74 = call fastcc i32 @cirrus_read_device_id(ptr noundef %181)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %if.end80

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call74) #12
  br label %err

if.end80:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 219701, i32 %call74)
  %cmp81.not = icmp eq i32 %call74, 219701
  br i1 %cmp81.not, label %if.end86, label %do.end85

do.end85:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call74, i32 noundef 219701) #12
  br label %err

if.end86:                                         ; preds = %if.end80
  %182 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regmap, align 4
  %call88 = call i32 @regmap_read(ptr noundef %183, i32 noundef 5, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %do.end93, label %if.end94

do.end93:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %call88) #12
  br label %err

if.end94:                                         ; preds = %if.end86
  %184 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regmap, align 4
  %call96 = call i32 @regmap_register_patch(ptr noundef %185, ptr noundef nonnull @cs35l35_errata_patch, i32 noundef 11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %do.end101, label %do.end105

do.end101:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %call96) #12
  br label %err

do.end105:                                        ; preds = %if.end94
  %186 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %reg, align 4
  %and = and i32 %187, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef 219701, i32 noundef %and) #12
  %188 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regmap, align 4
  %call107 = call i32 @regmap_write(ptr noundef %189, i32 noundef 112, i32 noundef 56) #9
  %190 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regmap, align 4
  %call109 = call i32 @regmap_write(ptr noundef %191, i32 noundef 113, i32 noundef 239) #9
  %192 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regmap, align 4
  %call111 = call i32 @regmap_write(ptr noundef %193, i32 noundef 114, i32 noundef 238) #9
  %194 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regmap, align 4
  %call113 = call i32 @regmap_write(ptr noundef %195, i32 noundef 115, i32 noundef 255) #9
  %196 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regmap, align 4
  %call.i242 = call i32 @regmap_update_bits_base(ptr noundef %197, i32 noundef 7, i32 noundef 224, i32 noundef 224, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %bst_pdn_fet_on = getelementptr inbounds %struct.cs35l35_private, ptr %call.i, i32 0, i32 1, i32 3
  %198 = ptrtoint ptr %bst_pdn_fet_on to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %bst_pdn_fet_on, align 4, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool117.not = icmp eq i8 %199, 0
  %200 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regmap, align 4
  %. = select i1 %tobool117.not, i32 4, i32 2
  %call.i244 = call i32 @regmap_update_bits_base(ptr noundef %201, i32 noundef 7, i32 noundef 6, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %202 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regmap, align 4
  %call.i245 = call i32 @regmap_update_bits_base(ptr noundef %203, i32 noundef 8, i32 noundef 30, i32 noundef 30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %204 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regmap, align 4
  %call.i246 = call i32 @regmap_update_bits_base(ptr noundef %205, i32 noundef 24, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call129 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @soc_component_dev_cs35l35, ptr noundef nonnull @cs35l35_dai, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %do.end134, label %do.end105.cleanup_crit_edge

do.end105.cleanup_crit_edge:                      ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end134:                                        ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %call129) #12
  br label %err

err:                                              ; preds = %do.end134, %do.end101, %do.end93, %do.end85, %if.then76, %do.end71, %do.end63
  %ret.0 = phi i32 [ %call66, %do.end71 ], [ %call74, %if.then76 ], [ -19, %do.end85 ], [ %call88, %do.end93 ], [ %call96, %do.end101 ], [ %call129, %do.end134 ], [ %172, %do.end63 ]
  %206 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %num_supplies, align 4
  %call139 = call i32 @regulator_bulk_disable(i32 noundef %207, ptr noundef %arrayidx11) #9
  %208 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %209, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end105.cleanup_crit_edge, %do.end46, %cs35l35_handle_of_data.exit.thread, %if.else.cleanup_crit_edge, %do.end19, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then7 ], [ %call14, %do.end19 ], [ %call41, %do.end46 ], [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ 0, %do.end105.cleanup_crit_edge ], [ -22, %cs35l35_handle_of_data.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l35_i2c_remove(ptr nocapture noundef readonly %i2c_client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_supplies = getelementptr inbounds %struct.cs35l35_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.cs35l35_private, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef %3, ptr noundef %supplies) #9
  %reset_gpio = getelementptr inbounds %struct.cs35l35_private, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l35_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %sticky1 = alloca i32, align 4
  %sticky2 = alloca i32, align 4
  %sticky3 = alloca i32, align 4
  %sticky4 = alloca i32, align 4
  %mask1 = alloca i32, align 4
  %mask2 = alloca i32, align 4
  %mask3 = alloca i32, align 4
  %mask4 = alloca i32, align 4
  %current1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sticky1) #9
  %0 = ptrtoint ptr %sticky1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sticky1, align 4, !annotation !362
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sticky2) #9
  %1 = ptrtoint ptr %sticky2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sticky2, align 4, !annotation !362
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sticky3) #9
  %2 = ptrtoint ptr %sticky3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sticky3, align 4, !annotation !362
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sticky4) #9
  %3 = ptrtoint ptr %sticky4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sticky4, align 4, !annotation !362
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask1) #9
  %4 = ptrtoint ptr %mask1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mask1, align 4, !annotation !362
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask2) #9
  %5 = ptrtoint ptr %mask2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mask2, align 4, !annotation !362
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask3) #9
  %6 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mask3, align 4, !annotation !362
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask4) #9
  %7 = ptrtoint ptr %mask4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %mask4, align 4, !annotation !362
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current1) #9
  %8 = ptrtoint ptr %current1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %current1, align 4, !annotation !362
  %regmap = getelementptr inbounds %struct.cs35l35_private, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %10, i32 noundef 119, ptr noundef nonnull %sticky4) #9
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %12, i32 noundef 118, ptr noundef nonnull %sticky3) #9
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %14, i32 noundef 117, ptr noundef nonnull %sticky2) #9
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %16, i32 noundef 116, ptr noundef nonnull %sticky1) #9
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_read(ptr noundef %18, i32 noundef 115, ptr noundef nonnull %mask4) #9
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_read(ptr noundef %20, i32 noundef 114, ptr noundef nonnull %mask3) #9
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call12 = call i32 @regmap_read(ptr noundef %22, i32 noundef 113, ptr noundef nonnull %mask2) #9
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call14 = call i32 @regmap_read(ptr noundef %24, i32 noundef 112, ptr noundef nonnull %mask1) #9
  %25 = ptrtoint ptr %sticky1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sticky1, align 4
  %27 = ptrtoint ptr %mask1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask1, align 4
  %neg = xor i32 %28, -1
  %and = and i32 %26, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %29 = ptrtoint ptr %sticky2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sticky2, align 4
  %31 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask2, align 4
  %neg15 = xor i32 %32, -1
  %and16 = and i32 %30, %neg15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true18:                                  ; preds = %land.lhs.true
  %33 = ptrtoint ptr %sticky3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sticky3, align 4
  %35 = ptrtoint ptr %mask3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask3, align 4
  %neg19 = xor i32 %36, -1
  %and20 = and i32 %34, %neg19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %land.lhs.true18.if.end_crit_edge

land.lhs.true18.if.end_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %37 = ptrtoint ptr %sticky4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sticky4, align 4
  %39 = ptrtoint ptr %mask4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mask4, align 4
  %neg23 = xor i32 %40, -1
  %and24 = and i32 %38, %neg23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true22.cleanup_crit_edge, label %land.lhs.true22.if.end_crit_edge

land.lhs.true22.if.end_crit_edge:                 ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true22.if.end_crit_edge, %land.lhs.true18.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %41 = ptrtoint ptr %sticky2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sticky2, align 4
  %and26 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end.if.end29_crit_edge, label %if.then28

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pdn_done = getelementptr inbounds %struct.cs35l35_private, ptr %data, i32 0, i32 11
  call void @complete(ptr noundef %pdn_done) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end.if.end29_crit_edge
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call31 = call i32 @regmap_read(ptr noundef %44, i32 noundef 116, ptr noundef nonnull %current1) #9
  %45 = ptrtoint ptr %sticky1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sticky1, align 4
  %and32 = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end29.if.end54_crit_edge, label %do.end

if.end29.if.end54_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.end:                                           ; preds = %if.end29
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %48, ptr noundef nonnull @.str.84) #12
  %49 = ptrtoint ptr %current1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %current1, align 4
  %and35 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body38, label %do.end.if.end54_crit_edge

do.end.if.end54_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.body38:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l35_irq.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l35_irq, %if.then43)) #9
          to label %do.end46 [label %if.then43], !srcloc !364

if.then43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cs35l35_irq.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.85) #9
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body38
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 100, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call.i311 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 100, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call.i312 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 100, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end54

if.end54:                                         ; preds = %do.end46, %do.end.if.end54_crit_edge, %if.end29.if.end54_crit_edge
  %57 = ptrtoint ptr %sticky1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sticky1, align 4
  %and55 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end89_crit_edge, label %do.end60

if.end54.if.end89_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.end60:                                         ; preds = %if.end54
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %60, ptr noundef nonnull @.str.90) #12
  %61 = ptrtoint ptr %current1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %current1, align 4
  %and62 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.body65, label %do.end60.if.end89_crit_edge

do.end60.if.end89_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.body65:                                        ; preds = %do.end60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l35_irq.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l35_irq, %if.then77)) #9
          to label %do.end81 [label %if.then77], !srcloc !364

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l35_irq.__UNIQUE_ID_ddebug295, ptr noundef %64, ptr noundef nonnull @.str.92) #9
  br label %do.end81

do.end81:                                         ; preds = %if.then77, %do.body65
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call.i313 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 100, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %call.i314 = call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 100, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 4
  %call.i315 = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 100, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end89

if.end89:                                         ; preds = %do.end81, %do.end60.if.end89_crit_edge, %if.end54.if.end89_crit_edge
  %71 = ptrtoint ptr %sticky1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sticky1, align 4
  %and90 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end124_crit_edge, label %do.end95

if.end89.if.end124_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

do.end95:                                         ; preds = %if.end89
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.94) #12
  %75 = ptrtoint ptr %current1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %current1, align 4
  %and97 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %do.body100, label %do.end95.if.end124_crit_edge

do.end95.if.end124_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

do.body100:                                       ; preds = %do.end95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l35_irq.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l35_irq, %if.then112)) #9
          to label %do.end116 [label %if.then112], !srcloc !364

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l35_irq.__UNIQUE_ID_ddebug296, ptr noundef %78, ptr noundef nonnull @.str.97) #9
  br label %do.end116

do.end116:                                        ; preds = %if.then112, %do.body100
  %79 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap, align 4
  %call.i316 = call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 100, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 4
  %call.i317 = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 100, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 4
  %call.i318 = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 100, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end124

if.end124:                                        ; preds = %do.end116, %do.end95.if.end124_crit_edge, %if.end89.if.end124_crit_edge
  %85 = ptrtoint ptr %sticky1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sticky1, align 4
  %and125 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end124.if.end159_crit_edge, label %do.end130

if.end124.if.end159_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

do.end130:                                        ; preds = %if.end124
  %87 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %88, ptr noundef nonnull @.str.99) #12
  %89 = ptrtoint ptr %current1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %current1, align 4
  %and132 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %do.body135, label %do.end130.if.end159_crit_edge

do.end130.if.end159_crit_edge:                    ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

do.body135:                                       ; preds = %do.end130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l35_irq.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l35_irq, %if.then147)) #9
          to label %do.end151 [label %if.then147], !srcloc !364

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l35_irq.__UNIQUE_ID_ddebug297, ptr noundef %92, ptr noundef nonnull @.str.101) #9
  br label %do.end151

do.end151:                                        ; preds = %if.then147, %do.body135
  %93 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap, align 4
  %call.i319 = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 100, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %95 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap, align 4
  %call.i320 = call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 100, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %97 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap, align 4
  %call.i321 = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 100, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end159

if.end159:                                        ; preds = %do.end151, %do.end130.if.end159_crit_edge, %if.end124.if.end159_crit_edge
  %99 = ptrtoint ptr %sticky3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sticky3, align 4
  %and160 = and i32 %100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end159.if.end171_crit_edge, label %do.end165

if.end159.if.end171_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171

do.end165:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %102, ptr noundef nonnull @.str.103) #12
  %103 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap, align 4
  %call.i322 = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 7, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %105 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap, align 4
  %call.i323 = call i32 @regmap_update_bits_base(ptr noundef %106, i32 noundef 6, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end171

if.end171:                                        ; preds = %do.end165, %if.end159.if.end171_crit_edge
  %107 = ptrtoint ptr %sticky3 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sticky3, align 4
  %and172 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.end171.if.end183_crit_edge, label %do.end177

if.end171.if.end183_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

do.end177:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %110, ptr noundef nonnull @.str.106) #12
  %111 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap, align 4
  %call.i324 = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 7, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %113 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap, align 4
  %call.i325 = call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef 6, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end183

if.end183:                                        ; preds = %do.end177, %if.end171.if.end183_crit_edge
  %115 = ptrtoint ptr %sticky2 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sticky2, align 4
  %and184 = and i32 %116, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.end183.if.end204_crit_edge, label %do.body187

if.end183.if.end204_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204

do.body187:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l35_irq.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l35_irq, %if.then199)) #9
          to label %if.end204 [label %if.then199], !srcloc !364

if.then199:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l35_irq.__UNIQUE_ID_ddebug298, ptr noundef %118, ptr noundef nonnull @.str.108) #9
  br label %if.end204

if.end204:                                        ; preds = %if.then199, %do.body187, %if.end183.if.end204_crit_edge
  %119 = ptrtoint ptr %sticky4 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sticky4, align 4
  %and205 = and i32 %120, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %if.end204.if.end225_crit_edge, label %do.body208

if.end204.if.end225_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end225

do.body208:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l35_irq.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l35_irq, %if.then220)) #9
          to label %if.end225 [label %if.then220], !srcloc !364

if.then220:                                       ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l35_irq.__UNIQUE_ID_ddebug299, ptr noundef %122, ptr noundef nonnull @.str.109) #9
  br label %if.end225

if.end225:                                        ; preds = %if.then220, %do.body208, %if.end204.if.end225_crit_edge
  %123 = ptrtoint ptr %sticky4 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sticky4, align 4
  %and226 = and i32 %124, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %if.end225.cleanup_crit_edge, label %do.body229

if.end225.cleanup_crit_edge:                      ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body229:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l35_irq.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l35_irq, %if.then241)) #9
          to label %cleanup [label %if.then241], !srcloc !364

if.then241:                                       ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l35_irq.__UNIQUE_ID_ddebug300, ptr noundef %126, ptr noundef nonnull @.str.110) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then241, %do.body229, %if.end225.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true22.cleanup_crit_edge ], [ 1, %if.then241 ], [ 1, %if.end225.cleanup_crit_edge ], [ 1, %do.body229 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sticky4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sticky3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sticky2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sticky1) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cirrus_read_device_id(ptr noundef %regmap) unnamed_addr #5 align 64 {
entry:
  %devid = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %devid) #9
  %0 = ptrtoint ptr %devid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %devid, align 1, !annotation !362
  %1 = getelementptr inbounds [3 x i8], ptr %devid, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !362
  %3 = getelementptr inbounds [3 x i8], ptr %devid, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !362
  %call = call i32 @regmap_bulk_read(ptr noundef %regmap, i32 noundef 1, ptr noundef nonnull %devid, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %devid) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs35l35_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 56, label %entry.return_crit_edge
    i32 75, label %entry.return_crit_edge14
    i32 78, label %entry.return_crit_edge15
    i32 126, label %entry.return_crit_edge16
    i32 112, label %entry.return_crit_edge17
    i32 113, label %entry.return_crit_edge18
    i32 114, label %entry.return_crit_edge19
    i32 115, label %entry.return_crit_edge20
    i32 116, label %entry.return_crit_edge21
    i32 117, label %entry.return_crit_edge22
    i32 118, label %entry.return_crit_edge23
    i32 119, label %entry.return_crit_edge24
    i32 120, label %entry.return_crit_edge25
    i32 104, label %entry.return_crit_edge26
    i32 105, label %entry.return_crit_edge27
    i32 106, label %entry.return_crit_edge28
    i32 98, label %entry.return_crit_edge29
    i32 99, label %entry.return_crit_edge30
    i32 100, label %entry.return_crit_edge31
    i32 81, label %entry.return_crit_edge32
    i32 82, label %entry.return_crit_edge33
    i32 83, label %entry.return_crit_edge34
    i32 84, label %entry.return_crit_edge35
    i32 85, label %entry.return_crit_edge36
    i32 86, label %entry.return_crit_edge37
    i32 87, label %entry.return_crit_edge38
    i32 88, label %entry.return_crit_edge39
    i32 89, label %entry.return_crit_edge40
    i32 90, label %entry.return_crit_edge41
    i32 91, label %entry.return_crit_edge42
    i32 92, label %entry.return_crit_edge43
    i32 93, label %entry.return_crit_edge44
    i32 58, label %entry.return_crit_edge45
    i32 59, label %entry.return_crit_edge46
    i32 60, label %entry.return_crit_edge47
    i32 61, label %entry.return_crit_edge48
    i32 48, label %entry.return_crit_edge49
    i32 49, label %entry.return_crit_edge50
    i32 50, label %entry.return_crit_edge51
    i32 51, label %entry.return_crit_edge52
    i32 52, label %entry.return_crit_edge53
    i32 32, label %entry.return_crit_edge54
    i32 33, label %entry.return_crit_edge55
    i32 34, label %entry.return_crit_edge56
    i32 35, label %entry.return_crit_edge57
    i32 36, label %entry.return_crit_edge58
    i32 26, label %entry.return_crit_edge59
    i32 27, label %entry.return_crit_edge60
    i32 28, label %entry.return_crit_edge61
    i32 29, label %entry.return_crit_edge62
    i32 30, label %entry.return_crit_edge63
    i32 19, label %entry.return_crit_edge64
    i32 20, label %entry.return_crit_edge65
    i32 21, label %entry.return_crit_edge66
    i32 22, label %entry.return_crit_edge67
    i32 23, label %entry.return_crit_edge68
    i32 24, label %entry.return_crit_edge69
    i32 25, label %entry.return_crit_edge70
    i32 10, label %entry.return_crit_edge71
    i32 11, label %entry.return_crit_edge72
    i32 12, label %entry.return_crit_edge73
    i32 13, label %entry.return_crit_edge74
    i32 14, label %entry.return_crit_edge75
    i32 15, label %entry.return_crit_edge76
    i32 1, label %entry.return_crit_edge77
    i32 2, label %entry.return_crit_edge78
    i32 3, label %entry.return_crit_edge79
    i32 4, label %entry.return_crit_edge80
    i32 5, label %entry.return_crit_edge81
    i32 6, label %entry.return_crit_edge82
    i32 7, label %entry.return_crit_edge83
    i32 8, label %entry.return_crit_edge84
  ]

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs35l35_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -116
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 11
  %switch.cast = trunc i32 %switch.tableidx to i11
  %switch.downshift = lshr i11 -993, %switch.cast
  %1 = and i11 %switch.downshift, 1
  %2 = sext i11 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i11 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs35l35_precious_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -116
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 11
  %switch.cast = trunc i32 %switch.tableidx to i11
  %switch.downshift = lshr i11 -993, %switch.cast
  %1 = and i11 %switch.downshift, 1
  %2 = sext i11 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i11 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l35_component_probe(ptr noundef %component) #2 align 64 {
entry:
  %bst_ipk.i = alloca i32, align 4
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
  %pdata = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1
  %classh_algo = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 12
  %mon_cfg = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13
  %bst_vctl = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %bst_vctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bst_vctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 29, i32 noundef 127, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bst_ipk = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %bst_ipk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bst_ipk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %regmap9 = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap9, align 4
  %call.i378 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 30, i32 noundef 31, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %boost_ind = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 11
  %12 = ptrtoint ptr %boost_ind to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %boost_ind, align 4
  %regmap1.i = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bst_ipk.i) #9
  %16 = ptrtoint ptr %bst_ipk.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bst_ipk.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 36, i32 noundef 240, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call2.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 30, ptr noundef nonnull %bst_ipk.i) #9
  %17 = ptrtoint ptr %bst_ipk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bst_ipk.i, align 4
  %and.i = and i32 %18, 31
  store i32 %and.i, ptr %bst_ipk.i, align 4
  %19 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %13, label %cs35l35_boost_inductor.exit [
    i32 1000, label %if.end13.if.end18_crit_edge
    i32 1200, label %sw.bb8.i
    i32 1500, label %sw.bb18.i
    i32 2200, label %sw.bb28.i
  ]

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

sw.bb8.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

sw.bb18.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

sw.bb28.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

cs35l35_boost_inductor.exit:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.136, i32 noundef %13) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bst_ipk.i) #9
  br label %cleanup

if.end18:                                         ; preds = %sw.bb28.i, %sw.bb18.i, %sw.bb8.i, %if.end13.if.end18_crit_edge
  %.sink423 = phi i32 [ 25, %sw.bb28.i ], [ 32, %sw.bb18.i ], [ 32, %sw.bb8.i ], [ 36, %if.end13.if.end18_crit_edge ]
  %.sink422 = phi i32 [ 37, %sw.bb28.i ], [ 32, %sw.bb18.i ], [ 32, %sw.bb8.i ], [ 36, %if.end13.if.end18_crit_edge ]
  %.sink421 = phi i32 [ 3, %sw.bb28.i ], [ 2, %sw.bb18.i ], [ 1, %sw.bb8.i ], [ 0, %if.end13.if.end18_crit_edge ]
  %.sink420 = phi i32 [ 35, %sw.bb28.i ], [ 60, %sw.bb18.i ], [ 71, %sw.bb8.i ], [ 78, %if.end13.if.end18_crit_edge ]
  %call29.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 33, i32 noundef %.sink423) #9
  %call30.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 34, i32 noundef %.sink422) #9
  %call.i65.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 36, i32 noundef 3, i32 noundef %.sink421, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %22 = ptrtoint ptr %bst_ipk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.sink = load i32, ptr %bst_ipk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.sink)
  %cmp32.i = icmp ult i32 %.sink, 4
  %.419 = select i1 %cmp32.i, i32 27, i32 %.sink420
  %call34.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 35, i32 noundef %.419) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bst_ipk.i) #9
  %gain_zc = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %gain_zc to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gain_zc, align 4, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool20.not = icmp eq i8 %24, 0
  br i1 %tobool20.not, label %if.end18.if.end28_crit_edge, label %if.then21

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap1.i, align 4
  %call.i379 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 24, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.end18.if.end28_crit_edge
  %aud_channel = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 7
  %27 = ptrtoint ptr %aud_channel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %aud_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool30.not = icmp eq i32 %28, 0
  br i1 %tobool30.not, label %if.end28.if.end37_crit_edge, label %if.then31

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap1.i, align 4
  %shl35 = shl i32 %28, 7
  %call.i380 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 82, i32 noundef 128, i32 noundef %shl35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end28.if.end37_crit_edge
  %31 = ptrtoint ptr %pdata to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pdata, align 4, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool39.not = icmp eq i8 %32, 0
  br i1 %tobool39.not, label %if.end37.if.end55_crit_edge, label %if.then40

if.end37.if.end55_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then40:                                        ; preds = %if.end37
  %33 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap1.i, align 4
  %adv_channel = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 8
  %35 = ptrtoint ptr %adv_channel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %adv_channel, align 4
  %shl43 = shl i32 %36, 7
  %call.i381 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 83, i32 noundef 128, i32 noundef %shl43, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %shared_bst = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 9
  %37 = ptrtoint ptr %shared_bst to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %shared_bst, align 4, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool46.not = icmp eq i8 %38, 0
  br i1 %tobool46.not, label %if.then40.if.end50_crit_edge, label %if.then47

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then47:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap1.i, align 4
  %call.i382 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 48, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.then40.if.end50_crit_edge
  %call51 = call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @cs35l35_adv_controls, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.if.end55_crit_edge, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end55:                                         ; preds = %if.end50.if.end55_crit_edge, %if.end37.if.end55_crit_edge
  %sp_drv_str = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %sp_drv_str to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sp_drv_str, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool57.not = icmp eq i32 %42, 0
  br i1 %tobool57.not, label %if.end55.if.end64_crit_edge, label %if.then58

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap1.i, align 4
  %shl62 = shl i32 %42, 4
  %call.i383 = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 10, i32 noundef 16, i32 noundef %shl62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %if.end55.if.end64_crit_edge
  %sp_drv_unused = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %sp_drv_unused to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sp_drv_unused, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool66.not = icmp eq i32 %46, 0
  br i1 %tobool66.not, label %if.end64.if.end73_crit_edge, label %if.then67

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap1.i, align 4
  %call.i384 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 15, i32 noundef 3, i32 noundef %46, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %if.end64.if.end73_crit_edge
  %classh_algo_enable = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 12, i32 1
  %49 = ptrtoint ptr %classh_algo_enable to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %classh_algo_enable, align 1, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool74.not = icmp eq i8 %50, 0
  br i1 %tobool74.not, label %if.end73.if.end155_crit_edge, label %if.then75

if.end73.if.end155_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then75:                                        ; preds = %if.end73
  %51 = ptrtoint ptr %classh_algo to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %classh_algo, align 4, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool76.not = icmp eq i8 %52, 0
  br i1 %tobool76.not, label %if.then75.if.end84_crit_edge, label %if.then77

if.then75.if.end84_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then77:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap1.i, align 4
  %call.i385 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 48, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end84

if.end84:                                         ; preds = %if.then77, %if.then75.if.end84_crit_edge
  %classh_bst_max_limit = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 12, i32 2
  %55 = ptrtoint ptr %classh_bst_max_limit to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %classh_bst_max_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool85.not = icmp eq i32 %56, 0
  br i1 %tobool85.not, label %if.end84.if.end91_crit_edge, label %if.then86

if.end84.if.end91_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap1.i, align 4
  %shl89 = shl i32 %56, 3
  %call.i386 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 48, i32 noundef 8, i32 noundef %shl89, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.end84.if.end91_crit_edge
  %classh_mem_depth = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 12, i32 3
  %59 = ptrtoint ptr %classh_mem_depth to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %classh_mem_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool92.not = icmp eq i32 %60, 0
  br i1 %tobool92.not, label %if.end91.if.end98_crit_edge, label %if.then93

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then93:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap1.i, align 4
  %call.i387 = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 48, i32 noundef 1, i32 noundef %60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %if.end91.if.end98_crit_edge
  %classh_headroom = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 12, i32 5
  %63 = ptrtoint ptr %classh_headroom to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %classh_headroom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool99.not = icmp eq i32 %64, 0
  br i1 %tobool99.not, label %if.end98.if.end105_crit_edge, label %if.then100

if.end98.if.end105_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap1.i, align 4
  %call.i388 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 49, i32 noundef 63, i32 noundef %64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %if.end98.if.end105_crit_edge
  %classh_release_rate = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 12, i32 4
  %67 = ptrtoint ptr %classh_release_rate to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %classh_release_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool106.not = icmp eq i32 %68, 0
  br i1 %tobool106.not, label %if.end105.if.end112_crit_edge, label %if.then107

if.end105.if.end112_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap1.i, align 4
  %call.i389 = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 50, i32 noundef 255, i32 noundef %68, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end112

if.end112:                                        ; preds = %if.then107, %if.end105.if.end112_crit_edge
  %classh_wk_fet_disable = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 12, i32 6
  %71 = ptrtoint ptr %classh_wk_fet_disable to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %classh_wk_fet_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool113.not = icmp eq i32 %72, 0
  br i1 %tobool113.not, label %if.end112.if.end119_crit_edge, label %if.then114

if.end112.if.end119_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap1.i, align 4
  %shl117 = shl i32 %72, 7
  %call.i390 = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 51, i32 noundef 128, i32 noundef %shl117, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end112.if.end119_crit_edge
  %classh_wk_fet_delay = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 12, i32 7
  %75 = ptrtoint ptr %classh_wk_fet_delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %classh_wk_fet_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool120.not = icmp eq i32 %76, 0
  br i1 %tobool120.not, label %if.end119.if.end126_crit_edge, label %if.then121

if.end119.if.end126_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then121:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap1.i, align 4
  %shl124 = shl i32 %76, 4
  %call.i391 = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 51, i32 noundef 112, i32 noundef %shl124, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end126

if.end126:                                        ; preds = %if.then121, %if.end119.if.end126_crit_edge
  %classh_wk_fet_thld = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 12, i32 8
  %79 = ptrtoint ptr %classh_wk_fet_thld to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %classh_wk_fet_thld, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool127.not = icmp eq i32 %80, 0
  br i1 %tobool127.not, label %if.end126.if.end133_crit_edge, label %if.then128

if.end126.if.end133_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap1.i, align 4
  %call.i392 = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 51, i32 noundef 15, i32 noundef %80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end133

if.end133:                                        ; preds = %if.then128, %if.end126.if.end133_crit_edge
  %classh_vpch_auto = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 12, i32 9
  %83 = ptrtoint ptr %classh_vpch_auto to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %classh_vpch_auto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool134.not = icmp eq i32 %84, 0
  br i1 %tobool134.not, label %if.end133.if.end140_crit_edge, label %if.then135

if.end133.if.end140_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then135:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap1.i, align 4
  %shl138 = shl i32 %84, 7
  %call.i393 = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 52, i32 noundef 128, i32 noundef %shl138, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end140

if.end140:                                        ; preds = %if.then135, %if.end133.if.end140_crit_edge
  %classh_vpch_rate = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 12, i32 10
  %87 = ptrtoint ptr %classh_vpch_rate to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %classh_vpch_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool141.not = icmp eq i32 %88, 0
  br i1 %tobool141.not, label %if.end140.if.end147_crit_edge, label %if.then142

if.end140.if.end147_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.then142:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap1.i, align 4
  %shl145 = shl i32 %88, 5
  %call.i394 = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 52, i32 noundef 96, i32 noundef %shl145, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end147

if.end147:                                        ; preds = %if.then142, %if.end140.if.end147_crit_edge
  %classh_vpch_man = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 12, i32 11
  %91 = ptrtoint ptr %classh_vpch_man to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %classh_vpch_man, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool148.not = icmp eq i32 %92, 0
  br i1 %tobool148.not, label %if.end147.if.end155_crit_edge, label %if.then149

if.end147.if.end155_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then149:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap1.i, align 4
  %call.i395 = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 52, i32 noundef 31, i32 noundef %92, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end155

if.end155:                                        ; preds = %if.then149, %if.end147.if.end155_crit_edge, %if.end73.if.end155_crit_edge
  %95 = ptrtoint ptr %mon_cfg to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %mon_cfg, align 1, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool156.not = icmp eq i8 %96, 0
  br i1 %tobool156.not, label %if.end155.cleanup_crit_edge, label %if.then157

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then157:                                       ; preds = %if.end155
  %vmon_specs = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 2
  %97 = ptrtoint ptr %vmon_specs to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %vmon_specs, align 1, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool158.not = icmp eq i8 %98, 0
  br i1 %tobool158.not, label %if.then157.if.end172_crit_edge, label %if.then159

if.then157.if.end172_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then159:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap1.i, align 4
  %vmon_dpth = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 11
  %101 = ptrtoint ptr %vmon_dpth to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %vmon_dpth, align 1
  %conv161 = zext i8 %102 to i32
  %shl162 = shl nuw nsw i32 %conv161, 2
  %call.i396 = call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 91, i32 noundef 12, i32 noundef %shl162, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %103 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap1.i, align 4
  %vmon_loc = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 12
  %105 = ptrtoint ptr %vmon_loc to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %vmon_loc, align 1
  %conv165 = zext i8 %106 to i32
  %call.i397 = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 84, i32 noundef 63, i32 noundef %conv165, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %107 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap1.i, align 4
  %vmon_frm = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 13
  %109 = ptrtoint ptr %vmon_frm to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %vmon_frm, align 1
  %conv169 = zext i8 %110 to i32
  %shl170 = shl nuw nsw i32 %conv169, 7
  %call.i398 = call i32 @regmap_update_bits_base(ptr noundef %108, i32 noundef 84, i32 noundef 128, i32 noundef %shl170, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end172

if.end172:                                        ; preds = %if.then159, %if.then157.if.end172_crit_edge
  %imon_specs = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 1
  %111 = ptrtoint ptr %imon_specs to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %imon_specs, align 1, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool173.not = icmp eq i8 %112, 0
  br i1 %tobool173.not, label %if.end172.if.end191_crit_edge, label %if.then174

if.end172.if.end191_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then174:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap1.i, align 4
  %imon_dpth = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 7
  %115 = ptrtoint ptr %imon_dpth to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %imon_dpth, align 1
  %conv176 = zext i8 %116 to i32
  %call.i399 = call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef 91, i32 noundef 3, i32 noundef %conv176, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %117 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap1.i, align 4
  %imon_loc = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 8
  %119 = ptrtoint ptr %imon_loc to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %imon_loc, align 1
  %conv180 = zext i8 %120 to i32
  %call.i400 = call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef 85, i32 noundef 63, i32 noundef %conv180, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %121 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap1.i, align 4
  %imon_frm = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 9
  %123 = ptrtoint ptr %imon_frm to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %imon_frm, align 1
  %conv184 = zext i8 %124 to i32
  %shl185 = shl nuw nsw i32 %conv184, 7
  %call.i401 = call i32 @regmap_update_bits_base(ptr noundef %122, i32 noundef 85, i32 noundef 128, i32 noundef %shl185, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %125 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap1.i, align 4
  %imon_scale = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 10
  %127 = ptrtoint ptr %imon_scale to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %imon_scale, align 1
  %conv188 = zext i8 %128 to i32
  %shl189 = shl nuw nsw i32 %conv188, 3
  %call.i402 = call i32 @regmap_update_bits_base(ptr noundef %126, i32 noundef 81, i32 noundef 248, i32 noundef %shl189, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end191

if.end191:                                        ; preds = %if.then174, %if.end172.if.end191_crit_edge
  %vpmon_specs = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 3
  %129 = ptrtoint ptr %vpmon_specs to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %vpmon_specs, align 1, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool192.not = icmp eq i8 %130, 0
  br i1 %tobool192.not, label %if.end191.if.end206_crit_edge, label %if.then193

if.end191.if.end206_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end206

if.then193:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap1.i, align 4
  %vpmon_dpth = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 14
  %133 = ptrtoint ptr %vpmon_dpth to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %vpmon_dpth, align 1
  %conv195 = zext i8 %134 to i32
  %shl196 = shl nuw nsw i32 %conv195, 2
  %call.i403 = call i32 @regmap_update_bits_base(ptr noundef %132, i32 noundef 92, i32 noundef 12, i32 noundef %shl196, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %135 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regmap1.i, align 4
  %vpmon_loc = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 15
  %137 = ptrtoint ptr %vpmon_loc to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %vpmon_loc, align 1
  %conv199 = zext i8 %138 to i32
  %call.i404 = call i32 @regmap_update_bits_base(ptr noundef %136, i32 noundef 86, i32 noundef 63, i32 noundef %conv199, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %139 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap1.i, align 4
  %vpmon_frm = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 16
  %141 = ptrtoint ptr %vpmon_frm to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %vpmon_frm, align 1
  %conv203 = zext i8 %142 to i32
  %shl204 = shl nuw nsw i32 %conv203, 7
  %call.i405 = call i32 @regmap_update_bits_base(ptr noundef %140, i32 noundef 86, i32 noundef 128, i32 noundef %shl204, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end206

if.end206:                                        ; preds = %if.then193, %if.end191.if.end206_crit_edge
  %vbstmon_specs = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 4
  %143 = ptrtoint ptr %vbstmon_specs to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %vbstmon_specs, align 1, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool207.not = icmp eq i8 %144, 0
  br i1 %tobool207.not, label %if.end206.if.end222_crit_edge, label %if.then208

if.end206.if.end222_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222

if.then208:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regmap1.i, align 4
  %vpmon_dpth210 = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 14
  %147 = ptrtoint ptr %vpmon_dpth210 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %vpmon_dpth210, align 1
  %conv211 = zext i8 %148 to i32
  %call.i406 = call i32 @regmap_update_bits_base(ptr noundef %146, i32 noundef 92, i32 noundef 3, i32 noundef %conv211, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %149 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap1.i, align 4
  %vbstmon_loc = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 18
  %151 = ptrtoint ptr %vbstmon_loc to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %vbstmon_loc, align 1
  %conv215 = zext i8 %152 to i32
  %call.i407 = call i32 @regmap_update_bits_base(ptr noundef %150, i32 noundef 87, i32 noundef 63, i32 noundef %conv215, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %153 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regmap1.i, align 4
  %vbstmon_frm = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 19
  %155 = ptrtoint ptr %vbstmon_frm to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %vbstmon_frm, align 1
  %conv219 = zext i8 %156 to i32
  %shl220 = shl nuw nsw i32 %conv219, 7
  %call.i408 = call i32 @regmap_update_bits_base(ptr noundef %154, i32 noundef 87, i32 noundef 128, i32 noundef %shl220, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end222

if.end222:                                        ; preds = %if.then208, %if.end206.if.end222_crit_edge
  %vpbrstat_specs = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 5
  %157 = ptrtoint ptr %vpbrstat_specs to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %vpbrstat_specs, align 1, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool223.not = icmp eq i8 %158, 0
  br i1 %tobool223.not, label %if.end222.if.end237_crit_edge, label %if.then224

if.end222.if.end237_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end237

if.then224:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #11
  %159 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regmap1.i, align 4
  %vpbrstat_dpth = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 20
  %161 = ptrtoint ptr %vpbrstat_dpth to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %vpbrstat_dpth, align 1
  %conv226 = zext i8 %162 to i32
  %shl227 = shl nuw nsw i32 %conv226, 4
  %call.i409 = call i32 @regmap_update_bits_base(ptr noundef %160, i32 noundef 92, i32 noundef 48, i32 noundef %shl227, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %163 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regmap1.i, align 4
  %vpbrstat_loc = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 21
  %165 = ptrtoint ptr %vpbrstat_loc to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %vpbrstat_loc, align 1
  %conv230 = zext i8 %166 to i32
  %call.i410 = call i32 @regmap_update_bits_base(ptr noundef %164, i32 noundef 88, i32 noundef 63, i32 noundef %conv230, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %167 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regmap1.i, align 4
  %vpbrstat_frm = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 22
  %169 = ptrtoint ptr %vpbrstat_frm to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %vpbrstat_frm, align 1
  %conv234 = zext i8 %170 to i32
  %shl235 = shl nuw nsw i32 %conv234, 7
  %call.i411 = call i32 @regmap_update_bits_base(ptr noundef %168, i32 noundef 88, i32 noundef 128, i32 noundef %shl235, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end237

if.end237:                                        ; preds = %if.then224, %if.end222.if.end237_crit_edge
  %zerofill_specs = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 6
  %171 = ptrtoint ptr %zerofill_specs to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %zerofill_specs, align 1, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool238.not = icmp eq i8 %172, 0
  br i1 %tobool238.not, label %if.end237.cleanup_crit_edge, label %if.then239

if.end237.cleanup_crit_edge:                      ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then239:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regmap1.i, align 4
  %zerofill_dpth = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 23
  %175 = ptrtoint ptr %zerofill_dpth to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %zerofill_dpth, align 1
  %conv241 = zext i8 %176 to i32
  %call.i412 = call i32 @regmap_update_bits_base(ptr noundef %174, i32 noundef 92, i32 noundef 3, i32 noundef %conv241, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %177 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regmap1.i, align 4
  %zerofill_loc = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 24
  %179 = ptrtoint ptr %zerofill_loc to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %zerofill_loc, align 1
  %conv245 = zext i8 %180 to i32
  %call.i413 = call i32 @regmap_update_bits_base(ptr noundef %178, i32 noundef 89, i32 noundef 63, i32 noundef %conv245, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %181 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regmap1.i, align 4
  %zerofill_frm = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 1, i32 13, i32 25
  %183 = ptrtoint ptr %zerofill_frm to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %zerofill_frm, align 1
  %conv249 = zext i8 %184 to i32
  %shl250 = shl nuw nsw i32 %conv249, 7
  %call.i414 = call i32 @regmap_update_bits_base(ptr noundef %182, i32 noundef 89, i32 noundef 128, i32 noundef %shl250, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then239, %if.end237.cleanup_crit_edge, %if.end155.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %cs35l35_boost_inductor.exit
  %retval.0 = phi i32 [ -22, %cs35l35_boost_inductor.exit ], [ %call51, %if.end50.cleanup_crit_edge ], [ 0, %if.end237.cleanup_crit_edge ], [ 0, %if.then239 ], [ 0, %if.end155.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l35_component_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %clk_id)
  %switch = icmp ult i32 %clk_id, 3
  br i1 %switch, label %sw.epilog, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.142) #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %4 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %freq, label %do.end7 [
    i32 5644800, label %sw.epilog.sw.bb3_crit_edge
    i32 6144000, label %sw.epilog.sw.bb3_crit_edge26
    i32 11289600, label %sw.epilog.sw.bb3_crit_edge27
    i32 12000000, label %sw.epilog.sw.bb3_crit_edge28
    i32 12288000, label %sw.epilog.sw.bb3_crit_edge29
    i32 13000000, label %sw.epilog.sw.bb3_crit_edge30
    i32 22579200, label %sw.epilog.sw.bb3_crit_edge31
    i32 24000000, label %sw.epilog.sw.bb3_crit_edge32
    i32 24576000, label %sw.epilog.sw.bb3_crit_edge33
    i32 26000000, label %sw.epilog.sw.bb3_crit_edge34
  ]

sw.epilog.sw.bb3_crit_edge34:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge33:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge32:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge31:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge30:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge29:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge28:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge27:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge26:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.epilog.sw.bb3_crit_edge, %sw.epilog.sw.bb3_crit_edge26, %sw.epilog.sw.bb3_crit_edge27, %sw.epilog.sw.bb3_crit_edge28, %sw.epilog.sw.bb3_crit_edge29, %sw.epilog.sw.bb3_crit_edge30, %sw.epilog.sw.bb3_crit_edge31, %sw.epilog.sw.bb3_crit_edge32, %sw.epilog.sw.bb3_crit_edge33, %sw.epilog.sw.bb3_crit_edge34
  %sysclk = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %freq, ptr %sysclk, align 4
  %regmap = getelementptr inbounds %struct.cs35l35_private, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 10, i32 noundef 3, i32 noundef %clk_id, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %sw.bb3.cleanup_crit_edge, label %do.end13

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.145, i32 noundef %freq) #12
  br label %cleanup

do.end13:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.148, i32 noundef %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end7, %sw.bb3.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ %call.i, %do.end13 ], [ 0, %sw.bb3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_sx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_sx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_sx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l35_sdin_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %event, label %do.end [
    i32 1, label %sw.bb
    i32 8, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 10, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 6, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 6, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %regmap8 = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap8, align 4
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 6, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %15 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap8, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 6, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %17 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap8, align 4
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 21, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %ext_bst.i = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 1, i32 10
  %19 = ptrtoint ptr %ext_bst.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ext_bst.i, align 1, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #9
  br label %cs35l35_wait_for_pdn.exit

if.end.i:                                         ; preds = %sw.bb7
  %pdn_done.i = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 11
  %21 = ptrtoint ptr %pdn_done.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pdn_done.i, align 4
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %pdn_done.i, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.cs35l35_wait_for_pdn.exit_crit_edge

if.end.i.cs35l35_wait_for_pdn.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cs35l35_wait_for_pdn.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.131) #12
  br label %cs35l35_wait_for_pdn.exit

cs35l35_wait_for_pdn.exit:                        ; preds = %do.end.i, %if.end.i.cs35l35_wait_for_pdn.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ -110, %do.end.i ], [ 0, %if.end.i.cs35l35_wait_for_pdn.exit_crit_edge ]
  %24 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap8, align 4
  %call.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 10, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %26 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap8, align 4
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 21, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.129, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %cs35l35_wait_for_pdn.exit, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end ], [ %retval.0.i, %cs35l35_wait_for_pdn.exit ], [ 0, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l35_main_amp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  %reg = alloca [4 x i32], align 4
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg) #9
  %6 = call ptr @memset(ptr %reg, i32 255, i32 16)
  %7 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %event, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 4, label %sw.bb15
    i32 8, label %sw.bb28
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap3 = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap3, align 4
  %call.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 7, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5100, i32 noundef 2) #9
  %pdm_mode = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %pdm_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pdm_mode, align 4, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %sw.bb5.if.end10_crit_edge, label %if.then7

sw.bb5.if.end10_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %regmap8 = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap8, align 4
  %call.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 29, i32 noundef 127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %sw.bb5.if.end10_crit_edge
  %regmap11 = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap11, align 4
  %call.i54 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 24, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %16 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap11, align 4
  %call14 = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef 116, ptr noundef nonnull %reg, i32 noundef 4) #9
  %18 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap11, align 4
  %call14.1 = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef 116, ptr noundef nonnull %reg, i32 noundef 4) #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %regmap16 = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap16, align 4
  %call.i55 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 24, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %bst_pdn_fet_on19 = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %bst_pdn_fet_on19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bst_pdn_fet_on19, align 4, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap16, align 4
  br i1 %tobool20.not, label %if.else24, label %if.then21

if.then21:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 7, i32 noundef 6, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

if.else24:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 7, i32 noundef 6, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5100, i32 noundef 2) #9
  %pdm_mode29 = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %pdm_mode29 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pdm_mode29, align 4, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool30.not = icmp eq i8 %27, 0
  br i1 %tobool30.not, label %sw.bb28.sw.epilog_crit_edge, label %if.then31

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then31:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %regmap32 = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap32, align 4
  %bst_vctl = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %bst_vctl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bst_vctl, align 4
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 29, i32 noundef 127, i32 noundef %31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.129, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then31, %sw.bb28.sw.epilog_crit_edge, %if.else24, %if.then21, %if.end10, %sw.bb
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cs35l35_dai_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #7 align 64 {
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
  %sclk = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %sclk, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l35_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.179)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %.sink25 = phi i32 [ 0, %sw.bb3 ], [ 128, %entry.sw.epilog_crit_edge ]
  %.sink = phi i8 [ 1, %sw.bb3 ], [ 0, %entry.sw.epilog_crit_edge ]
  %regmap4 = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap4, align 4
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 10, i32 noundef 128, i32 noundef %.sink25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %clock_consumer6 = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %clock_consumer6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %clock_consumer6, align 2
  %and7 = and i32 %fmt, 15
  %11 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %and7, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb8
    i32 7, label %sw.bb9
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %i2s_mode = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %i2s_mode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %i2s_mode, align 1
  %pdm_mode = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %pdm_mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %pdm_mode, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %pdm_mode10 = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %pdm_mode10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %pdm_mode10, align 4
  %i2s_mode11 = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 8
  %15 = ptrtoint ptr %i2s_mode11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %i2s_mode11, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb8, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb9 ], [ 0, %sw.bb8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l35_pcm_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %2 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @cs35l35_constraints) #9
  %regmap = getelementptr inbounds %struct.cs35l35_private, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 20, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l35_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %pdata = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %sysclk = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysclk, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.012.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [40 x %struct.cs35l35_sysclk_config], ptr @cs35l35_clk_ctl, i32 0, i32 %i.012.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp2.i = icmp eq i32 %11, %9
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %srate4.i = getelementptr [40 x %struct.cs35l35_sysclk_config], ptr @cs35l35_clk_ctl, i32 0, i32 %i.012.i, i32 1
  %12 = ptrtoint ptr %srate4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %srate4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp5.i = icmp eq i32 %13, %7
  br i1 %cmp5.i, label %cs35l35_get_clk_config.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40
  br i1 %exitcond.not.i, label %do.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cs35l35_get_clk_config.exit:                      ; preds = %land.lhs.true.i
  %clk_cfg.i = getelementptr [40 x %struct.cs35l35_sysclk_config], ptr @cs35l35_clk_ctl, i32 0, i32 %i.012.i, i32 2
  %14 = ptrtoint ptr %clk_cfg.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %clk_cfg.i, align 4
  %conv.i = zext i8 %15 to i32
  %regmap = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 11, i32 noundef 255, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.not = icmp eq i32 %call.i, 0
  br i1 %cmp6.not, label %if.end12, label %do.end10

do.end:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.153, i32 noundef %9, i32 noundef %7) #12
  br label %cleanup

do.end10:                                         ; preds = %cs35l35_get_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.156, i32 noundef %call.i) #12
  br label %cleanup

if.end12:                                         ; preds = %cs35l35_get_clk_config.exit
  %and = lshr i32 %conv.i, 6
  %classh_wk_fet_disable = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 1, i32 12, i32 6
  %20 = ptrtoint ptr %classh_wk_fet_disable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %classh_wk_fet_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13 = icmp eq i32 %21, 0
  %.off = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %or.cond = select i1 %cmp13, i1 %switch, i1 false
  br i1 %or.cond, label %if.then16, label %if.end12.if.end26_crit_edge

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then16:                                        ; preds = %if.end12
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i141 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 51, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %cmp19.not = icmp eq i32 %call.i141, 0
  br i1 %cmp19.not, label %if.then16.if.end26_crit_edge, label %do.end23

if.then16.if.end26_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end23:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.159, i32 noundef %call.i141) #12
  br label %cleanup

if.end26:                                         ; preds = %if.then16.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %26 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp27 = icmp eq i32 %27, 0
  br i1 %cmp27, label %if.then28, label %if.end26.if.end45_crit_edge

if.end26.if.end45_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then28:                                        ; preds = %if.end26
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then28.if.then.i.i.i_crit_edge

if.then28.if.then.i.i.i_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then28.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then28.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %29, %if.then28.if.then.i.i.i_crit_edge ], [ %32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %30 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #9, !range !365
  %add.i.i.i = or i32 %30, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.then28
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.1.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #9
  %33 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %call1.i, label %do.end34 [
    i32 8, label %params_width.exit.sw.epilog_crit_edge
    i32 16, label %sw.bb30
    i32 24, label %sw.bb31
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb30:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb31:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end34:                                         ; preds = %params_width.exit
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i.i143 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i143, label %for.inc.i.i.i150, label %do.end34.if.then.i.i.i147_crit_edge

do.end34.if.then.i.i.i147_crit_edge:              ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i147

if.then.i.i.i147:                                 ; preds = %for.inc.i.i.i150.if.then.i.i.i147_crit_edge, %do.end34.if.then.i.i.i147_crit_edge
  %i.09.lcssa.i.i.i144 = phi i32 [ 0, %do.end34.if.then.i.i.i147_crit_edge ], [ 32, %for.inc.i.i.i150.if.then.i.i.i147_crit_edge ]
  %.lcssa.i.i.i145 = phi i32 [ %37, %do.end34.if.then.i.i.i147_crit_edge ], [ %40, %for.inc.i.i.i150.if.then.i.i.i147_crit_edge ]
  %38 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i145, i1 true) #9, !range !365
  %add.i.i.i146 = or i32 %38, %i.09.lcssa.i.i.i144
  br label %params_width.exit153

for.inc.i.i.i150:                                 ; preds = %do.end34
  %arrayidx.1.i.i.i148 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx.1.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.1.i.i.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.1.i.i.i149 = icmp eq i32 %40, 0
  br i1 %tobool.not.1.i.i.i149, label %for.inc.i.i.i150.params_width.exit153_crit_edge, label %for.inc.i.i.i150.if.then.i.i.i147_crit_edge

for.inc.i.i.i150.if.then.i.i.i147_crit_edge:      ; preds = %for.inc.i.i.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i147

for.inc.i.i.i150.params_width.exit153_crit_edge:  ; preds = %for.inc.i.i.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_width.exit153

params_width.exit153:                             ; preds = %for.inc.i.i.i150.params_width.exit153_crit_edge, %if.then.i.i.i147
  %retval.0.i.i.i151 = phi i32 [ %add.i.i.i146, %if.then.i.i.i147 ], [ 0, %for.inc.i.i.i150.params_width.exit153_crit_edge ]
  %call1.i152 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i151) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.162, i32 noundef %call1.i152) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb30, %params_width.exit.sw.epilog_crit_edge
  %audin_format.0 = phi i32 [ 3, %sw.bb31 ], [ 2, %sw.bb30 ], [ 1, %params_width.exit.sw.epilog_crit_edge ]
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call.i154 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 90, i32 noundef 3, i32 noundef %audin_format.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %43 = ptrtoint ptr %pdata to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pdata, align 4, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not = icmp eq i8 %44, 0
  br i1 %tobool.not, label %sw.epilog.if.end45_crit_edge, label %if.then40

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then40:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %shl42 = shl nuw nsw i32 %audin_format.0, 2
  %call.i155 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 90, i32 noundef 12, i32 noundef %shl42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %sw.epilog.if.end45_crit_edge, %if.end26.if.end45_crit_edge
  %i2s_mode = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 8
  %47 = ptrtoint ptr %i2s_mode to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %i2s_mode, align 1, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool46.not = icmp eq i8 %48, 0
  br i1 %tobool46.not, label %if.end45.cleanup_crit_edge, label %if.then47

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %if.end45
  %sclk = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 6
  %49 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sclk, align 4
  %div = sdiv i32 %50, %7
  %51 = and i32 %div, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool48.not = icmp eq i32 %51, 0
  br i1 %tobool48.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.165, i32 noundef %50, i32 noundef %7) #12
  br label %cleanup

if.end55:                                         ; preds = %if.then47
  %div58 = sdiv i32 %div, 4
  %54 = trunc i32 %div58 to i8
  %conv = add nsw i32 %div58, 255
  %clock_consumer = getelementptr inbounds %struct.cs35l35_private, ptr %5, i32 0, i32 9
  %55 = ptrtoint ptr %clock_consumer to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %clock_consumer, align 2, !range !363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool59.not = icmp eq i8 %56, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end55
  %57 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.182)
  switch i8 %54, label %do.end66 [
    i8 8, label %if.then60.if.end77_crit_edge
    i8 12, label %if.then60.if.end77_crit_edge165
    i8 16, label %if.then60.if.end77_crit_edge166
  ]

if.then60.if.end77_crit_edge166:                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then60.if.end77_crit_edge165:                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then60.if.end77_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

do.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.168) #12
  br label %cleanup

if.else:                                          ; preds = %if.end55
  %60 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.183)
  switch i8 %54, label %do.end74 [
    i8 8, label %if.else.if.end77_crit_edge
    i8 16, label %if.else.if.end77_crit_edge167
  ]

if.else.if.end77_crit_edge167:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.else.if.end77_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

do.end74:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.168) #12
  br label %cleanup

if.end77:                                         ; preds = %if.else.if.end77_crit_edge, %if.else.if.end77_crit_edge167, %if.then60.if.end77_crit_edge, %if.then60.if.end77_crit_edge165, %if.then60.if.end77_crit_edge166
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %conv79 = and i32 %conv, 255
  %call.i156 = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 12, i32 noundef 15, i32 noundef %conv79, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %cmp82.not = icmp eq i32 %call.i156, 0
  br i1 %cmp82.not, label %if.end77.cleanup_crit_edge, label %do.end87

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end87:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.173, i32 noundef %call.i156) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end87, %if.end77.cleanup_crit_edge, %do.end74, %do.end66, %do.end52, %if.end45.cleanup_crit_edge, %params_width.exit153, %do.end23, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end10 ], [ %call.i141, %do.end23 ], [ -22, %params_width.exit153 ], [ -22, %do.end52 ], [ -22, %do.end66 ], [ %call.i156, %do.end87 ], [ -22, %do.end74 ], [ 0, %if.end77.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l35_pdm_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %2 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @cs35l35_pdm_constraints) #9
  %regmap = getelementptr inbounds %struct.cs35l35_private, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 20, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !90, !91, !93, !95, !96, !97, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !160, !162, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !179, !180, !181, !182, !184, !185, !187, !188, !189, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !205, !206, !208, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !267, !269, !271, !273, !274, !275, !276, !278, !280, !282, !284, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !299, !301, !303, !305, !307, !309, !311, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !328, !329, !330, !332, !333, !334, !336, !337, !339, !340, !341, !343, !345, !347, !349, !351}
!llvm.module.flags = !{!353, !354, !355, !356, !357, !358, !359, !360}
!llvm.ident = !{!361}

!0 = !{ptr @__initcall__kmod_snd_soc_cs35l35__301_1665_cs35l35_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_cs35l35__301_1665_cs35l35_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cs35l35.c", i32 1665, i32 1}
!2 = !{ptr @__exitcall_cs35l35_i2c_driver_exit, !1, !"__exitcall_cs35l35_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/cs35l35.c", i32 1667, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/cs35l35.c", i32 1668, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/cs35l35.c", i32 1669, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/cs35l35.c", i32 1657, i32 11}
!12 = !{ptr @cs35l35_i2c_driver, !13, !"cs35l35_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/cs35l35.c", i32 1655, i32 26}
!14 = !{ptr @cs35l35_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/cs35l35.c", i32 1486, i32 20}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/cs35l35.c", i32 1489, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cs35l35_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @cs35l35_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/cs35l35.c", i32 1501, i32 3}
!27 = !{ptr @cs35l35_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cs35l35_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/cs35l35.c", i32 1524, i32 3}
!31 = !{ptr @cs35l35_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cs35l35_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/cs35l35.c", i32 1529, i32 53}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/cs35l35.c", i32 1535, i32 4}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cs35l35_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @cs35l35_i2c_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/cs35l35.c", i32 1538, i32 4}
!42 = !{ptr @cs35l35_i2c_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cs35l35_i2c_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/cs35l35.c", i32 1551, i32 3}
!46 = !{ptr @cs35l35_i2c_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cs35l35_i2c_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/cs35l35.c", i32 1558, i32 3}
!50 = !{ptr @cs35l35_i2c_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cs35l35_i2c_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/cs35l35.c", i32 1563, i32 3}
!54 = !{ptr @cs35l35_i2c_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cs35l35_i2c_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/cs35l35.c", i32 1571, i32 3}
!58 = !{ptr @cs35l35_i2c_probe._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cs35l35_i2c_probe._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/cs35l35.c", i32 1578, i32 3}
!62 = !{ptr @cs35l35_i2c_probe._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cs35l35_i2c_probe._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/cs35l35.c", i32 1582, i32 2}
!66 = !{ptr @cs35l35_i2c_probe._entry.36, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cs35l35_i2c_probe._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/cs35l35.c", i32 1618, i32 3}
!70 = !{ptr @cs35l35_i2c_probe._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cs35l35_i2c_probe._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @cs35l35_regmap, !73, !"cs35l35_regmap", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/cs35l35.c", i32 1093, i32 29}
!74 = !{ptr @cs35l35_reg, !75, !"cs35l35_reg", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/cs35l35.c", i32 44, i32 33}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/cs35l35.h", i32 293, i32 2}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/cs35l35.h", i32 294, i32 2}
!80 = distinct !{null, !81, !"cs35l35_supplies", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/cs35l35.h", i32 292, i32 27}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/cs35l35.c", i32 1257, i32 6}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/cs35l35.c", i32 1259, i32 33}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/cs35l35.c", i32 1262, i32 4}
!88 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @cs35l35_handle_of_data._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @cs35l35_handle_of_data._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/cs35l35.c", i32 1269, i32 33}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/cs35l35.c", i32 1272, i32 4}
!95 = !{ptr @cs35l35_handle_of_data._entry.49, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cs35l35_handle_of_data._entry_ptr.51, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/cs35l35.c", i32 1280, i32 33}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/cs35l35.c", i32 1284, i32 3}
!101 = !{ptr @cs35l35_handle_of_data._entry.53, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cs35l35_handle_of_data._entry_ptr.55, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/cs35l35.c", i32 1288, i32 31}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/cs35l35.c", i32 1290, i32 31}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/cs35l35.c", i32 1293, i32 44}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/cs35l35.c", i32 1296, i32 34}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/cs35l35.c", i32 1300, i32 34}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/cs35l35.c", i32 1306, i32 7}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/cs35l35.c", i32 1309, i32 45}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/cs35l35.c", i32 1311, i32 45}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/cs35l35.c", i32 1313, i32 36}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/cs35l35.c", i32 1318, i32 30}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/cs35l35.c", i32 1321, i32 9}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/cs35l35.c", i32 1336, i32 38}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/cs35l35.c", i32 1343, i32 38}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/cs35l35.c", i32 1348, i32 38}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/cs35l35.c", i32 1356, i32 9}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/cs35l35.c", i32 1361, i32 38}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/cs35l35.c", i32 1368, i32 38}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/cs35l35.c", i32 1373, i32 38}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/cs35l35.c", i32 1380, i32 38}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/cs35l35.c", i32 1387, i32 38}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/cs35l35.c", i32 1395, i32 43}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/cs35l35.c", i32 1398, i32 50}
!147 = !{ptr @.str.78, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/cs35l35.c", i32 1407, i32 50}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/cs35l35.c", i32 1415, i32 50}
!151 = !{ptr @.str.80, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/cs35l35.c", i32 1423, i32 50}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/cs35l35.c", i32 1431, i32 50}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/cs35l35.c", i32 1439, i32 50}
!157 = !{ptr @init_completion.__key, !158, !"__key", i1 false, i1 false}
!158 = !{!"../include/linux/completion.h", i32 87, i32 2}
!159 = !{ptr @.str.83, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/cs35l35.c", i32 1138, i32 3}
!162 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @cs35l35_irq._entry, !161, !"_entry", i1 false, i1 false}
!165 = !{ptr @cs35l35_irq._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.87, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/cs35l35.c", i32 1142, i32 4}
!168 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @cs35l35_irq.__UNIQUE_ID_ddebug294, !167, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/cs35l35.c", i32 1157, i32 3}
!172 = !{ptr @cs35l35_irq._entry.89, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @cs35l35_irq._entry_ptr.91, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/cs35l35.c", i32 1160, i32 4}
!176 = !{ptr @cs35l35_irq.__UNIQUE_ID_ddebug295, !175, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!177 = !{ptr @.str.94, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/cs35l35.c", i32 1175, i32 3}
!179 = !{ptr @.str.95, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @cs35l35_irq._entry.93, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @cs35l35_irq._entry_ptr.96, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.97, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/cs35l35.c", i32 1179, i32 4}
!184 = !{ptr @cs35l35_irq.__UNIQUE_ID_ddebug296, !183, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!185 = !{ptr @.str.99, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/cs35l35.c", i32 1194, i32 3}
!187 = !{ptr @cs35l35_irq._entry.98, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @cs35l35_irq._entry_ptr.100, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.101, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/cs35l35.c", i32 1197, i32 4}
!191 = !{ptr @cs35l35_irq.__UNIQUE_ID_ddebug297, !190, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!192 = !{ptr @.str.103, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/cs35l35.c", i32 1212, i32 3}
!194 = !{ptr @cs35l35_irq._entry.102, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @cs35l35_irq._entry_ptr.104, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.106, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/cs35l35.c", i32 1220, i32 3}
!198 = !{ptr @cs35l35_irq._entry.105, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @cs35l35_irq._entry_ptr.107, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.108, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/cs35l35.c", i32 1228, i32 3}
!202 = !{ptr @cs35l35_irq.__UNIQUE_ID_ddebug298, !201, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!203 = !{ptr @.str.109, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/cs35l35.c", i32 1231, i32 3}
!205 = !{ptr @cs35l35_irq.__UNIQUE_ID_ddebug299, !204, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!206 = !{ptr @.str.110, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/cs35l35.c", i32 1234, i32 3}
!208 = !{ptr @cs35l35_irq.__UNIQUE_ID_ddebug300, !207, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!209 = !{ptr @cs35l35_errata_patch, !210, !"cs35l35_errata_patch", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/cs35l35.c", i32 1454, i32 34}
!211 = !{ptr @soc_component_dev_cs35l35, !212, !"soc_component_dev_cs35l35", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/cs35l35.c", i32 1078, i32 46}
!213 = !{ptr @.str.111, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/cs35l35.c", i32 309, i32 2}
!215 = !{ptr @.str.112, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/cs35l35.c", i32 311, i32 2}
!217 = !{ptr @.str.114, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/cs35l35.c", i32 313, i32 2}
!219 = !{ptr @cs35l35_aud_controls, !220, !"cs35l35_aud_controls", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/cs35l35.c", i32 308, i32 38}
!221 = !{ptr @dig_vol_tlv, !222, !"dig_vol_tlv", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/cs35l35.c", i32 306, i32 8}
!223 = !{ptr @amp_gain_tlv, !224, !"amp_gain_tlv", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/cs35l35.c", i32 305, i32 8}
!225 = !{ptr @.str.116, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/cs35l35.c", i32 325, i32 2}
!227 = !{ptr @.str.117, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/cs35l35.c", i32 328, i32 2}
!229 = !{ptr @.str.118, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/cs35l35.c", i32 330, i32 2}
!231 = !{ptr @.str.119, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/cs35l35.c", i32 333, i32 2}
!233 = !{ptr @.str.120, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/cs35l35.c", i32 334, i32 2}
!235 = !{ptr @.str.121, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/cs35l35.c", i32 335, i32 2}
!237 = !{ptr @.str.122, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/cs35l35.c", i32 337, i32 2}
!239 = !{ptr @.str.123, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/cs35l35.c", i32 338, i32 2}
!241 = !{ptr @.str.124, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/cs35l35.c", i32 339, i32 2}
!243 = !{ptr @.str.125, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/cs35l35.c", i32 340, i32 2}
!245 = !{ptr @.str.126, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/cs35l35.c", i32 341, i32 2}
!247 = !{ptr @.str.127, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/cs35l35.c", i32 343, i32 2}
!249 = !{ptr @cs35l35_dapm_widgets, !250, !"cs35l35_dapm_widgets", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/cs35l35.c", i32 324, i32 41}
!251 = !{ptr @.str.129, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/cs35l35.c", i32 230, i32 3}
!253 = !{ptr @.str.130, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @cs35l35_sdin_event._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @cs35l35_sdin_event._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.131, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/cs35l35.c", i32 183, i32 3}
!258 = !{ptr @.str.132, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @cs35l35_wait_for_pdn._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @cs35l35_wait_for_pdn._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.133, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/cs35l35.c", i32 300, i32 3}
!263 = !{ptr @cs35l35_main_amp_event._entry, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @cs35l35_main_amp_event._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.134, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/cs35l35.c", i32 358, i32 3}
!267 = !{ptr @.str.135, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/cs35l35.c", i32 360, i32 17}
!269 = !{ptr @cs35l35_audio_map, !270, !"cs35l35_audio_map", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/cs35l35.c", i32 349, i32 40}
!271 = !{ptr @.str.136, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/cs35l35.c", i32 826, i32 3}
!273 = !{ptr @.str.137, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @cs35l35_boost_inductor._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @cs35l35_boost_inductor._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.138, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/cs35l35.c", i32 318, i32 2}
!278 = !{ptr @.str.140, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/cs35l35.c", i32 320, i32 2}
!280 = !{ptr @cs35l35_adv_controls, !281, !"cs35l35_adv_controls", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/cs35l35.c", i32 317, i32 38}
!282 = !{ptr @.str.142, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/cs35l35.c", i32 730, i32 3}
!284 = !{ptr @.str.143, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @cs35l35_component_set_sysclk._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @cs35l35_component_set_sysclk._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.145, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/cs35l35.c", i32 748, i32 3}
!289 = !{ptr @cs35l35_component_set_sysclk._entry.144, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @cs35l35_component_set_sysclk._entry_ptr.146, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.148, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/cs35l35.c", i32 756, i32 3}
!293 = !{ptr @cs35l35_component_set_sysclk._entry.147, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @cs35l35_component_set_sysclk._entry_ptr.149, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.150, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/cs35l35.c", i32 678, i32 11}
!297 = !{ptr @.str.151, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/cs35l35.c", i32 698, i32 11}
!299 = !{ptr @.str.152, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/cs35l35.c", i32 701, i32 19}
!301 = !{ptr @cs35l35_dai, !302, !"cs35l35_dai", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/cs35l35.c", i32 676, i32 34}
!303 = !{ptr @cs35l35_ops, !304, !"cs35l35_ops", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/cs35l35.c", i32 663, i32 37}
!305 = !{ptr @cs35l35_constraints, !306, !"cs35l35_constraints", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/cs35l35.c", i32 598, i32 48}
!307 = !{ptr @cs35l35_src_rates, !308, !"cs35l35_src_rates", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/cs35l35.c", i32 594, i32 27}
!309 = !{ptr @.str.153, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/cs35l35.c", i32 481, i32 3}
!311 = !{ptr @.str.154, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @cs35l35_hw_params._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @cs35l35_hw_params._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.156, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/cs35l35.c", i32 489, i32 3}
!316 = !{ptr @cs35l35_hw_params._entry.155, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @cs35l35_hw_params._entry_ptr.157, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.159, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/cs35l35.c", i32 508, i32 4}
!320 = !{ptr @cs35l35_hw_params._entry.158, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @cs35l35_hw_params._entry_ptr.160, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.162, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/cs35l35.c", i32 530, i32 4}
!324 = !{ptr @cs35l35_hw_params._entry.161, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @cs35l35_hw_params._entry_ptr.163, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.165, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/cs35l35.c", i32 553, i32 4}
!328 = !{ptr @cs35l35_hw_params._entry.164, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @cs35l35_hw_params._entry_ptr.166, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.168, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/cs35l35.c", i32 567, i32 5}
!332 = !{ptr @cs35l35_hw_params._entry.167, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @cs35l35_hw_params._entry_ptr.169, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @cs35l35_hw_params._entry.170, !335, !"_entry", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/cs35l35.c", i32 577, i32 5}
!336 = !{ptr @cs35l35_hw_params._entry_ptr.171, !335, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.173, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/cs35l35.c", i32 586, i32 4}
!339 = !{ptr @cs35l35_hw_params._entry.172, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @cs35l35_hw_params._entry_ptr.174, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @cs35l35_clk_ctl, !342, !"cs35l35_clk_ctl", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/cs35l35.c", i32 408, i32 37}
!343 = !{ptr @cs35l35_pdm_ops, !344, !"cs35l35_pdm_ops", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/cs35l35.c", i32 670, i32 37}
!345 = !{ptr @cs35l35_pdm_constraints, !346, !"cs35l35_pdm_constraints", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/cs35l35.c", i32 626, i32 48}
!347 = !{ptr @cs35l35_pdm_rates, !348, !"cs35l35_pdm_rates", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/cs35l35.c", i32 622, i32 27}
!349 = !{ptr @cs35l35_of_match, !350, !"cs35l35_of_match", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/cs35l35.c", i32 1642, i32 34}
!351 = !{ptr @cs35l35_id, !352, !"cs35l35_id", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/cs35l35.c", i32 1648, i32 35}
!353 = !{i32 1, !"wchar_size", i32 2}
!354 = !{i32 1, !"min_enum_size", i32 4}
!355 = !{i32 8, !"branch-target-enforcement", i32 0}
!356 = !{i32 8, !"sign-return-address", i32 0}
!357 = !{i32 8, !"sign-return-address-all", i32 0}
!358 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!359 = !{i32 7, !"uwtable", i32 1}
!360 = !{i32 7, !"frame-pointer", i32 2}
!361 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!362 = !{!"auto-init"}
!363 = !{i8 0, i8 2}
!364 = !{i64 2148999178, i64 2148999183, i64 2148999196, i64 2148999240, i64 2148999274, i64 2148999295}
!365 = !{i32 0, i32 33}
