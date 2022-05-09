; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cs35l34.c_pt.bc'
source_filename = "../sound/soc/codecs/cs35l34.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.cs35l34_mclk_div = type { i32, i32, i8 }
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
%struct.cs35l34_private = type { ptr, %struct.cs35l34_platform_data, ptr, [2 x %struct.regulator_bulk_data], i32, i32, i8, ptr }
%struct.cs35l34_platform_data = type { i8, i8, i8, i32, i32, i32, i8, i32, i8 }
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

@__initcall__kmod_snd_soc_cs35l34__299_1236_cs35l34_modinit6 = internal global ptr @cs35l34_modinit, section ".initcall6.init", align 4
@cs35l34_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cs35l34_i2c_probe, ptr @cs35l34_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cs35l34_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l34_pm_ops, ptr null, ptr null }, ptr @cs35l34_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cs35l34_exit = internal global ptr @cs35l34_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description300 = internal constant [48 x i8] c"snd_soc_cs35l34.description=ASoC CS35l34 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [85 x i8] c"snd_soc_cs35l34.author=Paul Handrigan, Cirrus Logic Inc, <Paul.Handrigan@cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [54 x i8] c"snd_soc_cs35l34.file=sound/soc/codecs/snd-soc-cs35l34\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [28 x i8] c"snd_soc_cs35l34.license=GPL\00", section ".modinfo", align 1
@cs35l34_modinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Failed to register CS35l34 I2C driver: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cs35l34_modinit\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/cs35l34.c\00", [37 x i8] zeroinitializer }, align 32
@cs35l34_modinit._entry_ptr = internal global ptr @cs35l34_modinit._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cs35l34\00", [24 x i8] zeroinitializer }, align 32
@cs35l34_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs35l34\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cs35l34_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l34_runtime_suspend, ptr @cs35l34_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cs35l34_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cs35l34\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cs35l34_regmap = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @cs35l34_readable_register, ptr @cs35l34_volatile_register, ptr @cs35l34_precious_register, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l34_reg, i32 65, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cs35l34:1012:(&cs35l34_regmap)->lock\00", [59 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1015, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs35l34_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._entry_ptr = internal global ptr @cs35l34_i2c_probe._entry, section ".printk_index", align 4
@cs35l34_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 1028, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request core supplies %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._entry_ptr.11 = internal global ptr @cs35l34_i2c_probe._entry.9, section ".printk_index", align 4
@cs35l34_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.2, i32 1036, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable core supplies: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._entry_ptr.14 = internal global ptr @cs35l34_i2c_probe._entry.12, section ".printk_index", align 4
@cs35l34_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.2, i32 1063, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._entry_ptr.17 = internal global ptr @cs35l34_i2c_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 1079, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read device ID: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._entry_ptr.21 = internal global ptr @cs35l34_i2c_probe._entry.19, section ".printk_index", align 4
@cs35l34_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.2, i32 1086, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CS35l34 Device ID (%X). Expected ID %X\0A\00", [56 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._entry_ptr.24 = internal global ptr @cs35l34_i2c_probe._entry.22, section ".printk_index", align 4
@cs35l34_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.2, i32 1093, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Get Revision ID failed\0A\00", [40 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._entry_ptr.27 = internal global ptr @cs35l34_i2c_probe._entry.25, section ".printk_index", align 4
@cs35l34_i2c_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.6, ptr @.str.2, i32 1099, ptr @.str.30, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cirrus Logic CS35l34 (%x), Revision: %02X\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._entry_ptr.31 = internal global ptr @cs35l34_i2c_probe._entry.28, section ".printk_index", align 4
@soc_component_dev_cs35l34 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @cs35l34_snd_controls, i32 2, ptr @cs35l34_dapm_widgets, i32 15, ptr @cs35l34_audio_map, i32 16, ptr @cs35l34_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cs35l34_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.3, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs35l34_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.118, i64 1092, i32 224, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.117, i64 1092, i32 224, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.6, ptr @.str.2, i32 1118, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Register component failed\0A\00", [33 x i8] zeroinitializer }, align 32
@cs35l34_i2c_probe._entry_ptr.34 = internal global ptr @cs35l34_i2c_probe._entry.32, section ".printk_index", align 4
@cs35l34_reg = internal constant { [65 x %struct.reg_default], [152 x i8] } { [65 x %struct.reg_default] [%struct.reg_default { i32 6, i32 1 }, %struct.reg_default { i32 7, i32 25 }, %struct.reg_default { i32 8, i32 1 }, %struct.reg_default { i32 10, i32 8 }, %struct.reg_default { i32 11, i32 17 }, %struct.reg_default { i32 20, i32 1 }, %struct.reg_default { i32 21, i32 18 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 15 }, %struct.reg_default { i32 24, i32 6 }, %struct.reg_default { i32 26, i32 4 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 16 }, %struct.reg_default { i32 32, i32 135 }, %struct.reg_default { i32 33, i32 36 }, %struct.reg_default { i32 34, i32 36 }, %struct.reg_default { i32 35, i32 78 }, %struct.reg_default { i32 36, i32 8 }, %struct.reg_default { i32 48, i32 13 }, %struct.reg_default { i32 49, i32 13 }, %struct.reg_default { i32 50, i32 8 }, %struct.reg_default { i32 51, i32 65 }, %struct.reg_default { i32 56, i32 5 }, %struct.reg_default { i32 58, i32 10 }, %struct.reg_default { i32 59, i32 144 }, %struct.reg_default { i32 60, i32 106 }, %struct.reg_default { i32 64, i32 149 }, %struct.reg_default { i32 65, i32 28 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 67, i32 16 }, %struct.reg_default { i32 68, i32 16 }, %struct.reg_default { i32 70, i32 8 }, %struct.reg_default { i32 71, i32 128 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 78, i32 198 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 83, i32 4 }, %struct.reg_default { i32 84, i32 3 }, %struct.reg_default { i32 85, i32 7 }, %struct.reg_default { i32 86, i32 8 }, %struct.reg_default { i32 87, i32 9 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 91, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 93, i32 0 }, %struct.reg_default { i32 94, i32 64 }, %struct.reg_default { i32 96, i32 4 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 128 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 112, i32 255 }, %struct.reg_default { i32 113, i32 255 }, %struct.reg_default { i32 114, i32 255 }, %struct.reg_default { i32 115, i32 255 }, %struct.reg_default { i32 116, i32 48 }, %struct.reg_default { i32 117, i32 5 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 126, i32 0 }], [152 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VA\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VP\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cirrus,boost-vtge-millivolt\00", [36 x i8] zeroinitializer }, align 32
@cs35l34_handle_of_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 820, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid Boost Voltage %d mV\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l34_handle_of_data\00", [41 x i8] zeroinitializer }, align 32
@cs35l34_handle_of_data._entry_ptr = internal global ptr @cs35l34_handle_of_data._entry, section ".printk_index", align 4
@cs35l34_handle_of_data._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 829, ptr @.str.42, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Boost Voltage not specified. Using VP\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cs35l34_handle_of_data._entry_ptr.43 = internal global ptr @cs35l34_handle_of_data._entry.40, section ".printk_index", align 4
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,boost-ind-nanohenry\00", [37 x i8] zeroinitializer }, align 32
@cs35l34_handle_of_data._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.39, ptr @.str.2, i32 835, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Inductor not specified.\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l34_handle_of_data._entry_ptr.47 = internal global ptr @cs35l34_handle_of_data._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,boost-peak-milliamp\00", [37 x i8] zeroinitializer }, align 32
@cs35l34_handle_of_data._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 842, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid Boost Peak Current %d mA\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l34_handle_of_data._entry_ptr.51 = internal global ptr @cs35l34_handle_of_data._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cirrus,aif-half-drv\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cirrus,digsft-disable\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cirrus,gain-zc-disable\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cirrus,amp-inv\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cirrus,i2s-sdinloc\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cirrus,tdm-rising-edge\00", [41 x i8] zeroinitializer }, align 32
@cs35l34_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 891, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Cal error\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs35l34_irq_thread\00", [45 x i8] zeroinitializer }, align 32
@cs35l34_irq_thread._entry_ptr = internal global ptr @cs35l34_irq_thread._entry, section ".printk_index", align 4
@cs35l34_irq_thread.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.59, ptr @.str.2, ptr @.str.61, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_cs35l34\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cal error release\0A\00", [45 x i8] zeroinitializer }, align 32
@cs35l34_irq_thread._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.2, i32 911, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Alive error\0A\00", [19 x i8] zeroinitializer }, align 32
@cs35l34_irq_thread._entry_ptr.64 = internal global ptr @cs35l34_irq_thread._entry.62, section ".printk_index", align 4
@cs35l34_irq_thread._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.59, ptr @.str.2, i32 914, ptr @.str.67, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Amp short error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@cs35l34_irq_thread._entry_ptr.68 = internal global ptr @cs35l34_irq_thread._entry.65, section ".printk_index", align 4
@cs35l34_irq_thread.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.59, ptr @.str.2, ptr @.str.69, i8 0, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Amp short error release\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l34_irq_thread._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.59, ptr @.str.2, i32 934, ptr @.str.67, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Over temperature warning\0A\00", [38 x i8] zeroinitializer }, align 32
@cs35l34_irq_thread._entry_ptr.72 = internal global ptr @cs35l34_irq_thread._entry.70, section ".printk_index", align 4
@cs35l34_irq_thread.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.59, ptr @.str.2, ptr @.str.73, i8 0, i8 -22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Over temperature warning release\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l34_irq_thread._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.59, ptr @.str.2, i32 954, ptr @.str.67, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Over temperature error\0A\00", [40 x i8] zeroinitializer }, align 32
@cs35l34_irq_thread._entry_ptr.76 = internal global ptr @cs35l34_irq_thread._entry.74, section ".printk_index", align 4
@cs35l34_irq_thread.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.59, ptr @.str.2, ptr @.str.77, i8 0, i8 -17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Over temperature error release\0A\00", [32 x i8] zeroinitializer }, align 32
@cs35l34_irq_thread._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.59, ptr @.str.2, i32 974, ptr @.str.67, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VBST too high error; powering off!\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l34_irq_thread._entry_ptr.80 = internal global ptr @cs35l34_irq_thread._entry.78, section ".printk_index", align 4
@cs35l34_irq_thread._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.59, ptr @.str.2, i32 982, ptr @.str.67, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LBST short error; powering off!\0A\00", [63 x i8] zeroinitializer }, align 32
@cs35l34_irq_thread._entry_ptr.83 = internal global ptr @cs35l34_irq_thread._entry.81, section ".printk_index", align 4
@cs35l34_snd_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @dig_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @amp_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }], [32 x i8] zeroinitializer }, align 32
@cs35l34_audio_map = internal constant { [16 x %struct.snd_soc_dapm_route], [192 x i8] } { [16 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }], [192 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Digital Volume\00", [17 x i8] zeroinitializer }, align 32
@dig_vol_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10200, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 52, i32 228, i32 0, i32 22, i32 22, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Amp Gain Volume\00", [16 x i8] zeroinitializer }, align 32
@amp_gain_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 300, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 23, i32 23, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDIN\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDOUT\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EXTCLK\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPK\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VPST\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ISENSE\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VSENSE\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VMON ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IMON ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VPMON ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VBSTMON ADC\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLASS H\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BOOST\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Main AMP\00", [23 x i8] zeroinitializer }, align 32
@cs35l34_dapm_widgets = internal constant { [15 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [692 x i8] } { [15 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @cs35l34_sdin_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 4, ptr @cs35l34_mclk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @cs35l34_main_amp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [692 x i8] zeroinitializer }, align 32
@cs35l34_sdin_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 250, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot set Power bits %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs35l34_sdin_event\00", [45 x i8] zeroinitializer }, align 32
@cs35l34_sdin_event._entry_ptr = internal global ptr @cs35l34_sdin_event._entry, section ".printk_index", align 4
@cs35l34_sdin_event._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Invalid event = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@cs35l34_sdin_event._entry_ptr.106 = internal global ptr @cs35l34_sdin_event._entry.104, section ".printk_index", align 4
@cs35l34_mclk_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s regmap read failure %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs35l34_mclk_event\00", [45 x i8] zeroinitializer }, align 32
@cs35l34_mclk_event._entry_ptr = internal global ptr @cs35l34_mclk_event._entry, section ".printk_index", align 4
@cs35l34_mclk_event._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cs35l34_mclk_event._entry_ptr.110 = internal global ptr @cs35l34_mclk_event._entry.109, section ".printk_index", align 4
@cs35l34_mclk_event._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.108, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s Device did not power down properly\0A\00", [55 x i8] zeroinitializer }, align 32
@cs35l34_mclk_event._entry_ptr.113 = internal global ptr @cs35l34_mclk_event._entry.111, section ".printk_index", align 4
@cs35l34_mclk_event._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.108, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cs35l34_mclk_event._entry_ptr.115 = internal global ptr @cs35l34_mclk_event._entry.114, section ".printk_index", align 4
@cs35l34_main_amp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.116, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l34_main_amp_event\00", [41 x i8] zeroinitializer }, align 32
@cs35l34_main_amp_event._entry_ptr = internal global ptr @cs35l34_main_amp_event._entry, section ".printk_index", align 4
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AMP Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AMP Capture\00", [20 x i8] zeroinitializer }, align 32
@cs35l34_boost_inductor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 709, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s Invalid Inductor Value %d uH\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l34_boost_inductor\00", [41 x i8] zeroinitializer }, align 32
@cs35l34_boost_inductor._entry_ptr = internal global ptr @cs35l34_boost_inductor._entry, section ".printk_index", align 4
@cs35l34_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cs35l34_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @cs35l34_set_dai_fmt, ptr null, ptr @cs35l34_set_tdm_slot, ptr null, ptr null, ptr @cs35l34_set_tristate, ptr null, ptr null, ptr null, ptr @cs35l34_pcm_startup, ptr null, ptr @cs35l34_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@cs35l34_dai_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 634, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ERROR: Invalid Frequency %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l34_dai_set_sysclk\00", [41 x i8] zeroinitializer }, align 32
@cs35l34_dai_set_sysclk._entry_ptr = internal global ptr @cs35l34_dai_set_sysclk._entry, section ".printk_index", align 4
@cs35l34_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @cs35l34_src_rates, i32 9, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cs35l34_src_rates = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8000, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000], [60 x i8] zeroinitializer }, align 32
@cs35l34_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 555, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ERROR: Invalid mclk %d and/or srate %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs35l34_pcm_hw_params\00", [42 x i8] zeroinitializer }, align 32
@cs35l34_pcm_hw_params._entry_ptr = internal global ptr @cs35l34_pcm_hw_params._entry, section ".printk_index", align 4
@cs35l34_mclk_coeffs = internal constant { [21 x %struct.cs35l34_mclk_div], [36 x i8] } { [21 x %struct.cs35l34_mclk_div] [%struct.cs35l34_mclk_div { i32 5644800, i32 11025, i8 1 }, %struct.cs35l34_mclk_div { i32 5644800, i32 22050, i8 4 }, %struct.cs35l34_mclk_div { i32 5644800, i32 44100, i8 7 }, %struct.cs35l34_mclk_div { i32 6000000, i32 8000, i8 0 }, %struct.cs35l34_mclk_div { i32 6000000, i32 11025, i8 1 }, %struct.cs35l34_mclk_div { i32 6000000, i32 12000, i8 2 }, %struct.cs35l34_mclk_div { i32 6000000, i32 16000, i8 3 }, %struct.cs35l34_mclk_div { i32 6000000, i32 22050, i8 4 }, %struct.cs35l34_mclk_div { i32 6000000, i32 24000, i8 5 }, %struct.cs35l34_mclk_div { i32 6000000, i32 32000, i8 6 }, %struct.cs35l34_mclk_div { i32 6000000, i32 44100, i8 7 }, %struct.cs35l34_mclk_div { i32 6000000, i32 48000, i8 8 }, %struct.cs35l34_mclk_div { i32 6144000, i32 8000, i8 0 }, %struct.cs35l34_mclk_div { i32 6144000, i32 11025, i8 1 }, %struct.cs35l34_mclk_div { i32 6144000, i32 12000, i8 2 }, %struct.cs35l34_mclk_div { i32 6144000, i32 16000, i8 3 }, %struct.cs35l34_mclk_div { i32 6144000, i32 22050, i8 4 }, %struct.cs35l34_mclk_div { i32 6144000, i32 24000, i8 5 }, %struct.cs35l34_mclk_div { i32 6144000, i32 32000, i8 6 }, %struct.cs35l34_mclk_div { i32 6144000, i32 44100, i8 7 }, %struct.cs35l34_mclk_div { i32 6144000, i32 48000, i8 8 }], [36 x i8] zeroinitializer }, align 32
@cs35l34_pcm_hw_params._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.2, i32 562, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set clock state %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cs35l34_pcm_hw_params._entry_ptr.127 = internal global ptr @cs35l34_pcm_hw_params._entry.125, section ".printk_index", align 4
@cs35l34_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.128, ptr @.str.2, i32 1156, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l34_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@cs35l34_runtime_resume._entry_ptr = internal global ptr @cs35l34_runtime_resume._entry, section ".printk_index", align 4
@cs35l34_runtime_resume._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.2, i32 1167, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to restore register cache\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l34_runtime_resume._entry_ptr.131 = internal global ptr @cs35l34_runtime_resume._entry.129, section ".printk_index", align 4
@switch.table.cs35l34_set_tdm_slot = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 82, i32 82, i32 82, i32 84, i32 83, i32 82, i32 82, i32 85], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [72 x i64] [i64 70, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 20, i64 21, i64 22, i64 23, i64 24, i64 26, i64 29, i64 30, i64 32, i64 33, i64 34, i64 35, i64 36, i64 48, i64 49, i64 50, i64 51, i64 56, i64 58, i64 59, i64 60, i64 64, i64 65, i64 66, i64 67, i64 68, i64 70, i64 71, i64 75, i64 76, i64 78, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 90, i64 91, i64 92, i64 93, i64 94, i64 96, i64 98, i64 99, i64 100, i64 104, i64 105, i64 106, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 126]
@__sancov_gen_cov_switch_values.132 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 56, i64 75, i64 116, i64 117, i64 118, i64 119, i64 126]
@__sancov_gen_cov_switch_values.133 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1000, i64 1200, i64 1500, i64 2200]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.136 = internal global [8 x i64] [i64 6, i64 32, i64 5644800, i64 6000000, i64 6144000, i64 11289600, i64 12000000, i64 12288000]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"cs35l34_i2c_driver\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1212, i32 26 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1231, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1214, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"cs35l34_of_match\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1200, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"cs35l34_pm_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1194, i32 32 }
@___asan_gen_.162 = private unnamed_addr constant [11 x i8] c"cs35l34_id\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1206, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [15 x i8] c"cs35l34_regmap\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 793, i32 29 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1012, i32 20 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1015, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1027, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1035, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1063, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1066, i32 5 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1079, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1084, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1093, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1097, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [26 x i8] c"soc_component_dev_cs35l34\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 779, i32 46 }
@___asan_gen_.240 = private unnamed_addr constant [12 x i8] c"cs35l34_dai\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 652, i32 34 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1117, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [12 x i8] c"cs35l34_reg\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 53, i32 33 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 993, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 994, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 815, i32 31 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 819, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 828, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 832, i32 31 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 835, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 839, i32 31 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 841, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 849, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 851, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 854, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 855, i32 45 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 857, i32 31 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 859, i32 31 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 891, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 895, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 911, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 914, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 918, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 934, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 938, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 954, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 958, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 974, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 982, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant [21 x i8] c"cs35l34_snd_controls\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 371, i32 38 }
@___asan_gen_.381 = private unnamed_addr constant [18 x i8] c"cs35l34_audio_map\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 453, i32 40 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 372, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [12 x i8] c"dig_vol_tlv\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 366, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 374, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [13 x i8] c"amp_gain_tlv\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 368, i32 8 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 425, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 429, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 431, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 434, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 437, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 438, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 439, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 441, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 442, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 443, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 444, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 445, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 446, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 448, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [21 x i8] c"cs35l34_dapm_widgets\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 424, i32 41 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 250, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 264, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 392, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 404, i32 5 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 414, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 418, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 361, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 454, i32 17 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 469, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 708, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant [12 x i8] c"cs35l34_ops\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 643, i32 37 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 634, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant [20 x i8] c"cs35l34_constraints\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 572, i32 48 }
@___asan_gen_.515 = private unnamed_addr constant [18 x i8] c"cs35l34_src_rates\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 567, i32 27 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 554, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant [20 x i8] c"cs35l34_mclk_coeffs\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 481, i32 32 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 562, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1155, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.546 = private constant [30 x i8] c"../sound/soc/codecs/cs35l34.c\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.546, i32 1167, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant [34 x i8] c"switch.table.cs35l34_set_tdm_slot\00", align 1
@llvm.compiler.used = appending global [180 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_cs35l34_exit, ptr @__initcall__kmod_snd_soc_cs35l34__299_1236_cs35l34_modinit6, ptr @cs35l34_boost_inductor._entry, ptr @cs35l34_boost_inductor._entry_ptr, ptr @cs35l34_dai_set_sysclk._entry, ptr @cs35l34_dai_set_sysclk._entry_ptr, ptr @cs35l34_exit, ptr @cs35l34_handle_of_data._entry, ptr @cs35l34_handle_of_data._entry.40, ptr @cs35l34_handle_of_data._entry.45, ptr @cs35l34_handle_of_data._entry.49, ptr @cs35l34_handle_of_data._entry_ptr, ptr @cs35l34_handle_of_data._entry_ptr.43, ptr @cs35l34_handle_of_data._entry_ptr.47, ptr @cs35l34_handle_of_data._entry_ptr.51, ptr @cs35l34_i2c_probe._entry, ptr @cs35l34_i2c_probe._entry.12, ptr @cs35l34_i2c_probe._entry.15, ptr @cs35l34_i2c_probe._entry.19, ptr @cs35l34_i2c_probe._entry.22, ptr @cs35l34_i2c_probe._entry.25, ptr @cs35l34_i2c_probe._entry.28, ptr @cs35l34_i2c_probe._entry.32, ptr @cs35l34_i2c_probe._entry.9, ptr @cs35l34_i2c_probe._entry_ptr, ptr @cs35l34_i2c_probe._entry_ptr.11, ptr @cs35l34_i2c_probe._entry_ptr.14, ptr @cs35l34_i2c_probe._entry_ptr.17, ptr @cs35l34_i2c_probe._entry_ptr.21, ptr @cs35l34_i2c_probe._entry_ptr.24, ptr @cs35l34_i2c_probe._entry_ptr.27, ptr @cs35l34_i2c_probe._entry_ptr.31, ptr @cs35l34_i2c_probe._entry_ptr.34, ptr @cs35l34_irq_thread._entry, ptr @cs35l34_irq_thread._entry.62, ptr @cs35l34_irq_thread._entry.65, ptr @cs35l34_irq_thread._entry.70, ptr @cs35l34_irq_thread._entry.74, ptr @cs35l34_irq_thread._entry.78, ptr @cs35l34_irq_thread._entry.81, ptr @cs35l34_irq_thread._entry_ptr, ptr @cs35l34_irq_thread._entry_ptr.64, ptr @cs35l34_irq_thread._entry_ptr.68, ptr @cs35l34_irq_thread._entry_ptr.72, ptr @cs35l34_irq_thread._entry_ptr.76, ptr @cs35l34_irq_thread._entry_ptr.80, ptr @cs35l34_irq_thread._entry_ptr.83, ptr @cs35l34_main_amp_event._entry, ptr @cs35l34_main_amp_event._entry_ptr, ptr @cs35l34_mclk_event._entry, ptr @cs35l34_mclk_event._entry.109, ptr @cs35l34_mclk_event._entry.111, ptr @cs35l34_mclk_event._entry.114, ptr @cs35l34_mclk_event._entry_ptr, ptr @cs35l34_mclk_event._entry_ptr.110, ptr @cs35l34_mclk_event._entry_ptr.113, ptr @cs35l34_mclk_event._entry_ptr.115, ptr @cs35l34_modinit._entry, ptr @cs35l34_modinit._entry_ptr, ptr @cs35l34_pcm_hw_params._entry, ptr @cs35l34_pcm_hw_params._entry.125, ptr @cs35l34_pcm_hw_params._entry_ptr, ptr @cs35l34_pcm_hw_params._entry_ptr.127, ptr @cs35l34_runtime_resume._entry, ptr @cs35l34_runtime_resume._entry.129, ptr @cs35l34_runtime_resume._entry_ptr, ptr @cs35l34_runtime_resume._entry_ptr.131, ptr @cs35l34_sdin_event._entry, ptr @cs35l34_sdin_event._entry.104, ptr @cs35l34_sdin_event._entry_ptr, ptr @cs35l34_sdin_event._entry_ptr.106, ptr @cs35l34_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cs35l34_of_match, ptr @cs35l34_pm_ops, ptr @cs35l34_id, ptr @cs35l34_i2c_probe._key, ptr @cs35l34_regmap, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @soc_component_dev_cs35l34, ptr @cs35l34_dai, ptr @.str.33, ptr @cs35l34_reg, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @cs35l34_snd_controls, ptr @cs35l34_audio_map, ptr @.str.84, ptr @dig_vol_tlv, ptr @.compoundliteral, ptr @.str.85, ptr @amp_gain_tlv, ptr @.compoundliteral.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @cs35l34_dapm_widgets, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.112, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @cs35l34_ops, ptr @.str.121, ptr @.str.122, ptr @cs35l34_constraints, ptr @cs35l34_src_rates, ptr @.str.123, ptr @.str.124, ptr @cs35l34_mclk_coeffs, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @switch.table.cs35l34_set_tdm_slot], section "llvm.metadata"
@0 = internal global [139 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_modinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_i2c_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_cs35l34 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_i2c_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_reg to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_handle_of_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_handle_of_data._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_handle_of_data._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_handle_of_data._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_irq_thread._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_irq_thread._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_irq_thread._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_irq_thread._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_irq_thread._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_irq_thread._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_snd_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_audio_map to i32), i32 832, i32 1024, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dig_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_dapm_widgets to i32), i32 2700, i32 3392, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_sdin_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_sdin_event._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_mclk_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_mclk_event._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_mclk_event._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_mclk_event._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_main_amp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_boost_inductor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_dai_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_src_rates to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_mclk_coeffs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_pcm_hw_params._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l34_runtime_resume._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs35l34_set_tdm_slot to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_modinit() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cs35l34_i2c_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs35l34_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @cs35l34_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_i2c_probe(ptr noundef %i2c_client, ptr nocapture noundef readnone %id) #4 align 64 {
entry:
  %devid.i = alloca [3 x i8], align 1
  %val.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !283
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c_client, ptr noundef nonnull @cs35l34_regmap, ptr noundef nonnull @cs35l34_i2c_probe._key, ptr noundef nonnull @.str.4) #7
  %regmap = getelementptr inbounds %struct.cs35l34_private, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %5) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %num_core_supplies = getelementptr inbounds %struct.cs35l34_private, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %num_core_supplies, align 4
  %arrayidx11 = getelementptr %struct.cs35l34_private, ptr %call.i, i32 0, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.35, ptr %arrayidx11, align 4
  %arrayidx11.1 = getelementptr %struct.cs35l34_private, ptr %call.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.36, ptr %arrayidx11.1, align 4
  %call15 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call15) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_core_supplies, align 4
  %call26 = tail call i32 @regulator_bulk_enable(i32 noundef %10, ptr noundef %arrayidx11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call26) #10
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %tobool34.not = icmp eq ptr %1, null
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %pdata36 = getelementptr inbounds %struct.cs35l34_private, ptr %call.i, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %pdata36, ptr %1, i32 28)
  br label %if.end51

if.else:                                          ; preds = %if.end33
  %call.i200 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool39.not = icmp eq ptr %call.i200, null
  br i1 %tobool39.not, label %if.else.err_regulator_crit_edge, label %if.end41

if.else.err_regulator_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_regulator

if.end41:                                         ; preds = %if.else
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %tobool43.not = icmp eq ptr %13, null
  br i1 %tobool43.not, label %if.end41.if.end49_crit_edge, label %if.then44

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then44:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !283
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.37, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  %15 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i201 = icmp sgt i32 %15, -1
  br i1 %cmp.i201, label %if.then.i, label %do.end13.i

if.then.i:                                        ; preds = %if.then44
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8001, i32 %17)
  %cmp1.i = icmp ult i32 %17, 8001
  %18 = add i32 %17, -3300
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3299, i32 %18)
  %19 = icmp ult i32 %18, -3299
  %or.cond.i = and i1 %cmp1.i, %19
  br i1 %or.cond.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %17) #10
  br label %cs35l34_handle_of_data.exit.thread

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.not.i = icmp eq i32 %17, 0
  br i1 %cmp3.not.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %boost_vtge.i = getelementptr inbounds %struct.cs35l34_platform_data, ptr %call.i200, i32 0, i32 5
  %20 = ptrtoint ptr %boost_vtge.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %boost_vtge.i, align 4
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i = udiv i32 %18, 100
  %add.i = add nuw nsw i32 %div.i, 1
  %boost_vtge8.i = getelementptr inbounds %struct.cs35l34_platform_data, ptr %call.i200, i32 0, i32 5
  %21 = ptrtoint ptr %boost_vtge8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %boost_vtge8.i, align 4
  br label %if.end15.i

do.end13.i:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end13.i, %if.else.i, %if.then7.i
  %call.i.i82.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.44, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  %22 = call i32 @llvm.smin.i32(i32 %call.i.i82.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp17.i = icmp sgt i32 %22, -1
  br i1 %cmp17.i, label %if.then18.i, label %do.end22.i

if.then18.i:                                      ; preds = %if.end15.i
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  %boost_ind.i = getelementptr inbounds %struct.cs35l34_platform_data, ptr %call.i200, i32 0, i32 4
  %25 = ptrtoint ptr %boost_ind.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %boost_ind.i, align 4
  %call.i.i83.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.48, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  %26 = call i32 @llvm.smin.i32(i32 %call.i.i83.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp26.i = icmp sgt i32 %26, -1
  br i1 %cmp26.i, label %if.then27.i, label %if.then18.i.if.end40.i_crit_edge

if.then18.i.if.end40.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #10
  br label %cs35l34_handle_of_data.exit.thread

if.then27.i:                                      ; preds = %if.then18.i
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  %29 = add i32 %28, -3841
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2641, i32 %29)
  %30 = icmp ult i32 %29, -2641
  br i1 %30, label %do.end34.i, label %if.end36.i

do.end34.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %28) #10
  br label %cs35l34_handle_of_data.exit.thread

if.end36.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = trunc i32 %28 to i16
  %div38.lhs.trunc.i = add nsw i16 %31, -1200
  %div3892.i = udiv i16 %div38.lhs.trunc.i, 80
  %narrow.i = add nuw nsw i16 %div3892.i, 1
  %add39.i = zext i16 %narrow.i to i32
  %boost_peak.i = getelementptr inbounds %struct.cs35l34_platform_data, ptr %call.i200, i32 0, i32 3
  %32 = ptrtoint ptr %boost_peak.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add39.i, ptr %boost_peak.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end36.i, %if.then18.i.if.end40.i_crit_edge
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.52, ptr noundef null) #7
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %frombool.i = zext i1 %tobool.i.i to i8
  %33 = ptrtoint ptr %call.i200 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool.i, ptr %call.i200, align 4
  %call.i84.i = call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.53, ptr noundef null) #7
  %tobool.i85.i = icmp ne ptr %call.i84.i, null
  %digsft_disable.i = getelementptr inbounds %struct.cs35l34_platform_data, ptr %call.i200, i32 0, i32 1
  %frombool43.i = zext i1 %tobool.i85.i to i8
  %34 = ptrtoint ptr %digsft_disable.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool43.i, ptr %digsft_disable.i, align 1
  %call.i86.i = call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.54, ptr noundef null) #7
  %tobool.i87.i = icmp ne ptr %call.i86.i, null
  %gain_zc_disable.i = getelementptr inbounds %struct.cs35l34_platform_data, ptr %call.i200, i32 0, i32 6
  %frombool45.i = zext i1 %tobool.i87.i to i8
  %35 = ptrtoint ptr %gain_zc_disable.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool45.i, ptr %gain_zc_disable.i, align 4
  %call.i88.i = call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.55, ptr noundef null) #7
  %tobool.i89.i = icmp ne ptr %call.i88.i, null
  %amp_inv.i = getelementptr inbounds %struct.cs35l34_platform_data, ptr %call.i200, i32 0, i32 2
  %frombool47.i = zext i1 %tobool.i89.i to i8
  %36 = ptrtoint ptr %amp_inv.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool47.i, ptr %amp_inv.i, align 2
  %call.i.i90.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.56, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  %37 = call i32 @llvm.smin.i32(i32 %call.i.i90.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp49.i = icmp sgt i32 %37, -1
  br i1 %cmp49.i, label %if.then50.i, label %if.end40.i.if.end51.i_crit_edge

if.end40.i.if.end51.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

if.then50.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i, align 4
  %i2s_sdinloc.i = getelementptr inbounds %struct.cs35l34_platform_data, ptr %call.i200, i32 0, i32 7
  %40 = ptrtoint ptr %i2s_sdinloc.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %i2s_sdinloc.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then50.i, %if.end40.i.if.end51.i_crit_edge
  %call.i.i91.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.57, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  %41 = call i32 @llvm.smin.i32(i32 %call.i.i91.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp53.i = icmp sgt i32 %41, -1
  br i1 %cmp53.i, label %if.then54.i, label %if.end51.i.cs35l34_handle_of_data.exit_crit_edge

if.end51.i.cs35l34_handle_of_data.exit_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs35l34_handle_of_data.exit

if.then54.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i = icmp ne i32 %43, 0
  %tdm_rising_edge.i = getelementptr inbounds %struct.cs35l34_platform_data, ptr %call.i200, i32 0, i32 8
  %frombool55.i = zext i1 %tobool.i to i8
  %44 = ptrtoint ptr %tdm_rising_edge.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool55.i, ptr %tdm_rising_edge.i, align 4
  br label %cs35l34_handle_of_data.exit

cs35l34_handle_of_data.exit.thread:               ; preds = %do.end34.i, %do.end22.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %err_regulator

cs35l34_handle_of_data.exit:                      ; preds = %if.then54.i, %if.end51.i.cs35l34_handle_of_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end49

if.end49:                                         ; preds = %cs35l34_handle_of_data.exit, %if.end41.if.end49_crit_edge
  %pdata50 = getelementptr inbounds %struct.cs35l34_private, ptr %call.i, i32 0, i32 1
  %45 = call ptr @memcpy(ptr %pdata50, ptr %call.i200, i32 28)
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.then35
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 6
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  %call53 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %47, ptr noundef null, ptr noundef nonnull @cs35l34_irq_thread, i32 noundef 8200, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %if.end51.if.end60_crit_edge, label %do.end58

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call53) #10
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %if.end51.if.end60_crit_edge
  %call62 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef 3) #7
  %reset_gpio = getelementptr inbounds %struct.cs35l34_private, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call62, ptr %reset_gpio, align 4
  %cmp.i202 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %call62 to i32
  br label %err_regulator

if.end68:                                         ; preds = %if.end60
  call void @gpiod_set_value_cansleep(ptr noundef %call62, i32 noundef 1) #7
  call void @msleep(i32 noundef 50) #7
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %devid.i) #7
  %52 = ptrtoint ptr %devid.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %devid.i, align 1, !annotation !283
  %53 = getelementptr inbounds [3 x i8], ptr %devid.i, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %53, align 1, !annotation !283
  %55 = getelementptr inbounds [3 x i8], ptr %devid.i, i32 0, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %55, align 1, !annotation !283
  %call.i203 = call i32 @regmap_bulk_read(ptr noundef %51, i32 noundef 1, ptr noundef nonnull %devid.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %cmp.i204 = icmp slt i32 %call.i203, 0
  br i1 %cmp.i204, label %cirrus_read_device_id.exit.thread, label %cirrus_read_device_id.exit

cirrus_read_device_id.exit.thread:                ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %devid.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call.i203) #10
  br label %err_reset

cirrus_read_device_id.exit:                       ; preds = %if.end68
  %57 = ptrtoint ptr %devid.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %devid.i, align 1
  %conv.i = zext i8 %58 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %53, align 1
  %conv2.i = zext i8 %60 to i32
  %shl4.i = shl nuw nsw i32 %conv2.i, 4
  %or.i = or i32 %shl4.i, %shl.i
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %55, align 1
  %63 = lshr i8 %62, 4
  %64 = zext i8 %63 to i32
  %or8.i = or i32 %or.i, %64
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %devid.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 219700, i32 %or8.i)
  %cmp79.not = icmp eq i32 %or8.i, 219700
  br i1 %cmp79.not, label %if.end85, label %do.end83

do.end83:                                         ; preds = %cirrus_read_device_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %or8.i, i32 noundef 219700) #10
  br label %err_reset

if.end85:                                         ; preds = %cirrus_read_device_id.exit
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call87 = call i32 @regmap_read(ptr noundef %66, i32 noundef 5, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %do.end92, label %do.end97

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #10
  br label %err_reset

do.end97:                                         ; preds = %if.end85
  %67 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reg, align 4
  %and = and i32 %68, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef 219700, i32 noundef %and) #10
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 4
  %call.i207 = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 112, i32 noundef 167, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %71 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap, align 4
  %call.i208 = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 114, i32 noundef 17, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 100) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i209 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call109 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_cs35l34, ptr noundef nonnull @cs35l34_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %do.end114, label %do.end97.cleanup_crit_edge

do.end97.cleanup_crit_edge:                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end114:                                        ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.6) #10
  br label %err_reset

err_reset:                                        ; preds = %do.end114, %do.end92, %do.end83, %cirrus_read_device_id.exit.thread
  %ret.0 = phi i32 [ %call.i203, %cirrus_read_device_id.exit.thread ], [ -19, %do.end83 ], [ %call87, %do.end92 ], [ %call109, %do.end114 ]
  %73 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %74, i32 noundef 0) #7
  br label %err_regulator

err_regulator:                                    ; preds = %err_reset, %if.then65, %cs35l34_handle_of_data.exit.thread, %if.else.err_regulator_crit_edge
  %ret.1 = phi i32 [ %49, %if.then65 ], [ %ret.0, %err_reset ], [ -12, %if.else.err_regulator_crit_edge ], [ -22, %cs35l34_handle_of_data.exit.thread ]
  %75 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_core_supplies, align 4
  %call121 = call i32 @regulator_bulk_disable(i32 noundef %76, ptr noundef %arrayidx11) #7
  br label %cleanup

cleanup:                                          ; preds = %err_regulator, %do.end97.cleanup_crit_edge, %do.end31, %do.end20, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ %call15, %do.end20 ], [ %call26, %do.end31 ], [ %ret.1, %err_regulator ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_i2c_remove(ptr noundef %client) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio = getelementptr inbounds %struct.cs35l34_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %num_core_supplies = getelementptr inbounds %struct.cs35l34_private, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_core_supplies, align 4
  %core_supplies = getelementptr inbounds %struct.cs35l34_private, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef %5, ptr noundef %core_supplies) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_irq_thread(i32 noundef %irq, ptr noundef readonly %data) #4 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sticky1) #7
  %2 = ptrtoint ptr %sticky1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sticky1, align 4, !annotation !283
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sticky2) #7
  %3 = ptrtoint ptr %sticky2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sticky2, align 4, !annotation !283
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sticky3) #7
  %4 = ptrtoint ptr %sticky3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %sticky3, align 4, !annotation !283
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sticky4) #7
  %5 = ptrtoint ptr %sticky4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %sticky4, align 4, !annotation !283
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask1) #7
  %6 = ptrtoint ptr %mask1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mask1, align 4, !annotation !283
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask2) #7
  %7 = ptrtoint ptr %mask2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %mask2, align 4, !annotation !283
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask3) #7
  %8 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %mask3, align 4, !annotation !283
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask4) #7
  %9 = ptrtoint ptr %mask4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %mask4, align 4, !annotation !283
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current1) #7
  %10 = ptrtoint ptr %current1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %current1, align 4, !annotation !283
  %regmap = getelementptr inbounds %struct.cs35l34_private, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %12, i32 noundef 119, ptr noundef nonnull %sticky4) #7
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %14, i32 noundef 118, ptr noundef nonnull %sticky3) #7
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_read(ptr noundef %16, i32 noundef 117, ptr noundef nonnull %sticky2) #7
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_read(ptr noundef %18, i32 noundef 116, ptr noundef nonnull %sticky1) #7
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_read(ptr noundef %20, i32 noundef 115, ptr noundef nonnull %mask4) #7
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_read(ptr noundef %22, i32 noundef 114, ptr noundef nonnull %mask3) #7
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_read(ptr noundef %24, i32 noundef 113, ptr noundef nonnull %mask2) #7
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_read(ptr noundef %26, i32 noundef 112, ptr noundef nonnull %mask1) #7
  %27 = ptrtoint ptr %sticky1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sticky1, align 4
  %29 = ptrtoint ptr %mask1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask1, align 4
  %neg = xor i32 %30, -1
  %and = and i32 %28, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %31 = ptrtoint ptr %sticky2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sticky2, align 4
  %33 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mask2, align 4
  %neg16 = xor i32 %34, -1
  %and17 = and i32 %32, %neg16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true
  %35 = ptrtoint ptr %sticky3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sticky3, align 4
  %37 = ptrtoint ptr %mask3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mask3, align 4
  %neg20 = xor i32 %38, -1
  %and21 = and i32 %36, %neg20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %land.lhs.true19.if.end_crit_edge

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %39 = ptrtoint ptr %sticky4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sticky4, align 4
  %41 = ptrtoint ptr %mask4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mask4, align 4
  %neg24 = xor i32 %42, -1
  %and25 = and i32 %40, %neg24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true23.cleanup_crit_edge, label %land.lhs.true23.if.end_crit_edge

land.lhs.true23.if.end_crit_edge:                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true23.if.end_crit_edge, %land.lhs.true19.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call28 = call i32 @regmap_read(ptr noundef %44, i32 noundef 116, ptr noundef nonnull %current1) #7
  %45 = ptrtoint ptr %sticky1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sticky1, align 4
  %and29 = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end.if.end52_crit_edge, label %do.end

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.58) #10
  %49 = ptrtoint ptr %current1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %current1, align 4
  %and32 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body35, label %do.end.if.end52_crit_edge

do.end.if.end52_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.body35:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l34_irq_thread.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l34_irq_thread, %if.then40)) #7
          to label %do.end44 [label %if.then40], !srcloc !284

if.then40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l34_irq_thread.__UNIQUE_ID_ddebug295, ptr noundef %52, ptr noundef nonnull @.str.61) #7
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body35
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 100, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call.i244 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 100, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %call.i245 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 100, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end52

if.end52:                                         ; preds = %do.end44, %do.end.if.end52_crit_edge, %if.end.if.end52_crit_edge
  %59 = ptrtoint ptr %sticky1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sticky1, align 4
  %and53 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end60_crit_edge, label %do.end58

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %dev59 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev59, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.63) #10
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %if.end52.if.end60_crit_edge
  %63 = ptrtoint ptr %sticky1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sticky1, align 4
  %and61 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end95_crit_edge, label %do.end66

if.end60.if.end95_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

do.end66:                                         ; preds = %if.end60
  %dev67 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev67, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %66, ptr noundef nonnull @.str.66) #10
  %67 = ptrtoint ptr %current1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %current1, align 4
  %and68 = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body71, label %do.end66.if.end95_crit_edge

do.end66.if.end95_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

do.body71:                                        ; preds = %do.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l34_irq_thread.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l34_irq_thread, %if.then83)) #7
          to label %do.end87 [label %if.then83], !srcloc !284

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev67, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l34_irq_thread.__UNIQUE_ID_ddebug296, ptr noundef %70, ptr noundef nonnull @.str.69) #7
  br label %do.end87

do.end87:                                         ; preds = %if.then83, %do.body71
  %71 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap, align 4
  %call.i246 = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 100, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %call.i247 = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 100, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  %call.i248 = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 100, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end95

if.end95:                                         ; preds = %do.end87, %do.end66.if.end95_crit_edge, %if.end60.if.end95_crit_edge
  %77 = ptrtoint ptr %sticky1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sticky1, align 4
  %and96 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end130_crit_edge, label %do.end101

if.end95.if.end130_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

do.end101:                                        ; preds = %if.end95
  %dev102 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %79 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev102, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %80, ptr noundef nonnull @.str.71) #10
  %81 = ptrtoint ptr %current1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %current1, align 4
  %and103 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.body106, label %do.end101.if.end130_crit_edge

do.end101.if.end130_crit_edge:                    ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

do.body106:                                       ; preds = %do.end101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l34_irq_thread.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l34_irq_thread, %if.then118)) #7
          to label %do.end122 [label %if.then118], !srcloc !284

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev102, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l34_irq_thread.__UNIQUE_ID_ddebug297, ptr noundef %84, ptr noundef nonnull @.str.73) #7
  br label %do.end122

do.end122:                                        ; preds = %if.then118, %do.body106
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 4
  %call.i249 = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 100, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %call.i250 = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 100, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %89 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap, align 4
  %call.i251 = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 100, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end130

if.end130:                                        ; preds = %do.end122, %do.end101.if.end130_crit_edge, %if.end95.if.end130_crit_edge
  %91 = ptrtoint ptr %sticky1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sticky1, align 4
  %and131 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end165_crit_edge, label %do.end136

if.end130.if.end165_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

do.end136:                                        ; preds = %if.end130
  %dev137 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %93 = ptrtoint ptr %dev137 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev137, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %94, ptr noundef nonnull @.str.75) #10
  %95 = ptrtoint ptr %current1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %current1, align 4
  %and138 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %do.body141, label %do.end136.if.end165_crit_edge

do.end136.if.end165_crit_edge:                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

do.body141:                                       ; preds = %do.end136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l34_irq_thread.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l34_irq_thread, %if.then153)) #7
          to label %do.end157 [label %if.then153], !srcloc !284

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %dev137 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev137, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l34_irq_thread.__UNIQUE_ID_ddebug298, ptr noundef %98, ptr noundef nonnull @.str.77) #7
  br label %do.end157

do.end157:                                        ; preds = %if.then153, %do.body141
  %99 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap, align 4
  %call.i252 = call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 100, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %101 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap, align 4
  %call.i253 = call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef 100, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %103 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap, align 4
  %call.i254 = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 100, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end165

if.end165:                                        ; preds = %do.end157, %do.end136.if.end165_crit_edge, %if.end130.if.end165_crit_edge
  %105 = ptrtoint ptr %sticky3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sticky3, align 4
  %and166 = and i32 %106, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.end165.if.end177_crit_edge, label %do.end171

if.end165.if.end177_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end177

do.end171:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  %dev172 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %107 = ptrtoint ptr %dev172 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev172, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %108, ptr noundef nonnull @.str.79) #10
  %109 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap, align 4
  %call.i255 = call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef 7, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %111 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap, align 4
  %call.i256 = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 6, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end177

if.end177:                                        ; preds = %do.end171, %if.end165.if.end177_crit_edge
  %113 = ptrtoint ptr %sticky3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sticky3, align 4
  %and178 = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %if.end177.cleanup_crit_edge, label %do.end183

if.end177.cleanup_crit_edge:                      ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end183:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  %dev184 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %115 = ptrtoint ptr %dev184 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev184, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %116, ptr noundef nonnull @.str.82) #10
  %117 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap, align 4
  %call.i257 = call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef 7, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %119 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap, align 4
  %call.i258 = call i32 @regmap_update_bits_base(ptr noundef %120, i32 noundef 6, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end183, %if.end177.cleanup_crit_edge, %land.lhs.true23.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true23.cleanup_crit_edge ], [ 1, %do.end183 ], [ 1, %if.end177.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sticky4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sticky3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sticky2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sticky1) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs35l34_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 4, label %entry.return_crit_edge3
    i32 5, label %entry.return_crit_edge4
    i32 6, label %entry.return_crit_edge5
    i32 7, label %entry.return_crit_edge6
    i32 8, label %entry.return_crit_edge7
    i32 10, label %entry.return_crit_edge8
    i32 11, label %entry.return_crit_edge9
    i32 20, label %entry.return_crit_edge10
    i32 21, label %entry.return_crit_edge11
    i32 22, label %entry.return_crit_edge12
    i32 23, label %entry.return_crit_edge13
    i32 24, label %entry.return_crit_edge14
    i32 26, label %entry.return_crit_edge15
    i32 29, label %entry.return_crit_edge16
    i32 30, label %entry.return_crit_edge17
    i32 32, label %entry.return_crit_edge18
    i32 33, label %entry.return_crit_edge19
    i32 34, label %entry.return_crit_edge20
    i32 35, label %entry.return_crit_edge21
    i32 36, label %entry.return_crit_edge22
    i32 48, label %entry.return_crit_edge23
    i32 49, label %entry.return_crit_edge24
    i32 50, label %entry.return_crit_edge25
    i32 51, label %entry.return_crit_edge26
    i32 56, label %entry.return_crit_edge27
    i32 58, label %entry.return_crit_edge28
    i32 59, label %entry.return_crit_edge29
    i32 60, label %entry.return_crit_edge30
    i32 64, label %entry.return_crit_edge31
    i32 65, label %entry.return_crit_edge32
    i32 66, label %entry.return_crit_edge33
    i32 67, label %entry.return_crit_edge34
    i32 68, label %entry.return_crit_edge35
    i32 70, label %entry.return_crit_edge36
    i32 71, label %entry.return_crit_edge37
    i32 75, label %entry.return_crit_edge38
    i32 76, label %entry.return_crit_edge39
    i32 78, label %entry.return_crit_edge40
    i32 80, label %entry.return_crit_edge41
    i32 81, label %entry.return_crit_edge42
    i32 82, label %entry.return_crit_edge43
    i32 83, label %entry.return_crit_edge44
    i32 84, label %entry.return_crit_edge45
    i32 85, label %entry.return_crit_edge46
    i32 86, label %entry.return_crit_edge47
    i32 87, label %entry.return_crit_edge48
    i32 90, label %entry.return_crit_edge49
    i32 91, label %entry.return_crit_edge50
    i32 92, label %entry.return_crit_edge51
    i32 93, label %entry.return_crit_edge52
    i32 94, label %entry.return_crit_edge53
    i32 96, label %entry.return_crit_edge54
    i32 98, label %entry.return_crit_edge55
    i32 99, label %entry.return_crit_edge56
    i32 100, label %entry.return_crit_edge57
    i32 104, label %entry.return_crit_edge58
    i32 105, label %entry.return_crit_edge59
    i32 106, label %entry.return_crit_edge60
    i32 112, label %entry.return_crit_edge61
    i32 113, label %entry.return_crit_edge62
    i32 114, label %entry.return_crit_edge63
    i32 115, label %entry.return_crit_edge64
    i32 116, label %entry.return_crit_edge65
    i32 117, label %entry.return_crit_edge66
    i32 118, label %entry.return_crit_edge67
    i32 119, label %entry.return_crit_edge68
    i32 126, label %entry.return_crit_edge69
  ]

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs35l34_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 4, label %entry.return_crit_edge3
    i32 5, label %entry.return_crit_edge4
    i32 116, label %entry.return_crit_edge5
    i32 117, label %entry.return_crit_edge6
    i32 118, label %entry.return_crit_edge7
    i32 119, label %entry.return_crit_edge8
    i32 56, label %entry.return_crit_edge9
    i32 75, label %entry.return_crit_edge10
    i32 126, label %entry.return_crit_edge11
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs35l34_precious_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %0)
  %switch = icmp eq i32 %0, 116
  ret i1 %switch
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_probe(ptr nocapture noundef readonly %component) #4 align 64 {
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
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %regmap = getelementptr inbounds %struct.cs35l34_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i89 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 24, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 7, i32 noundef 253) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 8, i32 noundef 31) #7
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 24, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %pdata = getelementptr inbounds %struct.cs35l34_private, ptr %3, i32 0, i32 1
  %boost_peak = getelementptr inbounds %struct.cs35l34_private, ptr %3, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %boost_peak to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %boost_peak, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i91 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 30, i32 noundef 63, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gain_zc_disable = getelementptr inbounds %struct.cs35l34_private, ptr %3, i32 0, i32 1, i32 6
  %16 = ptrtoint ptr %gain_zc_disable to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %gain_zc_disable, align 4, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %. = select i1 %tobool14.not, i32 16, i32 0
  %call.i93 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 24, i32 noundef 16, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pdata, align 4, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool22.not = icmp eq i8 %21, 0
  br i1 %tobool22.not, label %if.end.if.end26_crit_edge, label %if.then23

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i94 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 10, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end.if.end26_crit_edge
  %digsft_disable = getelementptr inbounds %struct.cs35l34_private, ptr %3, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %digsft_disable to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %digsft_disable, align 1, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool28.not = icmp eq i8 %25, 0
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i95 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 21, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %amp_inv = getelementptr inbounds %struct.cs35l34_private, ptr %3, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %amp_inv to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %amp_inv, align 2, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool34.not = icmp eq i8 %29, 0
  br i1 %tobool34.not, label %if.end32.if.end38_crit_edge, label %if.then35

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i96 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 21, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32.if.end38_crit_edge
  %boost_ind = getelementptr inbounds %struct.cs35l34_private, ptr %3, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %boost_ind to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %boost_ind, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %33, label %do.end.i [
    i32 0, label %if.end38.if.end45_crit_edge
    i32 1000, label %sw.bb.i
    i32 1200, label %sw.bb8.i
    i32 1500, label %sw.bb17.i
    i32 2200, label %sw.bb26.i
  ]

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

sw.bb.i:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i97 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 33, i32 noundef 36) #7
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 34, i32 noundef 36) #7
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 35, i32 noundef 78) #7
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 36, i32 noundef 0) #7
  br label %if.end45

sw.bb8.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call10.i = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 33, i32 noundef 32) #7
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call12.i = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 34, i32 noundef 32) #7
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call14.i = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 35, i32 noundef 71) #7
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call16.i = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 36, i32 noundef 1) #7
  br label %if.end45

sw.bb17.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %call19.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 33, i32 noundef 32) #7
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call21.i = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 34, i32 noundef 32) #7
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call23.i = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 35, i32 noundef 60) #7
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %call25.i = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 36, i32 noundef 2) #7
  br label %if.end45

sw.bb26.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call28.i = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 33, i32 noundef 25) #7
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call30.i = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 34, i32 noundef 37) #7
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call32.i = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 35, i32 noundef 35) #7
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call34.i = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 36, i32 noundef 3) #7
  br label %if.end45

do.end.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 4
  %dev.i98 = getelementptr inbounds %struct.snd_soc_component, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %dev.i98 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i98, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef %33) #10
  br label %if.end45

if.end45:                                         ; preds = %do.end.i, %sw.bb26.i, %sw.bb17.i, %sw.bb8.i, %sw.bb.i, %if.end38.if.end45_crit_edge
  %ret.0 = phi i32 [ %33, %if.end38.if.end45_crit_edge ], [ -22, %do.end.i ], [ 0, %sw.bb26.i ], [ 0, %sw.bb17.i ], [ 0, %sw.bb8.i ], [ 0, %sw.bb.i ]
  %i2s_sdinloc = getelementptr inbounds %struct.cs35l34_private, ptr %3, i32 0, i32 1, i32 7
  %71 = ptrtoint ptr %i2s_sdinloc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i2s_sdinloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool47.not = icmp eq i32 %72, 0
  br i1 %tobool47.not, label %if.end45.if.end53_crit_edge, label %if.then48

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %72, 2
  %call.i99 = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 80, i32 noundef 12, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end45.if.end53_crit_edge
  %tdm_rising_edge = getelementptr inbounds %struct.cs35l34_private, ptr %3, i32 0, i32 1, i32 8
  %75 = ptrtoint ptr %tdm_rising_edge to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %tdm_rising_edge, align 4, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool55.not = icmp eq i8 %76, 0
  br i1 %tobool55.not, label %if.end53.if.end59_crit_edge, label %if.then56

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap, align 4
  %call.i100 = tail call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 81, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end53.if.end59_crit_edge
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  %call.i101 = tail call i32 @__pm_runtime_idle(ptr noundef %80, i32 noundef 4) #7
  ret i32 %ret.0
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
define internal i32 @cs35l34_sdin_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %event, label %do.end18 [
    i32 1, label %sw.bb
    i32 8, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %tdm_mode = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %tdm_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tdm_mode, align 4, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 8, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %regmap3 = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap3, align 4
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 6, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp = icmp slt i32 %call.i31, 0
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.102, i32 noundef %call.i31) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5100, i32 noundef 2) #7
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %tdm_mode8 = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %tdm_mode8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tdm_mode8, align 4, !range !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not = icmp eq i8 %16, 0
  br i1 %tobool9.not, label %sw.bb7.if.end13_crit_edge, label %if.then10

sw.bb7.if.end13_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %regmap11 = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap11, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 8, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %sw.bb7.if.end13_crit_edge
  %regmap14 = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %regmap14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap14, align 4
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 6, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %event) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end13, %if.end6, %do.end
  %retval.0 = phi i32 [ %call.i31, %do.end ], [ 0, %do.end18 ], [ 0, %if.end13 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_mclk_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #4 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg, align 4, !annotation !283
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %event)
  %cond = icmp eq i32 %event, 4
  br i1 %cond, label %sw.bb, label %do.end31

sw.bb:                                            ; preds = %entry
  %regmap = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 21, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef %call2) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 40) #7
  br label %for.body.preheader

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else, %if.then4
  br label %for.body

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %for.body.preheader
  %i.051 = phi i32 [ %inc, %if.end20.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_read(ptr noundef %12, i32 noundef 117, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef %call8) #10
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %and17 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 5100, i32 noundef 2) #7
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end25, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.108) #10
  br label %cleanup

do.end31:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %event) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end25, %if.end16.cleanup_crit_edge, %do.end13, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call8, %do.end13 ], [ 0, %do.end25 ], [ 0, %do.end31 ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_main_amp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %event, label %do.end [
    i32 2, label %sw.bb
    i32 8, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %boost_vtge = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %boost_vtge to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %boost_vtge, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 29, i32 noundef 63, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5100, i32 noundef 2) #7
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 24, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap6 = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap6, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 29, i32 noundef 63, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap6, align 4
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 24, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5100, i32 noundef 2) #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb5, %sw.bb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_dai_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #4 align 64 {
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
  %6 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %freq, label %do.end [
    i32 5644800, label %entry.sw.epilog_crit_edge
    i32 6000000, label %sw.bb2
    i32 6144000, label %sw.bb4
    i32 11289600, label %sw.bb6
    i32 12000000, label %sw.bb8
    i32 12288000, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.121, i32 noundef %freq) #10
  %mclk_int14 = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %mclk_int14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mclk_int14, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 6144000, %sw.bb11 ], [ 6000000, %sw.bb8 ], [ 5644800, %sw.bb6 ], [ %freq, %sw.bb4 ], [ %freq, %sw.bb2 ], [ %freq, %entry.sw.epilog_crit_edge ]
  %value.0 = phi i32 [ 18, %sw.bb11 ], [ 17, %sw.bb8 ], [ 16, %sw.bb6 ], [ 2, %sw.bb4 ], [ 1, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %mclk_int13 = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %mclk_int13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %mclk_int13, align 4
  %regmap = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 11, i32 noundef 23, i32 noundef %value.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #4 align 64 {
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.137)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.cleanup.sink.split_crit_edge
    i16 16384, label %sw.bb3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 0, %sw.bb3 ], [ 128, %entry.cleanup.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 10, i32 noundef 128, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %slot_width)
  %cmp.not = icmp eq i32 %slot_width, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tdm_mode = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %tdm_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %tdm_mode, align 4
  %7 = tail call i32 @llvm.cttz.i32(i32 %rx_mask, i1 true), !range !286
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_mask)
  %iszero = icmp eq i32 %rx_mask, 0
  %sub = select i1 %iszero, i32 -1, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp2 = icmp sgt i32 %sub, -1
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 94, i32 noundef 31, i32 noundef %sub) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %iszero6.not = icmp eq i32 %tx_mask, 0
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 84, i32 noundef 159, i32 noundef 159) #7
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 85, i32 noundef 159, i32 noundef 159) #7
  br i1 %iszero6.not, label %if.end5.cleanup_crit_edge, label %while.body.preheader

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.preheader:                             ; preds = %if.end5
  %8 = tail call i32 @llvm.cttz.i32(i32 %tx_mask, i1 true), !range !286
  br label %while.body

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.body.preheader
  %slot_num.077 = phi i32 [ %inc, %if.end27.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %slot.076 = phi i32 [ %12, %if.end27.while.body_crit_edge ], [ %8, %while.body.preheader ]
  %tx_mask.addr.075 = phi i32 [ %and, %if.end27.while.body_crit_edge ], [ %tx_mask, %while.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %slot_num.077)
  %9 = icmp ult i32 %slot_num.077, 8
  br i1 %9, label %switch.hole_check, label %while.body.if.end27_crit_edge

while.body.if.end27_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

switch.hole_check:                                ; preds = %while.body
  %switch.maskindex = trunc i32 %slot_num.077 to i8
  %switch.shifted = lshr i8 -103, %switch.maskindex
  %10 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit.not = icmp eq i8 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end27_crit_edge, label %switch.lookup

switch.hole_check.if.end27_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.cs35l34_set_tdm_slot, i32 0, i32 %slot_num.077
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %switch.load, i32 noundef 159, i32 noundef %slot.076) #7
  br label %if.end27

if.end27:                                         ; preds = %switch.lookup, %switch.hole_check.if.end27_crit_edge, %while.body.if.end27_crit_edge
  %div686973 = lshr i32 %slot.076, 3
  %sub28 = sub nuw nsw i32 93, %div686973
  %mul.neg = mul nsw i32 %div686973, -8
  %sub30 = add nsw i32 %mul.neg, %slot.076
  %shl = shl nuw i32 1, %sub30
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %sub28, i32 noundef %shl, i32 noundef %shl) #7
  %shl33 = shl nuw i32 1, %slot.076
  %neg = xor i32 %shl33, -1
  %and = and i32 %tx_mask.addr.075, %neg
  %12 = tail call i32 @llvm.cttz.i32(i32 %and, i1 true), !range !286
  %iszero34.not = icmp eq i32 %and, 0
  %inc = add i32 %slot_num.077, 1
  br i1 %iszero34.not, label %if.end27.cleanup_crit_edge, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_set_tristate(ptr nocapture noundef readonly %dai, i32 noundef %tristate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tristate)
  %tobool.not = icmp eq i32 %tristate, 0
  %. = select i1 %tobool.not, i32 0, i32 4
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 8, i32 noundef 4, i32 noundef %.) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_pcm_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @cs35l34_constraints) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_pcm_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #4 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %mclk_int = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %mclk_int to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_int, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.010.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [21 x %struct.cs35l34_mclk_div], ptr @cs35l34_mclk_coeffs, i32 0, i32 %i.010.i
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
  %srate4.i = getelementptr [21 x %struct.cs35l34_mclk_div], ptr @cs35l34_mclk_coeffs, i32 0, i32 %i.010.i, i32 1
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
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %do.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.123, i32 noundef %9, i32 noundef %7) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  %regmap = getelementptr inbounds %struct.cs35l34_private, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %adsp_rate = getelementptr [21 x %struct.cs35l34_mclk_div], ptr @cs35l34_mclk_coeffs, i32 0, i32 %i.010.i, i32 2
  %16 = ptrtoint ptr %adsp_rate to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %adsp_rate, align 4
  %conv = zext i8 %17 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 10, i32 noundef 15, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.not = icmp eq i32 %call.i, 0
  br i1 %cmp6.not, label %if.end.cleanup_crit_edge, label %do.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.126, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_runtime_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.cs35l34_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #7
  %reset_gpio = getelementptr inbounds %struct.cs35l34_private, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #7
  %num_core_supplies = getelementptr inbounds %struct.cs35l34_private, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_core_supplies, align 4
  %core_supplies = getelementptr inbounds %struct.cs35l34_private, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef %9, ptr noundef %core_supplies) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l34_runtime_resume(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_core_supplies = getelementptr inbounds %struct.cs35l34_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_core_supplies, align 4
  %core_supplies = getelementptr inbounds %struct.cs35l34_private, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef %3, ptr noundef %core_supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.cs35l34_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #7
  %reset_gpio = getelementptr inbounds %struct.cs35l34_private, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 50) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regcache_sync(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.130) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %11, i1 noundef zeroext true) #7
  %12 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_core_supplies, align 4
  %call14 = tail call i32 @regulator_bulk_disable(i32 noundef %13, ptr noundef %core_supplies) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call3, %do.end8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !92, !93, !94, !96, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !149, !150, !151, !153, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !216, !217, !218, !220, !221, !223, !224, !225, !227, !229, !231, !233, !234, !235, !236, !238, !240, !242, !243, !244, !245, !247, !249, !251, !252, !253, !254, !256, !257, !258, !260, !262, !264, !266, !267, !268, !270, !271, !272}
!llvm.module.flags = !{!274, !275, !276, !277, !278, !279, !280, !281}
!llvm.ident = !{!282}

!0 = !{ptr @__initcall__kmod_snd_soc_cs35l34__299_1236_cs35l34_modinit6, !1, !"__initcall__kmod_snd_soc_cs35l34__299_1236_cs35l34_modinit6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cs35l34.c", i32 1236, i32 1}
!2 = !{ptr @__exitcall_cs35l34_exit, !3, !"__exitcall_cs35l34_exit", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/cs35l34.c", i32 1242, i32 1}
!4 = !{ptr @__UNIQUE_ID_description300, !5, !"__UNIQUE_ID_description300", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/cs35l34.c", i32 1244, i32 1}
!6 = !{ptr @__UNIQUE_ID_author301, !7, !"__UNIQUE_ID_author301", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/cs35l34.c", i32 1245, i32 1}
!8 = !{ptr @__UNIQUE_ID_file302, !9, !"__UNIQUE_ID_file302", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/cs35l34.c", i32 1246, i32 1}
!10 = !{ptr @__UNIQUE_ID_license303, !9, !"__UNIQUE_ID_license303", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/cs35l34.c", i32 1231, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cs35l34_modinit._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @cs35l34_modinit._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/cs35l34.c", i32 1214, i32 11}
!19 = !{ptr @cs35l34_i2c_driver, !20, !"cs35l34_i2c_driver", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/cs35l34.c", i32 1212, i32 26}
!21 = !{ptr @cs35l34_i2c_probe._key, !22, !"_key", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/cs35l34.c", i32 1012, i32 20}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/cs35l34.c", i32 1015, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cs35l34_i2c_probe._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @cs35l34_i2c_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/cs35l34.c", i32 1027, i32 3}
!33 = !{ptr @cs35l34_i2c_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cs35l34_i2c_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/cs35l34.c", i32 1035, i32 3}
!37 = !{ptr @cs35l34_i2c_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cs35l34_i2c_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/cs35l34.c", i32 1063, i32 3}
!41 = !{ptr @cs35l34_i2c_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cs35l34_i2c_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/cs35l34.c", i32 1066, i32 5}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/cs35l34.c", i32 1079, i32 3}
!47 = !{ptr @cs35l34_i2c_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cs35l34_i2c_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/cs35l34.c", i32 1084, i32 3}
!51 = !{ptr @cs35l34_i2c_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cs35l34_i2c_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/cs35l34.c", i32 1093, i32 3}
!55 = !{ptr @cs35l34_i2c_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cs35l34_i2c_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/cs35l34.c", i32 1097, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cs35l34_i2c_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @cs35l34_i2c_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/cs35l34.c", i32 1117, i32 3}
!64 = !{ptr @cs35l34_i2c_probe._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @cs35l34_i2c_probe._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @cs35l34_regmap, !67, !"cs35l34_regmap", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/cs35l34.c", i32 793, i32 29}
!68 = !{ptr @cs35l34_reg, !69, !"cs35l34_reg", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/cs35l34.c", i32 53, i32 33}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/cs35l34.c", i32 993, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/cs35l34.c", i32 994, i32 2}
!74 = distinct !{null, !75, !"cs35l34_core_supplies", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/cs35l34.c", i32 992, i32 27}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/cs35l34.c", i32 815, i32 31}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/cs35l34.c", i32 819, i32 4}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @cs35l34_handle_of_data._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @cs35l34_handle_of_data._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/cs35l34.c", i32 828, i32 3}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @cs35l34_handle_of_data._entry.40, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @cs35l34_handle_of_data._entry_ptr.43, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/cs35l34.c", i32 832, i32 31}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/cs35l34.c", i32 835, i32 3}
!92 = !{ptr @cs35l34_handle_of_data._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @cs35l34_handle_of_data._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/cs35l34.c", i32 839, i32 31}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/cs35l34.c", i32 841, i32 4}
!98 = !{ptr @cs35l34_handle_of_data._entry.49, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @cs35l34_handle_of_data._entry_ptr.51, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/cs35l34.c", i32 849, i32 3}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/cs35l34.c", i32 851, i32 3}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/cs35l34.c", i32 854, i32 3}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/cs35l34.c", i32 855, i32 45}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/cs35l34.c", i32 857, i32 31}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/cs35l34.c", i32 859, i32 31}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/cs35l34.c", i32 891, i32 3}
!114 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @cs35l34_irq_thread._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @cs35l34_irq_thread._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/cs35l34.c", i32 895, i32 4}
!119 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @cs35l34_irq_thread.__UNIQUE_ID_ddebug295, !118, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/cs35l34.c", i32 911, i32 3}
!123 = !{ptr @cs35l34_irq_thread._entry.62, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @cs35l34_irq_thread._entry_ptr.64, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/cs35l34.c", i32 914, i32 3}
!127 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @cs35l34_irq_thread._entry.65, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @cs35l34_irq_thread._entry_ptr.68, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/cs35l34.c", i32 918, i32 4}
!132 = !{ptr @cs35l34_irq_thread.__UNIQUE_ID_ddebug296, !131, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/cs35l34.c", i32 934, i32 3}
!135 = !{ptr @cs35l34_irq_thread._entry.70, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @cs35l34_irq_thread._entry_ptr.72, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/cs35l34.c", i32 938, i32 4}
!139 = !{ptr @cs35l34_irq_thread.__UNIQUE_ID_ddebug297, !138, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/cs35l34.c", i32 954, i32 3}
!142 = !{ptr @cs35l34_irq_thread._entry.74, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @cs35l34_irq_thread._entry_ptr.76, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/cs35l34.c", i32 958, i32 4}
!146 = !{ptr @cs35l34_irq_thread.__UNIQUE_ID_ddebug298, !145, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!147 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/cs35l34.c", i32 974, i32 3}
!149 = !{ptr @cs35l34_irq_thread._entry.78, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @cs35l34_irq_thread._entry_ptr.80, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/cs35l34.c", i32 982, i32 3}
!153 = !{ptr @cs35l34_irq_thread._entry.81, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @cs35l34_irq_thread._entry_ptr.83, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @soc_component_dev_cs35l34, !156, !"soc_component_dev_cs35l34", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/cs35l34.c", i32 779, i32 46}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/cs35l34.c", i32 372, i32 2}
!159 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/cs35l34.c", i32 374, i32 2}
!161 = !{ptr @cs35l34_snd_controls, !162, !"cs35l34_snd_controls", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/cs35l34.c", i32 371, i32 38}
!163 = !{ptr @dig_vol_tlv, !164, !"dig_vol_tlv", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/cs35l34.c", i32 366, i32 8}
!165 = !{ptr @amp_gain_tlv, !166, !"amp_gain_tlv", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/cs35l34.c", i32 368, i32 8}
!167 = !{ptr @.str.87, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/cs35l34.c", i32 425, i32 2}
!169 = !{ptr @.str.88, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/cs35l34.c", i32 429, i32 2}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/cs35l34.c", i32 431, i32 2}
!173 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/cs35l34.c", i32 434, i32 2}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/cs35l34.c", i32 437, i32 2}
!177 = !{ptr @.str.92, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/cs35l34.c", i32 438, i32 2}
!179 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/cs35l34.c", i32 439, i32 2}
!181 = !{ptr @.str.94, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/cs35l34.c", i32 441, i32 2}
!183 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/cs35l34.c", i32 442, i32 2}
!185 = !{ptr @.str.96, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/cs35l34.c", i32 443, i32 2}
!187 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/cs35l34.c", i32 444, i32 2}
!189 = !{ptr @.str.98, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/cs35l34.c", i32 445, i32 2}
!191 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/cs35l34.c", i32 446, i32 2}
!193 = !{ptr @.str.100, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/cs35l34.c", i32 448, i32 2}
!195 = !{ptr @cs35l34_dapm_widgets, !196, !"cs35l34_dapm_widgets", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/cs35l34.c", i32 424, i32 41}
!197 = !{ptr @.str.102, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/cs35l34.c", i32 250, i32 4}
!199 = !{ptr @.str.103, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @cs35l34_sdin_event._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @cs35l34_sdin_event._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.105, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/cs35l34.c", i32 264, i32 3}
!204 = !{ptr @cs35l34_sdin_event._entry.104, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @cs35l34_sdin_event._entry_ptr.106, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.107, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/cs35l34.c", i32 392, i32 4}
!208 = !{ptr @.str.108, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @cs35l34_mclk_event._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @cs35l34_mclk_event._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @cs35l34_mclk_event._entry.109, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/cs35l34.c", i32 404, i32 5}
!213 = !{ptr @cs35l34_mclk_event._entry_ptr.110, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.112, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/cs35l34.c", i32 414, i32 4}
!216 = !{ptr @cs35l34_mclk_event._entry.111, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @cs35l34_mclk_event._entry_ptr.113, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @cs35l34_mclk_event._entry.114, !219, !"_entry", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/cs35l34.c", i32 418, i32 3}
!220 = !{ptr @cs35l34_mclk_event._entry_ptr.115, !219, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.116, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/cs35l34.c", i32 361, i32 3}
!223 = !{ptr @cs35l34_main_amp_event._entry, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @cs35l34_main_amp_event._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.117, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/cs35l34.c", i32 454, i32 17}
!227 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/cs35l34.c", i32 469, i32 3}
!229 = !{ptr @cs35l34_audio_map, !230, !"cs35l34_audio_map", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/cs35l34.c", i32 453, i32 40}
!231 = !{ptr @.str.119, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/cs35l34.c", i32 708, i32 3}
!233 = !{ptr @.str.120, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @cs35l34_boost_inductor._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @cs35l34_boost_inductor._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @cs35l34_dai, !237, !"cs35l34_dai", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/cs35l34.c", i32 652, i32 34}
!238 = !{ptr @cs35l34_ops, !239, !"cs35l34_ops", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/cs35l34.c", i32 643, i32 37}
!240 = !{ptr @.str.121, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/cs35l34.c", i32 634, i32 3}
!242 = !{ptr @.str.122, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @cs35l34_dai_set_sysclk._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @cs35l34_dai_set_sysclk._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @cs35l34_constraints, !246, !"cs35l34_constraints", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/cs35l34.c", i32 572, i32 48}
!247 = !{ptr @cs35l34_src_rates, !248, !"cs35l34_src_rates", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/cs35l34.c", i32 567, i32 27}
!249 = !{ptr @.str.123, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/cs35l34.c", i32 554, i32 3}
!251 = !{ptr @.str.124, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @cs35l34_pcm_hw_params._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @cs35l34_pcm_hw_params._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.126, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/cs35l34.c", i32 562, i32 3}
!256 = !{ptr @cs35l34_pcm_hw_params._entry.125, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @cs35l34_pcm_hw_params._entry_ptr.127, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @cs35l34_mclk_coeffs, !259, !"cs35l34_mclk_coeffs", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/cs35l34.c", i32 481, i32 32}
!260 = !{ptr @cs35l34_of_match, !261, !"cs35l34_of_match", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/cs35l34.c", i32 1200, i32 34}
!262 = !{ptr @cs35l34_pm_ops, !263, !"cs35l34_pm_ops", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/cs35l34.c", i32 1194, i32 32}
!264 = !{ptr @.str.128, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/cs35l34.c", i32 1155, i32 3}
!266 = !{ptr @cs35l34_runtime_resume._entry, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @cs35l34_runtime_resume._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.130, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/cs35l34.c", i32 1167, i32 3}
!270 = !{ptr @cs35l34_runtime_resume._entry.129, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @cs35l34_runtime_resume._entry_ptr.131, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @cs35l34_id, !273, !"cs35l34_id", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/cs35l34.c", i32 1206, i32 35}
!274 = !{i32 1, !"wchar_size", i32 2}
!275 = !{i32 1, !"min_enum_size", i32 4}
!276 = !{i32 8, !"branch-target-enforcement", i32 0}
!277 = !{i32 8, !"sign-return-address", i32 0}
!278 = !{i32 8, !"sign-return-address-all", i32 0}
!279 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!280 = !{i32 7, !"uwtable", i32 1}
!281 = !{i32 7, !"frame-pointer", i32 2}
!282 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!283 = !{!"auto-init"}
!284 = !{i64 2148985935, i64 2148985940, i64 2148985953, i64 2148985997, i64 2148986031, i64 2148986052}
!285 = !{i8 0, i8 2}
!286 = !{i32 0, i32 33}
