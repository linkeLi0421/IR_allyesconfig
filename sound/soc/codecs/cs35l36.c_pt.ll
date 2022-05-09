; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cs35l36.c_pt.bc'
source_filename = "../sound/soc/codecs/cs35l36.c"
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.atomic_t = type { i32 }
%struct.cs35l36_pll_config = type { i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.cs35l36_global_fs_config = type { i32, i32 }
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
%struct.cs35l36_private = type { ptr, %struct.cs35l36_platform_data, ptr, [2 x %struct.regulator_bulk_data], i32, i32, i32, i32, i32, ptr }
%struct.cs35l36_platform_data = type { i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, %struct.cs35l36_vpbr_cfg }
%struct.cs35l36_vpbr_cfg = type { i8, i8, i32, i32, i32, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_snd_soc_cs35l36__296_1953_cs35l36_i2c_driver_init6 = internal global ptr @cs35l36_i2c_driver_init, section ".initcall6.init", align 4
@cs35l36_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cs35l36_i2c_probe, ptr @cs35l36_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cs35l36_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cs35l36_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cs35l36_i2c_driver_exit = internal global ptr @cs35l36_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [48 x i8] c"snd_soc_cs35l36.description=ASoC CS35L36 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [85 x i8] c"snd_soc_cs35l36.author=James Schulman, Cirrus Logic Inc, <james.schulman@cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [54 x i8] c"snd_soc_cs35l36.file=sound/soc/codecs/snd-soc-cs35l36\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [28 x i8] c"snd_soc_cs35l36.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cs35l36\00", [24 x i8] zeroinitializer }, align 32
@cs35l36_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs35l36\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cs35l36_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cs35l36\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cs35l36_regmap = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr @cs35l36_readable_reg, ptr @cs35l36_volatile_reg, ptr @cs35l36_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 14694396, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l36_reg, i32 110, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cs35l36:1720:(&cs35l36_regmap)->lock\00", [59 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1723, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs35l36_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/cs35l36.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr = internal global ptr @cs35l36_i2c_probe._entry, section ".printk_index", align 4
@cs35l36_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1734, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request core supplies: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.9 = internal global ptr @cs35l36_i2c_probe._entry.7, section ".printk_index", align 4
@cs35l36_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1758, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable core supplies: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.12 = internal global ptr @cs35l36_i2c_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1769, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Reset line busy, assuming shared reset\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.17 = internal global ptr @cs35l36_i2c_probe._entry.14, section ".printk_index", align 4
@cs35l36_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1771, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get reset GPIO: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.20 = internal global ptr @cs35l36_i2c_probe._entry.18, section ".printk_index", align 4
@cs35l36_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1784, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Get Device ID failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.23 = internal global ptr @cs35l36_i2c_probe._entry.21, section ".printk_index", align 4
@cs35l36_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1790, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Device ID (%X). Expected ID %X\0A\00", [32 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.26 = internal global ptr @cs35l36_i2c_probe._entry.24, section ".printk_index", align 4
@cs35l36_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 1797, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Get Revision ID failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.29 = internal global ptr @cs35l36_i2c_probe._entry.27, section ".printk_index", align 4
@cs35l36_i2c_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 1806, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read otp_id Register %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.32 = internal global ptr @cs35l36_i2c_probe._entry.30, section ".printk_index", align 4
@cs35l36_reva0_errata_patch = internal constant { [31 x %struct.reg_sequence], [76 x i8] } { [31 x %struct.reg_sequence] [%struct.reg_sequence { i32 32, i32 21845, i32 0 }, %struct.reg_sequence { i32 32, i32 43690, i32 0 }, %struct.reg_sequence { i32 1280, i32 8288, i32 0 }, %struct.reg_sequence { i32 1284, i32 1, i32 0 }, %struct.reg_sequence { i32 1280, i32 9312, i32 0 }, %struct.reg_sequence { i32 1284, i32 1, i32 0 }, %struct.reg_sequence { i32 8328, i32 19535928, i32 0 }, %struct.reg_sequence { i32 12308, i32 16838158, i32 0 }, %struct.reg_sequence { i32 12296, i32 530506, i32 0 }, %struct.reg_sequence { i32 29720, i32 1351614920, i32 0 }, %struct.reg_sequence { i32 28772, i32 153724928, i32 0 }, %struct.reg_sequence { i32 11536, i32 180252, i32 0 }, %struct.reg_sequence { i32 16652, i32 2577, i32 0 }, %struct.reg_sequence { i32 28168, i32 -1961290740, i32 0 }, %struct.reg_sequence { i32 25684, i32 50331658, i32 0 }, %struct.reg_sequence { i32 32276, i32 8431, i32 0 }, %struct.reg_sequence { i32 32308, i32 14, i32 0 }, %struct.reg_sequence { i32 16652, i32 2577, i32 0 }, %struct.reg_sequence { i32 29712, i32 542198528, i32 0 }, %struct.reg_sequence { i32 8224, i32 0, i32 0 }, %struct.reg_sequence { i32 13632032, i32 8781825, i32 0 }, %struct.reg_sequence { i32 13632036, i32 8781825, i32 0 }, %struct.reg_sequence { i32 13632040, i32 8781825, i32 0 }, %struct.reg_sequence { i32 13632044, i32 8781825, i32 0 }, %struct.reg_sequence { i32 13632048, i32 8781825, i32 0 }, %struct.reg_sequence { i32 13632052, i32 8781825, i32 0 }, %struct.reg_sequence { i32 13632056, i32 8781825, i32 0 }, %struct.reg_sequence { i32 13632060, i32 8781825, i32 0 }, %struct.reg_sequence { i32 13632024, i32 255, i32 0 }, %struct.reg_sequence { i32 32, i32 52428, i32 0 }, %struct.reg_sequence { i32 32, i32 13107, i32 0 }], [76 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 1822, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to apply A0 errata patch %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.35 = internal global ptr @cs35l36_i2c_probe._entry.33, section ".printk_index", align 4
@cs35l36_i2c_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 1829, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to Trim OTP %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.38 = internal global ptr @cs35l36_i2c_probe._entry.36, section ".printk_index", align 4
@cs35l36_revb0_errata_patch = internal constant { [16 x %struct.reg_sequence], [32 x i8] } { [16 x %struct.reg_sequence] [%struct.reg_sequence { i32 32, i32 21845, i32 0 }, %struct.reg_sequence { i32 32, i32 43690, i32 0 }, %struct.reg_sequence { i32 28772, i32 153724928, i32 0 }, %struct.reg_sequence { i32 30800, i32 12201, i32 0 }, %struct.reg_sequence { i32 30804, i32 258517, i32 0 }, %struct.reg_sequence { i32 30808, i32 259555, i32 0 }, %struct.reg_sequence { i32 30812, i32 4407, i32 0 }, %struct.reg_sequence { i32 30816, i32 108453, i32 0 }, %struct.reg_sequence { i32 30820, i32 192874, i32 0 }, %struct.reg_sequence { i32 30824, i32 15905, i32 0 }, %struct.reg_sequence { i32 30792, i32 1, i32 0 }, %struct.reg_sequence { i32 14420, i32 85459520, i32 0 }, %struct.reg_sequence { i32 29720, i32 1351614920, i32 0 }, %struct.reg_sequence { i32 14668, i32 42427581, i32 0 }, %struct.reg_sequence { i32 32, i32 52428, i32 0 }, %struct.reg_sequence { i32 32, i32 13107, i32 0 }], [32 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 1838, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to apply B0 errata patch %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.41 = internal global ptr @cs35l36_i2c_probe._entry.39, section ".printk_index", align 4
@cs35l36_i2c_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.3, ptr @.str.4, i32 1849, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid IRQ: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.44 = internal global ptr @cs35l36_i2c_probe._entry.42, section ".printk_index", align 4
@cs35l36_i2c_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.3, ptr @.str.4, i32 1866, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid IRQ polarity: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.47 = internal global ptr @cs35l36_i2c_probe._entry.45, section ".printk_index", align 4
@cs35l36_i2c_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.3, ptr @.str.4, i32 1879, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.50 = internal global ptr @cs35l36_i2c_probe._entry.48, section ".printk_index", align 4
@cs35l36_i2c_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.3, ptr @.str.4, i32 1893, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cirrus Logic CS35L%d, Revision: %02X\0A\00", [58 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.53 = internal global ptr @cs35l36_i2c_probe._entry.51, section ".printk_index", align 4
@soc_component_dev_cs35l36 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @cs35l36_aud_controls, i32 7, ptr @cs35l36_dapm_widgets, i32 26, ptr @cs35l36_audio_map, i32 49, ptr @cs35l36_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l36_component_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cs35l36_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.187, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs35l36_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.179, i64 1092, i32 -2147483648, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.180, i64 68, i32 -2147483648, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 -128, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.3, ptr @.str.4, i32 1900, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Register component failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l36_i2c_probe._entry_ptr.56 = internal global ptr @cs35l36_i2c_probe._entry.54, section ".printk_index", align 4
@cs35l36_reg = internal global { [110 x %struct.reg_default], [208 x i8] } { [110 x %struct.reg_default] [%struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 1280, i32 9312 }, %struct.reg_default { i32 1284, i32 0 }, %struct.reg_default { i32 1288, i32 0 }, %struct.reg_default { i32 1292, i32 0 }, %struct.reg_default { i32 1296, i32 0 }, %struct.reg_default { i32 3072, i32 4 }, %struct.reg_default { i32 3076, i32 0 }, %struct.reg_default { i32 3080, i32 0 }, %struct.reg_default { i32 8212, i32 0 }, %struct.reg_default { i32 8216, i32 13089 }, %struct.reg_default { i32 8220, i32 16777232 }, %struct.reg_default { i32 8224, i32 2 }, %struct.reg_default { i32 8228, i32 0 }, %struct.reg_default { i32 8232, i32 0 }, %struct.reg_default { i32 8236, i32 0 }, %struct.reg_default { i32 8244, i32 0 }, %struct.reg_default { i32 9216, i32 56 }, %struct.reg_default { i32 11268, i32 16 }, %struct.reg_default { i32 11276, i32 3 }, %struct.reg_default { i32 11280, i32 0 }, %struct.reg_default { i32 11284, i32 0 }, %struct.reg_default { i32 11520, i32 0 }, %struct.reg_default { i32 13316, i32 0 }, %struct.reg_default { i32 13320, i32 0 }, %struct.reg_default { i32 13324, i32 0 }, %struct.reg_default { i32 13328, i32 0 }, %struct.reg_default { i32 13340, i32 2 }, %struct.reg_default { i32 13344, i32 0 }, %struct.reg_default { i32 13348, i32 0 }, %struct.reg_default { i32 14336, i32 0 }, %struct.reg_default { i32 14340, i32 1 }, %struct.reg_default { i32 14344, i32 74 }, %struct.reg_default { i32 14348, i32 3 }, %struct.reg_default { i32 14352, i32 9252 }, %struct.reg_default { i32 14356, i32 22528 }, %struct.reg_default { i32 14360, i32 65536 }, %struct.reg_default { i32 14364, i32 8193 }, %struct.reg_default { i32 14368, i32 0 }, %struct.reg_default { i32 14384, i32 304 }, %struct.reg_default { i32 15364, i32 0 }, %struct.reg_default { i32 15368, i32 12288 }, %struct.reg_default { i32 15372, i32 1052688 }, %struct.reg_default { i32 15376, i32 0 }, %struct.reg_default { i32 15380, i32 0 }, %struct.reg_default { i32 15384, i32 0 }, %struct.reg_default { i32 16388, i32 3 }, %struct.reg_default { i32 16392, i32 2313 }, %struct.reg_default { i32 16640, i32 0 }, %struct.reg_default { i32 16928, i32 2 }, %struct.reg_default { i32 17152, i32 0 }, %struct.reg_default { i32 17408, i32 1 }, %struct.reg_default { i32 17472, i32 448 }, %struct.reg_default { i32 17476, i32 448 }, %struct.reg_default { i32 18432, i32 40 }, %struct.reg_default { i32 18436, i32 589824 }, %struct.reg_default { i32 18440, i32 2 }, %struct.reg_default { i32 18456, i32 1572888 }, %struct.reg_default { i32 18460, i32 65536 }, %struct.reg_default { i32 18464, i32 196610 }, %struct.reg_default { i32 18468, i32 327684 }, %struct.reg_default { i32 18472, i32 458758 }, %struct.reg_default { i32 18476, i32 0 }, %struct.reg_default { i32 18492, i32 0 }, %struct.reg_default { i32 19456, i32 8 }, %struct.reg_default { i32 19488, i32 24 }, %struct.reg_default { i32 19492, i32 25 }, %struct.reg_default { i32 19496, i32 40 }, %struct.reg_default { i32 19500, i32 41 }, %struct.reg_default { i32 19504, i32 32 }, %struct.reg_default { i32 19508, i32 0 }, %struct.reg_default { i32 19520, i32 24 }, %struct.reg_default { i32 19524, i32 25 }, %struct.reg_default { i32 19552, i32 40 }, %struct.reg_default { i32 19556, i32 41 }, %struct.reg_default { i32 19560, i32 32 }, %struct.reg_default { i32 20480, i32 27 }, %struct.reg_default { i32 20484, i32 27 }, %struct.reg_default { i32 20488, i32 27 }, %struct.reg_default { i32 20492, i32 0 }, %struct.reg_default { i32 20496, i32 1 }, %struct.reg_default { i32 24576, i32 32768 }, %struct.reg_default { i32 25604, i32 44701957 }, %struct.reg_default { i32 25608, i32 44701957 }, %struct.reg_default { i32 25612, i32 0 }, %struct.reg_default { i32 25616, i32 0 }, %struct.reg_default { i32 25620, i32 1 }, %struct.reg_default { i32 25624, i32 0 }, %struct.reg_default { i32 26624, i32 721925 }, %struct.reg_default { i32 26628, i32 273 }, %struct.reg_default { i32 26632, i32 51 }, %struct.reg_default { i32 27652, i32 627 }, %struct.reg_default { i32 28780, i32 0 }, %struct.reg_default { i32 28784, i32 0 }, %struct.reg_default { i32 29696, i32 0 }, %struct.reg_default { i32 29712, i32 2816 }, %struct.reg_default { i32 32260, i32 0 }, %struct.reg_default { i32 32264, i32 0 }, %struct.reg_default { i32 32272, i32 0 }, %struct.reg_default { i32 32276, i32 8495 }, %struct.reg_default { i32 32316, i32 0 }, %struct.reg_default { i32 13632032, i32 1 }, %struct.reg_default { i32 13632036, i32 1 }, %struct.reg_default { i32 13632040, i32 1 }, %struct.reg_default { i32 13632044, i32 1 }, %struct.reg_default { i32 13632048, i32 1 }, %struct.reg_default { i32 13632052, i32 1 }, %struct.reg_default { i32 13632056, i32 1 }, %struct.reg_default { i32 13632060, i32 1 }], [208 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VA\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VP\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,boost-ctl-millivolt\00", [37 x i8] zeroinitializer }, align 32
@cs35l36_handle_of_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 1447, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid Boost Voltage %d mV\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l36_handle_of_data\00", [41 x i8] zeroinitializer }, align 32
@cs35l36_handle_of_data._entry_ptr = internal global ptr @cs35l36_handle_of_data._entry, section ".printk_index", align 4
@cs35l36_handle_of_data._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.4, i32 1453, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Unable to find required parameter 'cirrus,boost-ctl-millivolt'\00", [33 x i8] zeroinitializer }, align 32
@cs35l36_handle_of_data._entry_ptr.64 = internal global ptr @cs35l36_handle_of_data._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cirrus,boost-ctl-select\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,boost-peak-milliamp\00", [37 x i8] zeroinitializer }, align 32
@cs35l36_handle_of_data._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.61, ptr @.str.4, i32 1465, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid Boost Peak Current %u mA\0A\00", [62 x i8] zeroinitializer }, align 32
@cs35l36_handle_of_data._entry_ptr.69 = internal global ptr @cs35l36_handle_of_data._entry.67, section ".printk_index", align 4
@cs35l36_handle_of_data._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.61, ptr @.str.4, i32 1472, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Unable to find required parameter 'cirrus,boost-peak-milliamp'\00", [33 x i8] zeroinitializer }, align 32
@cs35l36_handle_of_data._entry_ptr.72 = internal global ptr @cs35l36_handle_of_data._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cirrus,multi-amp-mode\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cirrus,dcm-mode-enable\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cirrus,amp-pcm-inv\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cirrus,imon-pol-inv\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cirrus,vmon-pol-inv\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,temp-warn-threshold\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,boost-ind-nanohenry\00", [37 x i8] zeroinitializer }, align 32
@cs35l36_handle_of_data._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.61, ptr @.str.4, i32 1497, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Inductor not specified.\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l36_handle_of_data._entry_ptr.82 = internal global ptr @cs35l36_handle_of_data._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cirrus,irq-drive-select\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cirrus,irq-gpio-select\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cirrus,vpbr-config\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cirrus,vpbr-en\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cirrus,vpbr-thld\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cirrus,vpbr-atk-rate\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cirrus,vpbr-atk-vol\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cirrus,vpbr-max-attn\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cirrus,vpbr-wait\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cirrus,vpbr-rel-rate\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cirrus,vpbr-mute-en\00", [44 x i8] zeroinitializer }, align 32
@cs35l36_pac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.4, i32 1575, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read int4_status %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs35l36_pac\00", [20 x i8] zeroinitializer }, align 32
@cs35l36_pac._entry_ptr = internal global ptr @cs35l36_pac._entry, section ".printk_index", align 4
@cs35l36_pac._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.4, i32 1588, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@cs35l36_pac._entry_ptr.97 = internal global ptr @cs35l36_pac._entry.96, section ".printk_index", align 4
@cs35l36_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 1344, ptr @.str.100, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Amp short error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs35l36_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@cs35l36_irq._entry_ptr = internal global ptr @cs35l36_irq._entry, section ".printk_index", align 4
@cs35l36_irq._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.99, ptr @.str.4, i32 1359, ptr @.str.100, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Over temperature warning\0A\00", [38 x i8] zeroinitializer }, align 32
@cs35l36_irq._entry_ptr.103 = internal global ptr @cs35l36_irq._entry.101, section ".printk_index", align 4
@cs35l36_irq._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.99, ptr @.str.4, i32 1373, ptr @.str.100, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Over temperature error\0A\00", [40 x i8] zeroinitializer }, align 32
@cs35l36_irq._entry_ptr.106 = internal global ptr @cs35l36_irq._entry.104, section ".printk_index", align 4
@cs35l36_irq._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.99, ptr @.str.4, i32 1386, ptr @.str.100, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VBST Over Voltage error\0A\00", [39 x i8] zeroinitializer }, align 32
@cs35l36_irq._entry_ptr.109 = internal global ptr @cs35l36_irq._entry.107, section ".printk_index", align 4
@cs35l36_irq._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.99, ptr @.str.4, i32 1399, ptr @.str.100, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DCM VBST Under Voltage Error\0A\00", [34 x i8] zeroinitializer }, align 32
@cs35l36_irq._entry_ptr.112 = internal global ptr @cs35l36_irq._entry.110, section ".printk_index", align 4
@cs35l36_irq._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.99, ptr @.str.4, i32 1414, ptr @.str.100, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LBST SHORT error!\0A\00", [45 x i8] zeroinitializer }, align 32
@cs35l36_irq._entry_ptr.115 = internal global ptr @cs35l36_irq._entry.113, section ".printk_index", align 4
@cs35l36_aud_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_sx, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, %union.anon.98 { ptr @dig_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @amp_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @pcm_sft_ramp to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @cs35l36_ldm_sel_get, ptr @cs35l36_ldm_sel_put, %union.anon.98 zeroinitializer, i32 0 }], [80 x i8] zeroinitializer }, align 32
@cs35l36_audio_map = internal constant { [49 x %struct.snd_soc_dapm_route], [620 x i8] } { [49 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.175, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.174, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.178, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.177, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.175, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.174, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.178, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.177, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.175, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.174, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.178, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.177, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.175, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.174, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.178, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.177, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.175, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.174, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.178, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.177, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr @.str.175, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr @.str.174, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr @.str.178, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr @.str.177, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.168, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.162, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.163, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.168, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }], [620 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Digital PCM Volume\00", [45 x i8] zeroinitializer }, align 32
@dig_vol_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10200, i32 25], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 1232, i32 912, i32 0, i32 24576, i32 24576, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Analog PCM Volume\00", [46 x i8] zeroinitializer }, align 32
@amp_gain_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 65537], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 19, i32 19, i32 27652, i32 27652, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM Soft Ramp\00", [18 x i8] zeroinitializer }, align 32
@pcm_sft_ramp = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24576, i8 0, i8 0, i32 8, i32 7, ptr @cs35l36_pcm_sftramp_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Amp Gain Zero-Cross Switch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27652, i32 27652, i32 10, i32 10, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PDM LDM Enter Ramp Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29696, i32 29696, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PDM LDM Exit Ramp Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29696, i32 29696, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LDM Select Switch\00", [46 x i8] zeroinitializer }, align 32
@cs35l36_pcm_sftramp_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134], [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".5ms\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1ms\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2ms\00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4ms\00", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8ms\00", [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"15ms\00", [27 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"30ms\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Channel Mux\00", [20 x i8] zeroinitializer }, align 32
@cs35l36_chan_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @chansel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDIN\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Main AMP\00", [23 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPK\00", [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMP Enable\00", [21 x i8] zeroinitializer }, align 32
@amp_enable_ctrl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLASS H\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BOOST Enable\00", [19 x i8] zeroinitializer }, align 32
@boost_ctrl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPTX1\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPTX2\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPTX3\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPTX4\00", [25 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPTX5\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPTX6\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASPTX1SRC\00", [22 x i8] zeroinitializer }, align 32
@asp_tx1_src = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @asp_tx1_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASPTX2SRC\00", [22 x i8] zeroinitializer }, align 32
@asp_tx2_src = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @asp_tx2_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASPTX3SRC\00", [22 x i8] zeroinitializer }, align 32
@asp_tx3_src = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @asp_tx3_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASPTX4SRC\00", [22 x i8] zeroinitializer }, align 32
@asp_tx4_src = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @asp_tx4_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASPTX5SRC\00", [22 x i8] zeroinitializer }, align 32
@asp_tx5_src = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @asp_tx5_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASPTX6SRC\00", [22 x i8] zeroinitializer }, align 32
@asp_tx6_src = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @asp_tx6_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VMON ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IMON ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VPMON ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VBSTMON ADC\00", [20 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBST\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VSENSE\00", [25 x i8] zeroinitializer }, align 32
@cs35l36_dapm_widgets = internal constant { [26 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1176 x i8] } { [26 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cs35l36_chan_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18492, i8 16, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8216, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 14, ptr @cs35l36_main_amp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @amp_enable_ctrl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8220, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @cs35l36_boost_event, i32 1, ptr @boost_ctrl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18492, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18492, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18492, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 2 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18492, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 3 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18492, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 4 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18492, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 5 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @asp_tx1_src, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @asp_tx2_src, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @asp_tx3_src, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @asp_tx4_src, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @asp_tx5_src, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @asp_tx6_src, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8216, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8216, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8216, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8216, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1176 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Input Mux\00", [22 x i8] zeroinitializer }, align 32
@chansel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18476, i8 0, i8 0, i32 2, i32 1, ptr @cs35l36_chan_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cs35l36_chan_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.162, ptr @.str.163], [24 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX1\00", [28 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX2\00", [28 x i8] zeroinitializer }, align 32
@cs35l36_main_amp_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cs35l36_main_amp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.4, i32 523, ptr @.str.100, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL Unlocked\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l36_main_amp_event\00", [41 x i8] zeroinitializer }, align 32
@cs35l36_main_amp_event._entry_ptr = internal global ptr @cs35l36_main_amp_event._entry, section ".printk_index", align 4
@cs35l36_main_amp_event.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.166, ptr @.str.165, ptr @.str.4, ptr @.str.167, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_cs35l36\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid event = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8228, i32 8228, i32 4, i32 4, i32 0, i8 -64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@cs35l36_boost_event.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.166, ptr @.str.170, ptr @.str.4, ptr @.str.167, i8 0, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs35l36_boost_event\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@asp_tx1_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19488, i8 0, i8 0, i32 7, i32 127, ptr @asp_tx_src_text, ptr @asp_tx_src_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@asp_tx_src_text = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178], [36 x i8] zeroinitializer }, align 32
@asp_tx_src_values = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 8, i32 24, i32 25, i32 32, i32 40, i32 41], [36 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Zero Fill\00", [22 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASPRX1\00", [25 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VMON\00", [27 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IMON\00", [27 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ERRVOL\00", [25 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VPMON\00", [26 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VBSTMON\00", [24 x i8] zeroinitializer }, align 32
@asp_tx2_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19492, i8 0, i8 0, i32 7, i32 127, ptr @asp_tx_src_text, ptr @asp_tx_src_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@asp_tx3_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19496, i8 0, i8 0, i32 7, i32 127, ptr @asp_tx_src_text, ptr @asp_tx_src_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@asp_tx4_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19500, i8 0, i8 0, i32 7, i32 127, ptr @asp_tx_src_text, ptr @asp_tx_src_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@asp_tx5_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19504, i8 0, i8 0, i32 7, i32 127, ptr @asp_tx_src_text, ptr @asp_tx_src_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@asp_tx6_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19508, i8 0, i8 0, i32 7, i32 127, ptr @asp_tx_src_text, ptr @asp_tx_src_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AMP Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AMP Playback\00", [19 x i8] zeroinitializer }, align 32
@cs35l36_component_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.4, i32 1221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Boost inductor config failed(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cs35l36_component_probe\00", [40 x i8] zeroinitializer }, align 32
@cs35l36_component_probe._entry_ptr = internal global ptr @cs35l36_component_probe._entry, section ".printk_index", align 4
@cs35l36_boost_inductor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.4, i32 1148, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s Invalid Inductor Value %d uH\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs35l36_boost_inductor\00", [41 x i8] zeroinitializer }, align 32
@cs35l36_boost_inductor._entry_ptr = internal global ptr @cs35l36_boost_inductor._entry, section ".printk_index", align 4
@cs35l36_component_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.4, i32 1036, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid CLK Config Freq: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cs35l36_component_set_sysclk\00", [35 x i8] zeroinitializer }, align 32
@cs35l36_component_set_sysclk._entry_ptr = internal global ptr @cs35l36_component_set_sysclk._entry, section ".printk_index", align 4
@cs35l36_pll_sysclk = internal constant { [64 x %struct.cs35l36_pll_config], [192 x i8] } { [64 x %struct.cs35l36_pll_config] [%struct.cs35l36_pll_config { i32 32768, i32 0, i32 5 }, %struct.cs35l36_pll_config { i32 8000, i32 1, i32 3 }, %struct.cs35l36_pll_config { i32 11025, i32 2, i32 3 }, %struct.cs35l36_pll_config { i32 12000, i32 3, i32 3 }, %struct.cs35l36_pll_config { i32 16000, i32 4, i32 4 }, %struct.cs35l36_pll_config { i32 22050, i32 5, i32 4 }, %struct.cs35l36_pll_config { i32 24000, i32 6, i32 4 }, %struct.cs35l36_pll_config { i32 32000, i32 7, i32 5 }, %struct.cs35l36_pll_config { i32 44100, i32 8, i32 5 }, %struct.cs35l36_pll_config { i32 48000, i32 9, i32 5 }, %struct.cs35l36_pll_config { i32 88200, i32 10, i32 6 }, %struct.cs35l36_pll_config { i32 96000, i32 11, i32 6 }, %struct.cs35l36_pll_config { i32 128000, i32 12, i32 7 }, %struct.cs35l36_pll_config { i32 176400, i32 13, i32 7 }, %struct.cs35l36_pll_config { i32 192000, i32 14, i32 7 }, %struct.cs35l36_pll_config { i32 256000, i32 15, i32 8 }, %struct.cs35l36_pll_config { i32 352800, i32 16, i32 8 }, %struct.cs35l36_pll_config { i32 384000, i32 17, i32 8 }, %struct.cs35l36_pll_config { i32 512000, i32 18, i32 9 }, %struct.cs35l36_pll_config { i32 705600, i32 19, i32 9 }, %struct.cs35l36_pll_config { i32 750000, i32 20, i32 9 }, %struct.cs35l36_pll_config { i32 768000, i32 21, i32 9 }, %struct.cs35l36_pll_config { i32 1000000, i32 22, i32 10 }, %struct.cs35l36_pll_config { i32 1024000, i32 23, i32 10 }, %struct.cs35l36_pll_config { i32 1200000, i32 24, i32 10 }, %struct.cs35l36_pll_config { i32 1411200, i32 25, i32 10 }, %struct.cs35l36_pll_config { i32 1500000, i32 26, i32 10 }, %struct.cs35l36_pll_config { i32 1536000, i32 27, i32 10 }, %struct.cs35l36_pll_config { i32 2000000, i32 28, i32 10 }, %struct.cs35l36_pll_config { i32 2048000, i32 29, i32 10 }, %struct.cs35l36_pll_config { i32 2400000, i32 30, i32 10 }, %struct.cs35l36_pll_config { i32 2822400, i32 31, i32 10 }, %struct.cs35l36_pll_config { i32 3000000, i32 32, i32 10 }, %struct.cs35l36_pll_config { i32 3072000, i32 33, i32 10 }, %struct.cs35l36_pll_config { i32 3200000, i32 34, i32 10 }, %struct.cs35l36_pll_config { i32 4000000, i32 35, i32 10 }, %struct.cs35l36_pll_config { i32 4096000, i32 36, i32 10 }, %struct.cs35l36_pll_config { i32 4800000, i32 37, i32 10 }, %struct.cs35l36_pll_config { i32 5644800, i32 38, i32 10 }, %struct.cs35l36_pll_config { i32 6000000, i32 39, i32 10 }, %struct.cs35l36_pll_config { i32 6144000, i32 40, i32 10 }, %struct.cs35l36_pll_config { i32 6250000, i32 41, i32 8 }, %struct.cs35l36_pll_config { i32 6400000, i32 42, i32 10 }, %struct.cs35l36_pll_config { i32 6500000, i32 43, i32 8 }, %struct.cs35l36_pll_config { i32 6750000, i32 44, i32 9 }, %struct.cs35l36_pll_config { i32 7526400, i32 45, i32 10 }, %struct.cs35l36_pll_config { i32 8000000, i32 46, i32 10 }, %struct.cs35l36_pll_config { i32 8192000, i32 47, i32 10 }, %struct.cs35l36_pll_config { i32 9600000, i32 48, i32 10 }, %struct.cs35l36_pll_config { i32 11289600, i32 49, i32 10 }, %struct.cs35l36_pll_config { i32 12000000, i32 50, i32 10 }, %struct.cs35l36_pll_config { i32 12288000, i32 51, i32 10 }, %struct.cs35l36_pll_config { i32 12500000, i32 52, i32 8 }, %struct.cs35l36_pll_config { i32 12800000, i32 53, i32 10 }, %struct.cs35l36_pll_config { i32 13000000, i32 54, i32 10 }, %struct.cs35l36_pll_config { i32 13500000, i32 55, i32 10 }, %struct.cs35l36_pll_config { i32 19200000, i32 56, i32 10 }, %struct.cs35l36_pll_config { i32 22579200, i32 57, i32 10 }, %struct.cs35l36_pll_config { i32 24000000, i32 58, i32 10 }, %struct.cs35l36_pll_config { i32 24576000, i32 59, i32 10 }, %struct.cs35l36_pll_config { i32 25000000, i32 60, i32 10 }, %struct.cs35l36_pll_config { i32 25600000, i32 61, i32 10 }, %struct.cs35l36_pll_config { i32 26000000, i32 62, i32 10 }, %struct.cs35l36_pll_config { i32 27000000, i32 63, i32 10 }], [192 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs35l36-pcm\00", [20 x i8] zeroinitializer }, align 32
@cs35l36_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cs35l36_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @cs35l36_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs35l36_pcm_startup, ptr null, ptr @cs35l36_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@cs35l36_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @cs35l36_src_rates, i32 14, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cs35l36_src_rates = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8000, i32 12000, i32 11025, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000, i32 384000], [40 x i8] zeroinitializer }, align 32
@cs35l36_fs_rates = internal constant { [14 x %struct.cs35l36_global_fs_config], [48 x i8] } { [14 x %struct.cs35l36_global_fs_config] [%struct.cs35l36_global_fs_config { i32 12000, i32 1 }, %struct.cs35l36_global_fs_config { i32 24000, i32 2 }, %struct.cs35l36_global_fs_config { i32 48000, i32 3 }, %struct.cs35l36_global_fs_config { i32 96000, i32 4 }, %struct.cs35l36_global_fs_config { i32 192000, i32 5 }, %struct.cs35l36_global_fs_config { i32 384000, i32 6 }, %struct.cs35l36_global_fs_config { i32 11025, i32 9 }, %struct.cs35l36_global_fs_config { i32 22050, i32 10 }, %struct.cs35l36_global_fs_config { i32 44100, i32 11 }, %struct.cs35l36_global_fs_config { i32 88200, i32 12 }, %struct.cs35l36_global_fs_config { i32 176400, i32 13 }, %struct.cs35l36_global_fs_config { i32 8000, i32 17 }, %struct.cs35l36_global_fs_config { i32 16000, i32 18 }, %struct.cs35l36_global_fs_config { i32 32000, i32 19 }], [48 x i8] zeroinitializer }, align 32
@switch.table.cs35l36_i2c_probe = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.cs35l36_component_set_sysclk = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 4, i32 3, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.cs35l36_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 4, i32 0, i32 4], [44 x i8] zeroinitializer }, align 32
@switch.table.cs35l36_set_dai_fmt.188 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 0, i32 256, i32 256], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 160, i64 176]
@__sancov_gen_cov_switch_values.189 = internal global [139 x i64] [i64 137, i64 32, i64 0, i64 4, i64 8, i64 32, i64 36, i64 1144, i64 1280, i64 1284, i64 1288, i64 1292, i64 1296, i64 3072, i64 3076, i64 3080, i64 8196, i64 8200, i64 8204, i64 8212, i64 8216, i64 8220, i64 8224, i64 8228, i64 8232, i64 8236, i64 8244, i64 9216, i64 11268, i64 11276, i64 11280, i64 11284, i64 11520, i64 11536, i64 13316, i64 13320, i64 13324, i64 13328, i64 13340, i64 13344, i64 13348, i64 14336, i64 14340, i64 14344, i64 14348, i64 14352, i64 14356, i64 14360, i64 14364, i64 14368, i64 14384, i64 14652, i64 14668, i64 15364, i64 15368, i64 15372, i64 15376, i64 15380, i64 15384, i64 16388, i64 16392, i64 16640, i64 16928, i64 17152, i64 17408, i64 17472, i64 17476, i64 18432, i64 18436, i64 18440, i64 18456, i64 18460, i64 18464, i64 18468, i64 18472, i64 18476, i64 18492, i64 19456, i64 19488, i64 19492, i64 19496, i64 19500, i64 19504, i64 19508, i64 19520, i64 19524, i64 19552, i64 19556, i64 19560, i64 20480, i64 20484, i64 20488, i64 20492, i64 20496, i64 24576, i64 25604, i64 25608, i64 25612, i64 25616, i64 25620, i64 25624, i64 26624, i64 26628, i64 26632, i64 27652, i64 28780, i64 28784, i64 29696, i64 29712, i64 32260, i64 32264, i64 32272, i64 32276, i64 32316, i64 13631488, i64 13631492, i64 13631496, i64 13631500, i64 13631520, i64 13631524, i64 13631528, i64 13631532, i64 13631552, i64 13631556, i64 13631560, i64 13631564, i64 13631584, i64 13631592, i64 13632000, i64 13632016, i64 13632024, i64 13632032, i64 13632036, i64 13632040, i64 13632044, i64 13632048, i64 13632052, i64 13632056, i64 13632060]
@__sancov_gen_cov_switch_values.190 = internal global [27 x i64] [i64 25, i64 32, i64 0, i64 4, i64 8, i64 32, i64 36, i64 8196, i64 8200, i64 8204, i64 13631488, i64 13631492, i64 13631496, i64 13631500, i64 13631520, i64 13631524, i64 13631528, i64 13631532, i64 13631552, i64 13631556, i64 13631560, i64 13631564, i64 13631584, i64 13631592, i64 13632000, i64 13632016, i64 13632024]
@__sancov_gen_cov_switch_values.191 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 36, i64 11536]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 32, i64 1000, i64 1200]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 16]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.198 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"cs35l36_i2c_driver\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1944, i32 26 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1946, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"cs35l36_of_match\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1931, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant [11 x i8] c"cs35l36_id\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1937, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [15 x i8] c"cs35l36_regmap\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1305, i32 29 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1720, i32 20 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1723, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1734, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1758, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1763, i32 53 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1769, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1771, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1784, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1789, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1797, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1805, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [27 x i8] c"cs35l36_reva0_errata_patch\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1648, i32 34 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1821, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1829, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant [27 x i8] c"cs35l36_revb0_errata_patch\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1684, i32 34 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1837, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1849, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1866, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1879, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1892, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [26 x i8] c"soc_component_dev_cs35l36\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1290, i32 46 }
@___asan_gen_.343 = private unnamed_addr constant [12 x i8] c"cs35l36_dai\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 979, i32 34 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1899, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant [12 x i8] c"cs35l36_reg\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 134, i32 27 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 44, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 45, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1443, i32 33 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1446, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1452, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1457, i32 33 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1461, i32 33 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1464, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1471, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1477, i32 6 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1480, i32 6 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1483, i32 6 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1486, i32 6 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1489, i32 6 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1491, i32 31 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1494, i32 31 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1497, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1501, i32 31 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1504, i32 31 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1508, i32 39 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1511, i32 39 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1514, i32 39 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1517, i32 39 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1520, i32 39 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1523, i32 39 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1526, i32 39 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1529, i32 39 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1532, i32 39 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1575, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1587, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1344, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1359, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1373, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1386, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1399, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1414, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant [21 x i8] c"cs35l36_aud_controls\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 487, i32 38 }
@___asan_gen_.514 = private unnamed_addr constant [18 x i8] c"cs35l36_audio_map\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 693, i32 40 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 488, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant [12 x i8] c"dig_vol_tlv\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 447, i32 8 }
@___asan_gen_.523 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 490, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant [13 x i8] c"amp_gain_tlv\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 448, i32 8 }
@___asan_gen_.530 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 492, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [13 x i8] c"pcm_sft_ramp\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 453, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 493, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 495, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 497, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 499, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [25 x i8] c"cs35l36_pcm_sftramp_text\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 450, i32 27 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 451, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 451, i32 9 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 451, i32 17 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 451, i32 24 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 451, i32 31 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 451, i32 38 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 451, i32 45 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 451, i32 53 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 655, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant [17 x i8] c"cs35l36_chan_mux\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 594, i32 38 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 656, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 658, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 662, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 663, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant [16 x i8] c"amp_enable_ctrl\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 597, i32 38 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 664, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 665, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant [11 x i8] c"boost_ctrl\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 601, i32 38 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 669, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 670, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 671, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 672, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 673, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 674, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 676, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant [12 x i8] c"asp_tx1_src\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 616, i32 38 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 677, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant [12 x i8] c"asp_tx2_src\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 623, i32 38 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 678, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant [12 x i8] c"asp_tx3_src\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 630, i32 38 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 679, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant [12 x i8] c"asp_tx4_src\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 637, i32 38 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 680, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant [12 x i8] c"asp_tx5_src\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 644, i32 38 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 681, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant [12 x i8] c"asp_tx6_src\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 651, i32 38 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 683, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 684, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 685, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 686, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 689, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 690, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant [21 x i8] c"cs35l36_dapm_widgets\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 654, i32 41 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 595, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant [13 x i8] c"chansel_enum\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 591, i32 8 }
@___asan_gen_.690 = private unnamed_addr constant [18 x i8] c"cs35l36_chan_text\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 586, i32 27 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 587, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 588, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 523, i32 4 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 548, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 598, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 579, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.722 = private unnamed_addr constant [17 x i8] c"asp_tx1_src_enum\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 612, i32 8 }
@___asan_gen_.725 = private unnamed_addr constant [16 x i8] c"asp_tx_src_text\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 604, i32 27 }
@___asan_gen_.728 = private unnamed_addr constant [18 x i8] c"asp_tx_src_values\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 608, i32 27 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 605, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 605, i32 15 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 605, i32 25 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 605, i32 33 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 605, i32 41 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 605, i32 51 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 605, i32 60 }
@___asan_gen_.752 = private unnamed_addr constant [17 x i8] c"asp_tx2_src_enum\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 619, i32 8 }
@___asan_gen_.755 = private unnamed_addr constant [17 x i8] c"asp_tx3_src_enum\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 626, i32 8 }
@___asan_gen_.758 = private unnamed_addr constant [17 x i8] c"asp_tx4_src_enum\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 633, i32 8 }
@___asan_gen_.761 = private unnamed_addr constant [17 x i8] c"asp_tx5_src_enum\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 640, i32 8 }
@___asan_gen_.764 = private unnamed_addr constant [17 x i8] c"asp_tx6_src_enum\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 647, i32 8 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 736, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 743, i32 27 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1220, i32 4 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1147, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 1036, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant [19 x i8] c"cs35l36_pll_sysclk\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 67, i32 40 }
@___asan_gen_.803 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 981, i32 11 }
@___asan_gen_.806 = private unnamed_addr constant [12 x i8] c"cs35l36_ops\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 972, i32 37 }
@___asan_gen_.809 = private unnamed_addr constant [20 x i8] c"cs35l36_constraints\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 958, i32 48 }
@___asan_gen_.812 = private unnamed_addr constant [18 x i8] c"cs35l36_src_rates\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 953, i32 27 }
@___asan_gen_.815 = private unnamed_addr constant [17 x i8] c"cs35l36_fs_rates\00", align 1
@___asan_gen_.816 = private constant [30 x i8] c"../sound/soc/codecs/cs35l36.c\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.816, i32 846, i32 46 }
@___asan_gen_.818 = private unnamed_addr constant [31 x i8] c"switch.table.cs35l36_i2c_probe\00", align 1
@___asan_gen_.819 = private unnamed_addr constant [42 x i8] c"switch.table.cs35l36_component_set_sysclk\00", align 1
@___asan_gen_.820 = private unnamed_addr constant [33 x i8] c"switch.table.cs35l36_set_dai_fmt\00", align 1
@___asan_gen_.821 = private unnamed_addr constant [37 x i8] c"switch.table.cs35l36_set_dai_fmt.188\00", align 1
@llvm.compiler.used = appending global [256 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_cs35l36_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_cs35l36__296_1953_cs35l36_i2c_driver_init6, ptr @cs35l36_boost_inductor._entry, ptr @cs35l36_boost_inductor._entry_ptr, ptr @cs35l36_component_probe._entry, ptr @cs35l36_component_probe._entry_ptr, ptr @cs35l36_component_set_sysclk._entry, ptr @cs35l36_component_set_sysclk._entry_ptr, ptr @cs35l36_handle_of_data._entry, ptr @cs35l36_handle_of_data._entry.62, ptr @cs35l36_handle_of_data._entry.67, ptr @cs35l36_handle_of_data._entry.70, ptr @cs35l36_handle_of_data._entry.80, ptr @cs35l36_handle_of_data._entry_ptr, ptr @cs35l36_handle_of_data._entry_ptr.64, ptr @cs35l36_handle_of_data._entry_ptr.69, ptr @cs35l36_handle_of_data._entry_ptr.72, ptr @cs35l36_handle_of_data._entry_ptr.82, ptr @cs35l36_i2c_driver_exit, ptr @cs35l36_i2c_probe._entry, ptr @cs35l36_i2c_probe._entry.10, ptr @cs35l36_i2c_probe._entry.14, ptr @cs35l36_i2c_probe._entry.18, ptr @cs35l36_i2c_probe._entry.21, ptr @cs35l36_i2c_probe._entry.24, ptr @cs35l36_i2c_probe._entry.27, ptr @cs35l36_i2c_probe._entry.30, ptr @cs35l36_i2c_probe._entry.33, ptr @cs35l36_i2c_probe._entry.36, ptr @cs35l36_i2c_probe._entry.39, ptr @cs35l36_i2c_probe._entry.42, ptr @cs35l36_i2c_probe._entry.45, ptr @cs35l36_i2c_probe._entry.48, ptr @cs35l36_i2c_probe._entry.51, ptr @cs35l36_i2c_probe._entry.54, ptr @cs35l36_i2c_probe._entry.7, ptr @cs35l36_i2c_probe._entry_ptr, ptr @cs35l36_i2c_probe._entry_ptr.12, ptr @cs35l36_i2c_probe._entry_ptr.17, ptr @cs35l36_i2c_probe._entry_ptr.20, ptr @cs35l36_i2c_probe._entry_ptr.23, ptr @cs35l36_i2c_probe._entry_ptr.26, ptr @cs35l36_i2c_probe._entry_ptr.29, ptr @cs35l36_i2c_probe._entry_ptr.32, ptr @cs35l36_i2c_probe._entry_ptr.35, ptr @cs35l36_i2c_probe._entry_ptr.38, ptr @cs35l36_i2c_probe._entry_ptr.41, ptr @cs35l36_i2c_probe._entry_ptr.44, ptr @cs35l36_i2c_probe._entry_ptr.47, ptr @cs35l36_i2c_probe._entry_ptr.50, ptr @cs35l36_i2c_probe._entry_ptr.53, ptr @cs35l36_i2c_probe._entry_ptr.56, ptr @cs35l36_i2c_probe._entry_ptr.9, ptr @cs35l36_irq._entry, ptr @cs35l36_irq._entry.101, ptr @cs35l36_irq._entry.104, ptr @cs35l36_irq._entry.107, ptr @cs35l36_irq._entry.110, ptr @cs35l36_irq._entry.113, ptr @cs35l36_irq._entry_ptr, ptr @cs35l36_irq._entry_ptr.103, ptr @cs35l36_irq._entry_ptr.106, ptr @cs35l36_irq._entry_ptr.109, ptr @cs35l36_irq._entry_ptr.112, ptr @cs35l36_irq._entry_ptr.115, ptr @cs35l36_main_amp_event._entry, ptr @cs35l36_main_amp_event._entry_ptr, ptr @cs35l36_pac._entry, ptr @cs35l36_pac._entry.96, ptr @cs35l36_pac._entry_ptr, ptr @cs35l36_pac._entry_ptr.97, ptr @cs35l36_i2c_driver, ptr @.str, ptr @cs35l36_of_match, ptr @cs35l36_id, ptr @cs35l36_i2c_probe._key, ptr @cs35l36_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @cs35l36_reva0_errata_patch, ptr @.str.34, ptr @.str.37, ptr @cs35l36_revb0_errata_patch, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @soc_component_dev_cs35l36, ptr @cs35l36_dai, ptr @.str.55, ptr @cs35l36_reg, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @cs35l36_aud_controls, ptr @cs35l36_audio_map, ptr @.str.116, ptr @dig_vol_tlv, ptr @.compoundliteral, ptr @.str.117, ptr @amp_gain_tlv, ptr @.compoundliteral.118, ptr @.str.119, ptr @pcm_sft_ramp, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @cs35l36_pcm_sftramp_text, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @cs35l36_chan_mux, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @amp_enable_ctrl, ptr @.str.140, ptr @.str.141, ptr @boost_ctrl, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @asp_tx1_src, ptr @.str.149, ptr @asp_tx2_src, ptr @.str.150, ptr @asp_tx3_src, ptr @.str.151, ptr @asp_tx4_src, ptr @.str.152, ptr @asp_tx5_src, ptr @.str.153, ptr @asp_tx6_src, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @cs35l36_dapm_widgets, ptr @.str.161, ptr @chansel_enum, ptr @cs35l36_chan_text, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.compoundliteral.169, ptr @.str.170, ptr @.compoundliteral.171, ptr @asp_tx1_src_enum, ptr @asp_tx_src_text, ptr @asp_tx_src_values, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @asp_tx2_src_enum, ptr @asp_tx3_src_enum, ptr @asp_tx4_src_enum, ptr @asp_tx5_src_enum, ptr @asp_tx6_src_enum, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @cs35l36_pll_sysclk, ptr @.str.187, ptr @cs35l36_ops, ptr @cs35l36_constraints, ptr @cs35l36_src_rates, ptr @cs35l36_fs_rates, ptr @switch.table.cs35l36_i2c_probe, ptr @switch.table.cs35l36_component_set_sysclk, ptr @switch.table.cs35l36_set_dai_fmt, ptr @switch.table.cs35l36_set_dai_fmt.188], section "llvm.metadata"
@0 = internal global [215 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_reva0_errata_patch to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_revb0_errata_patch to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_cs35l36 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_i2c_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_reg to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_handle_of_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_handle_of_data._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_handle_of_data._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_handle_of_data._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_handle_of_data._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_pac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_pac._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_irq._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_irq._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_irq._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_irq._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_irq._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_aud_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_audio_map to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dig_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_sft_ramp to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_pcm_sftramp_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_chan_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp_enable_ctrl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_ctrl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx1_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx2_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx3_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx4_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx5_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx6_src to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_dapm_widgets to i32), i32 4680, i32 5856, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chansel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_chan_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_main_amp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx1_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx_src_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx_src_values to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx2_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx3_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx4_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx5_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_tx6_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_component_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_boost_inductor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_component_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_pll_sysclk to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_src_rates to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs35l36_fs_rates to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs35l36_i2c_probe to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs35l36_component_set_sysclk to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs35l36_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs35l36_set_dai_fmt.188 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cs35l36_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs35l36_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @cs35l36_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_i2c_probe(ptr noundef %i2c_client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %reg_id = alloca i32, align 4
  %reg_revid = alloca i32, align 4
  %l37_id_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_id) #8
  %2 = ptrtoint ptr %reg_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_id, align 4, !annotation !419
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_revid) #8
  %3 = ptrtoint ptr %reg_revid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg_revid, align 4, !annotation !419
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l37_id_reg) #8
  %4 = ptrtoint ptr %l37_id_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %l37_id_reg, align 4, !annotation !419
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c_client, ptr noundef nonnull @cs35l36_regmap, ptr noundef nonnull @cs35l36_i2c_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %8) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %num_supplies = getelementptr inbounds %struct.cs35l36_private, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %num_supplies to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %num_supplies, align 4
  %arrayidx11 = getelementptr %struct.cs35l36_private, ptr %call.i, i32 0, i32 3, i32 0
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.57, ptr %arrayidx11, align 4
  %arrayidx11.1 = getelementptr %struct.cs35l36_private, ptr %call.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.58, ptr %arrayidx11.1, align 4
  %call14 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %arrayidx11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call14) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %tobool21.not = icmp eq ptr %1, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %pdata23 = getelementptr inbounds %struct.cs35l36_private, ptr %call.i, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %pdata23, ptr %1, i32 72)
  br label %if.end37

if.else:                                          ; preds = %if.end20
  %call.i308 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 72, i32 noundef 3520) #8
  %tobool25.not = icmp eq ptr %call.i308, null
  br i1 %tobool25.not, label %if.else.cleanup_crit_edge, label %if.end27

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.else
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %tobool29.not = icmp eq ptr %14, null
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %if.end.i

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end.i:                                         ; preds = %if.end27
  %vpbr_config1.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val.i, align 4, !annotation !419
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.59, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool2.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool2.not.i, label %if.then3.i, label %do.end10.i

if.then3.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %18 = add i32 %17, -12001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9451, i32 %18)
  %19 = icmp ult i32 %18, -9451
  br i1 %19, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60, i32 noundef %17) #11
  br label %cs35l36_handle_of_data.exit.thread

if.end7.i:                                        ; preds = %if.then3.i
  %20 = trunc i32 %17 to i16
  %div.lhs.trunc.i = add nsw i16 %20, -2550
  %div191.i = udiv i16 %div.lhs.trunc.i, 100
  %21 = shl nuw nsw i16 %div191.i, 1
  %narrow.i = add nuw nsw i16 %21, 2
  %shl.i = zext i16 %narrow.i to i32
  %bst_vctl.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 6
  %22 = ptrtoint ptr %bst_vctl.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl.i, ptr %bst_vctl.i, align 4
  %call.i.i169.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.65, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i169.i)
  %tobool14.not.i = icmp sgt i32 %call.i.i169.i, -1
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end7.i.if.end16.i_crit_edge

if.end7.i.if.end16.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.63) #11
  br label %cs35l36_handle_of_data.exit.thread

if.then15.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  %or.i = or i32 %24, -2147483648
  %bst_vctl_sel.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 7
  %25 = ptrtoint ptr %bst_vctl_sel.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i, ptr %bst_vctl_sel.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %if.end7.i.if.end16.i_crit_edge
  %call.i.i170.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.66, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i170.i)
  %tobool18.not.i = icmp sgt i32 %call.i.i170.i, -1
  br i1 %tobool18.not.i, label %if.then19.i, label %do.end34.i

if.then19.i:                                      ; preds = %if.end16.i
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  %28 = add i32 %27, -4501
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2901, i32 %28)
  %29 = icmp ult i32 %28, -2901
  br i1 %29, label %do.end26.i, label %if.end28.i

do.end26.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.68, i32 noundef %27) #11
  br label %cs35l36_handle_of_data.exit.thread

if.end28.i:                                       ; preds = %if.then19.i
  %30 = trunc i32 %27 to i16
  %div30.lhs.trunc.i = add nsw i16 %30, -1600
  %div30192.i = udiv i16 %div30.lhs.trunc.i, 50
  %div30.zext.i = zext i16 %div30192.i to i32
  %bst_ipk.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 8
  %31 = ptrtoint ptr %bst_ipk.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div30.zext.i, ptr %bst_ipk.i, align 4
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.73, ptr noundef null) #8
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %frombool.i = zext i1 %tobool.i.i to i8
  %32 = ptrtoint ptr %call.i308 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool.i, ptr %call.i308, align 4
  %call.i171.i = call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.74, ptr noundef null) #8
  %tobool.i172.i = icmp ne ptr %call.i171.i, null
  %dcm_mode.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 1
  %frombool39.i = zext i1 %tobool.i172.i to i8
  %33 = ptrtoint ptr %dcm_mode.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool39.i, ptr %dcm_mode.i, align 1
  %call.i173.i = call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.75, ptr noundef null) #8
  %tobool.i174.i = icmp ne ptr %call.i173.i, null
  %amp_pcm_inv.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 2
  %frombool41.i = zext i1 %tobool.i174.i to i8
  %34 = ptrtoint ptr %amp_pcm_inv.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool41.i, ptr %amp_pcm_inv.i, align 2
  %call.i175.i = call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.76, ptr noundef null) #8
  %tobool.i176.i = icmp ne ptr %call.i175.i, null
  %imon_pol_inv.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 3
  %frombool43.i = zext i1 %tobool.i176.i to i8
  %35 = ptrtoint ptr %imon_pol_inv.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool43.i, ptr %imon_pol_inv.i, align 1
  %call.i177.i = call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.77, ptr noundef null) #8
  %tobool.i178.i = icmp ne ptr %call.i177.i, null
  %vmon_pol_inv.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 4
  %frombool45.i = zext i1 %tobool.i178.i to i8
  %36 = ptrtoint ptr %vmon_pol_inv.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool45.i, ptr %vmon_pol_inv.i, align 4
  %call.i.i179.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.78, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %37 = call i32 @llvm.smin.i32(i32 %call.i.i179.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp47.i = icmp sgt i32 %37, -1
  br i1 %cmp47.i, label %if.then48.i, label %if.end28.i.if.end50.i_crit_edge

if.end28.i.if.end50.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

do.end34.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.71) #11
  br label %cs35l36_handle_of_data.exit.thread

if.then48.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i, align 4
  %or49.i = or i32 %39, -2147483648
  %temp_warn_thld.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 10
  %40 = ptrtoint ptr %temp_warn_thld.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or49.i, ptr %temp_warn_thld.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.i, %if.end28.i.if.end50.i_crit_edge
  %call.i.i180.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.79, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %41 = call i32 @llvm.smin.i32(i32 %call.i.i180.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp52.i = icmp sgt i32 %41, -1
  br i1 %cmp52.i, label %if.then53.i, label %do.end57.i

if.then53.i:                                      ; preds = %if.end50.i
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i, align 4
  %boost_ind.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 5
  %44 = ptrtoint ptr %boost_ind.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %boost_ind.i, align 4
  %call.i.i181.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.83, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %45 = call i32 @llvm.smin.i32(i32 %call.i.i181.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp61.i = icmp sgt i32 %45, -1
  br i1 %cmp61.i, label %if.then62.i, label %if.then53.i.if.end64.i_crit_edge

if.then53.i.if.end64.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

do.end57.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.81) #11
  br label %cs35l36_handle_of_data.exit.thread

if.then62.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i, align 4
  %or63.i = or i32 %47, -2147483648
  %irq_drv_sel.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 11
  %48 = ptrtoint ptr %irq_drv_sel.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or63.i, ptr %irq_drv_sel.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then62.i, %if.then53.i.if.end64.i_crit_edge
  %call.i.i182.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.84, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %49 = call i32 @llvm.smin.i32(i32 %call.i.i182.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp66.i = icmp sgt i32 %49, -1
  br i1 %cmp66.i, label %if.then67.i, label %if.end64.i.if.end69.i_crit_edge

if.end64.i.if.end69.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.then67.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i, align 4
  %or68.i = or i32 %51, -2147483648
  %irq_gpio_sel.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 12
  %52 = ptrtoint ptr %irq_gpio_sel.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or68.i, ptr %irq_gpio_sel.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then67.i, %if.end64.i.if.end69.i_crit_edge
  %call70.i = call ptr @of_get_child_by_name(ptr noundef nonnull %14, ptr noundef nonnull @.str.85) #8
  %tobool71.i = icmp ne ptr %call70.i, null
  %frombool73.i = zext i1 %tobool71.i to i8
  %53 = ptrtoint ptr %vpbr_config1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %frombool73.i, ptr %vpbr_config1.i, align 4
  br i1 %tobool71.i, label %if.then76.i, label %if.end69.i.cs35l36_handle_of_data.exit_crit_edge

if.end69.i.cs35l36_handle_of_data.exit_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs35l36_handle_of_data.exit

if.then76.i:                                      ; preds = %if.end69.i
  %call.i.i183.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call70.i, ptr noundef nonnull @.str.86, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %54 = call i32 @llvm.smin.i32(i32 %call.i.i183.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp78.i = icmp sgt i32 %54, -1
  br i1 %cmp78.i, label %if.then79.i, label %if.then76.i.if.end82.i_crit_edge

if.then76.i.if.end82.i_crit_edge:                 ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.then79.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool80.i = icmp ne i32 %56, 0
  %vpbr_en.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 13, i32 1
  %frombool81.i = zext i1 %tobool80.i to i8
  %57 = ptrtoint ptr %vpbr_en.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %frombool81.i, ptr %vpbr_en.i, align 1
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then79.i, %if.then76.i.if.end82.i_crit_edge
  %call.i.i184.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call70.i, ptr noundef nonnull @.str.87, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %58 = call i32 @llvm.smin.i32(i32 %call.i.i184.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp84.i = icmp sgt i32 %58, -1
  br i1 %cmp84.i, label %if.then85.i, label %if.end82.i.if.end86.i_crit_edge

if.end82.i.if.end86.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86.i

if.then85.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i, align 4
  %vpbr_thld.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 13, i32 2
  %61 = ptrtoint ptr %vpbr_thld.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %vpbr_thld.i, align 4
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then85.i, %if.end82.i.if.end86.i_crit_edge
  %call.i.i185.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call70.i, ptr noundef nonnull @.str.88, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %62 = call i32 @llvm.smin.i32(i32 %call.i.i185.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp88.i = icmp sgt i32 %62, -1
  br i1 %cmp88.i, label %if.then89.i, label %if.end86.i.if.end90.i_crit_edge

if.end86.i.if.end90.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

if.then89.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val.i, align 4
  %vpbr_atk_rate.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 13, i32 3
  %65 = ptrtoint ptr %vpbr_atk_rate.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %vpbr_atk_rate.i, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then89.i, %if.end86.i.if.end90.i_crit_edge
  %call.i.i186.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call70.i, ptr noundef nonnull @.str.89, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %66 = call i32 @llvm.smin.i32(i32 %call.i.i186.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp92.i = icmp sgt i32 %66, -1
  br i1 %cmp92.i, label %if.then93.i, label %if.end90.i.if.end94.i_crit_edge

if.end90.i.if.end94.i_crit_edge:                  ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i

if.then93.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val.i, align 4
  %vpbr_atk_vol.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 13, i32 4
  %69 = ptrtoint ptr %vpbr_atk_vol.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %vpbr_atk_vol.i, align 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then93.i, %if.end90.i.if.end94.i_crit_edge
  %call.i.i187.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call70.i, ptr noundef nonnull @.str.90, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %70 = call i32 @llvm.smin.i32(i32 %call.i.i187.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp96.i = icmp sgt i32 %70, -1
  br i1 %cmp96.i, label %if.then97.i, label %if.end94.i.if.end98.i_crit_edge

if.end94.i.if.end98.i_crit_edge:                  ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i

if.then97.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val.i, align 4
  %vpbr_max_attn.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 13, i32 5
  %73 = ptrtoint ptr %vpbr_max_attn.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %vpbr_max_attn.i, align 4
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then97.i, %if.end94.i.if.end98.i_crit_edge
  %call.i.i188.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call70.i, ptr noundef nonnull @.str.91, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %74 = call i32 @llvm.smin.i32(i32 %call.i.i188.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cmp100.i = icmp sgt i32 %74, -1
  br i1 %cmp100.i, label %if.then101.i, label %if.end98.i.if.end102.i_crit_edge

if.end98.i.if.end102.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.then101.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val.i, align 4
  %vpbr_wait.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 13, i32 6
  %77 = ptrtoint ptr %vpbr_wait.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %vpbr_wait.i, align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then101.i, %if.end98.i.if.end102.i_crit_edge
  %call.i.i189.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call70.i, ptr noundef nonnull @.str.92, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %78 = call i32 @llvm.smin.i32(i32 %call.i.i189.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp104.i = icmp sgt i32 %78, -1
  br i1 %cmp104.i, label %if.then105.i, label %if.end102.i.if.end106.i_crit_edge

if.end102.i.if.end106.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106.i

if.then105.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val.i, align 4
  %vpbr_rel_rate.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 13, i32 7
  %81 = ptrtoint ptr %vpbr_rel_rate.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %vpbr_rel_rate.i, align 4
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then105.i, %if.end102.i.if.end106.i_crit_edge
  %call.i.i190.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call70.i, ptr noundef nonnull @.str.93, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %82 = call i32 @llvm.smin.i32(i32 %call.i.i190.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %82)
  %cmp108.i = icmp sgt i32 %82, -1
  br i1 %cmp108.i, label %if.then109.i, label %if.end106.i.cs35l36_handle_of_data.exit_crit_edge

if.end106.i.cs35l36_handle_of_data.exit_crit_edge: ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs35l36_handle_of_data.exit

if.then109.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %val.i, align 4
  %vpbr_mute_en.i = getelementptr inbounds %struct.cs35l36_platform_data, ptr %call.i308, i32 0, i32 13, i32 8
  %85 = ptrtoint ptr %vpbr_mute_en.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %vpbr_mute_en.i, align 4
  br label %cs35l36_handle_of_data.exit

cs35l36_handle_of_data.exit.thread:               ; preds = %do.end57.i, %do.end34.i, %do.end26.i, %do.end10.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

cs35l36_handle_of_data.exit:                      ; preds = %if.then109.i, %if.end106.i.cs35l36_handle_of_data.exit_crit_edge, %if.end69.i.cs35l36_handle_of_data.exit_crit_edge
  call void @of_node_put(ptr noundef %call70.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.end35

if.end35:                                         ; preds = %cs35l36_handle_of_data.exit, %if.end27.if.end35_crit_edge
  %pdata36 = getelementptr inbounds %struct.cs35l36_private, ptr %call.i, i32 0, i32 1
  %86 = call ptr @memcpy(ptr %pdata36, ptr %call.i308, i32 72)
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.then22
  %pdata.0 = phi ptr [ %1, %if.then22 ], [ %call.i308, %if.end35 ]
  %87 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_supplies, align 4
  %call41 = call i32 @regulator_bulk_enable(i32 noundef %88, ptr noundef %arrayidx11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %if.end47, label %do.end46

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call41) #11
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %call48 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 3) #8
  %reset_gpio = getelementptr inbounds %struct.cs35l36_private, ptr %call.i, i32 0, i32 9
  %89 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call48, ptr %reset_gpio, align 4
  %cmp.i309 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i309, label %if.then51, label %if.end47.if.end65_crit_edge

if.end47.if.end65_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then51:                                        ; preds = %if.end47
  %90 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %reset_gpio, align 4
  %cmp55 = icmp eq ptr %call48, inttoptr (i32 -16 to ptr)
  br i1 %cmp55, label %do.end59, label %do.end63

do.end59:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  %91 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr = load ptr, ptr %reset_gpio, align 4
  br label %if.end65

do.end63:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %call48 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %92) #11
  br label %err_disable_regs

if.end65:                                         ; preds = %do.end59, %if.end47.if.end65_crit_edge
  %93 = phi ptr [ %.pr, %do.end59 ], [ %call48, %if.end47.if.end65_crit_edge ]
  %tobool67.not = icmp eq ptr %93, null
  br i1 %tobool67.not, label %if.end65.if.end70_crit_edge, label %if.then68

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %93, i32 noundef 1) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65.if.end70_crit_edge
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #8
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %call72 = call i32 @regmap_read(ptr noundef %95, i32 noundef 0, ptr noundef nonnull %reg_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end77, label %if.end78

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call72) #11
  br label %err

if.end78:                                         ; preds = %if.end70
  %96 = ptrtoint ptr %reg_id to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %reg_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 219702, i32 %97)
  %cmp79.not = icmp eq i32 %97, 219702
  br i1 %cmp79.not, label %if.end84, label %do.end83

do.end83:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %97, i32 noundef 219702) #11
  br label %err

if.end84:                                         ; preds = %if.end78
  %98 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap, align 4
  %call86 = call i32 @regmap_read(ptr noundef %99, i32 noundef 8204, ptr noundef nonnull %reg_revid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %do.end91, label %if.end93

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call86) #11
  br label %err

if.end93:                                         ; preds = %if.end84
  %100 = ptrtoint ptr %reg_revid to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %reg_revid, align 4
  %shr = lshr i32 %101, 8
  %rev_id = getelementptr inbounds %struct.cs35l36_private, ptr %call.i, i32 0, i32 7
  %102 = ptrtoint ptr %rev_id to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %shr, ptr %rev_id, align 4
  %103 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap, align 4
  %call95 = call i32 @regmap_read(ptr noundef %104, i32 noundef 1144, ptr noundef nonnull %l37_id_reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %do.end100, label %if.end102

do.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %call95) #11
  br label %cleanup

if.end102:                                        ; preds = %if.end93
  %105 = ptrtoint ptr %l37_id_reg to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %l37_id_reg, align 4
  %and = and i32 %106, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 13369344, i32 %and)
  %cmp103 = icmp eq i32 %and, 13369344
  %spec.select = select i1 %cmp103, i32 37, i32 36
  %107 = getelementptr inbounds %struct.cs35l36_private, ptr %call.i, i32 0, i32 6
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %spec.select, ptr %107, align 4
  %109 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rev_id, align 4
  %111 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values)
  switch i32 %110, label %if.end102.sw.epilog_crit_edge [
    i32 160, label %sw.bb
    i32 176, label %sw.bb117
  ]

if.end102.sw.epilog_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end102
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 4
  %call110 = call i32 @regmap_register_patch(ptr noundef %113, ptr noundef nonnull @cs35l36_reva0_errata_patch, i32 noundef 31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %do.end115, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end115:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %call110) #11
  br label %err

sw.bb117:                                         ; preds = %if.end102
  %call118 = call fastcc i32 @cs35l36_pac(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %do.end123, label %if.end124

do.end123:                                        ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %call118) #11
  br label %err

if.end124:                                        ; preds = %sw.bb117
  %114 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap, align 4
  %call126 = call i32 @regmap_register_patch(ptr noundef %115, ptr noundef nonnull @cs35l36_revb0_errata_patch, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %do.end131, label %if.end124.sw.epilog_crit_edge

if.end124.sw.epilog_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end131:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %call126) #11
  br label %err

sw.epilog:                                        ; preds = %if.end124.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end102.sw.epilog_crit_edge
  %vpbr_config = getelementptr inbounds %struct.cs35l36_platform_data, ptr %pdata.0, i32 0, i32 13
  %116 = ptrtoint ptr %vpbr_config to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %vpbr_config, align 4, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool133.not = icmp eq i8 %117, 0
  br i1 %tobool133.not, label %sw.epilog.if.end135_crit_edge, label %if.then134

sw.epilog.if.end135_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then134:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @cs35l36_apply_vpbr_config(ptr noundef nonnull %call.i)
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %sw.epilog.if.end135_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 6
  %118 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %irq, align 4
  %call136 = call ptr @irq_get_irq_data(i32 noundef %119) #8
  %tobool137.not = icmp eq ptr %call136, null
  br i1 %tobool137.not, label %do.end141, label %if.end144

do.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %121) #11
  br label %err

if.end144:                                        ; preds = %if.end135
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call136, i32 0, i32 3
  %122 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %common.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %and.i = and i32 %125, 15
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %126 = icmp ult i32 %switch.tableidx, 8
  br i1 %126, label %switch.hole_check, label %if.end144.do.end150_crit_edge

if.end144.do.end150_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end150

do.end150:                                        ; preds = %switch.hole_check.do.end150_crit_edge, %if.end144.do.end150_crit_edge
  %127 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.46, i32 noundef %and.i) #11
  br label %err

switch.hole_check:                                ; preds = %if.end144
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %129 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %switch.lobit.not = icmp eq i8 %129, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end150_crit_edge, label %switch.lookup

switch.hole_check.do.end150_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end150

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.cs35l36_i2c_probe, i32 0, i32 %switch.tableidx
  %130 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %130)
  %switch.load = load i32, ptr %switch.gep, align 4
  %131 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap, align 4
  %call.i310 = call i32 @regmap_update_bits_base(ptr noundef %132, i32 noundef 9216, i32 noundef 4, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %133 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %irq, align 4
  %or = or i32 %and.i, 8192
  %call156 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %134, ptr noundef null, ptr noundef nonnull @cs35l36_irq, i32 noundef %or, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157.not = icmp eq i32 %call156, 0
  br i1 %cmp157.not, label %if.end162, label %do.end161

do.end161:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef %call156) #11
  br label %err

if.end162:                                        ; preds = %switch.lookup
  %135 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regmap, align 4
  %call.i311 = call i32 @regmap_update_bits_base(ptr noundef %136, i32 noundef 9216, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %137 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regmap, align 4
  %call166 = call i32 @regmap_write(ptr noundef %138, i32 noundef 13631552, i32 noundef -105218049) #8
  %139 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap, align 4
  %call168 = call i32 @regmap_write(ptr noundef %140, i32 noundef 13631560, i32 noundef -4097) #8
  %141 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %107, align 4
  %143 = ptrtoint ptr %reg_revid to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %reg_revid, align 4
  %shr174 = lshr i32 %144, 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.52, i32 noundef %142, i32 noundef %shr174) #11
  %call175 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @soc_component_dev_cs35l36, ptr noundef nonnull @cs35l36_dai, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %cmp176 = icmp slt i32 %call175, 0
  br i1 %cmp176, label %do.end180, label %if.end162.cleanup_crit_edge

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end180:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, i32 noundef %call175) #11
  br label %err

err:                                              ; preds = %do.end180, %do.end161, %do.end150, %do.end141, %do.end131, %do.end123, %do.end115, %do.end91, %do.end83, %do.end77
  %ret.0 = phi i32 [ %call72, %do.end77 ], [ -19, %do.end83 ], [ %call86, %do.end91 ], [ -22, %do.end150 ], [ %call156, %do.end161 ], [ %call175, %do.end180 ], [ -19, %do.end141 ], [ %call118, %do.end123 ], [ %call126, %do.end131 ], [ %call110, %do.end115 ]
  %145 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %146, i32 noundef 0) #8
  br label %err_disable_regs

err_disable_regs:                                 ; preds = %err, %do.end63
  %ret.1 = phi i32 [ %ret.0, %err ], [ %92, %do.end63 ]
  %147 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %num_supplies, align 4
  %call186 = call i32 @regulator_bulk_disable(i32 noundef %148, ptr noundef %arrayidx11) #8
  br label %cleanup

cleanup:                                          ; preds = %err_disable_regs, %if.end162.cleanup_crit_edge, %do.end100, %do.end46, %cs35l36_handle_of_data.exit.thread, %if.else.cleanup_crit_edge, %do.end19, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then7 ], [ %call14, %do.end19 ], [ %call41, %do.end46 ], [ %ret.1, %err_disable_regs ], [ %call95, %do.end100 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ 0, %if.end162.cleanup_crit_edge ], [ -22, %cs35l36_handle_of_data.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l37_id_reg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_revid) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_id) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 13631552, i32 noundef -1) #8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 13631560, i32 noundef -1) #8
  %reset_gpio = getelementptr inbounds %struct.cs35l36_private, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_supplies = getelementptr inbounds %struct.cs35l36_private, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.cs35l36_private, ptr %1, i32 0, i32 3
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef %9, ptr noundef %supplies) #8
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
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs35l36_pac(ptr nocapture noundef readonly %cs35l36) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !419
  %rev_id = getelementptr inbounds %struct.cs35l36_private, ptr %cs35l36, i32 0, i32 7
  %1 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %2)
  %cmp.not = icmp eq i32 %2, 176
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %cs35l36, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 32, i32 noundef 21845) #8
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 32, i32 noundef 43690) #8
  tail call void @usleep_range_state(i32 noundef 9500, i32 noundef 10500, i32 noundef 2) #8
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 3072, i32 noundef 0) #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 3080, i32 noundef 1) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 14690304, i32 noundef 14483714) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 3080, i32 noundef 0) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 3072, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 9500, i32 noundef 10500, i32 noundef 2) #8
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call14 = call i32 @regmap_read(ptr noundef %18, i32 noundef 13631500, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %cs35l36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cs35l36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.94, i32 noundef %call14) #11
  br label %cleanup

while.cond:                                       ; preds = %if.end26.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %count.0 = phi i32 [ %inc, %if.end26.while.cond_crit_edge ], [ 0, %if.end.while.cond_crit_edge ]
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_read(ptr noundef %24, i32 noundef 13631500, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end26

do.end24:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %cs35l36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cs35l36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.94, i32 noundef %call19) #11
  br label %cleanup

if.end26:                                         ; preds = %while.body
  %inc = add nuw nsw i32 %count.0, 1
  %exitcond = icmp eq i32 %inc, 100
  br i1 %exitcond, label %if.end26.cleanup_crit_edge, label %if.end26.while.cond_crit_edge

if.end26.while.cond_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call31 = call i32 @regmap_write(ptr noundef %28, i32 noundef 13631500, i32 noundef 65536) #8
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 3072, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call35 = call i32 @regmap_write(ptr noundef %32, i32 noundef 32, i32 noundef 52428) #8
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call37 = call i32 @regmap_write(ptr noundef %34, i32 noundef 32, i32 noundef 13107) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end26.cleanup_crit_edge, %do.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %do.end ], [ %call19, %do.end24 ], [ 0, %while.end ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs35l36_apply_vpbr_config(ptr nocapture noundef readonly %cs35l36) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %cs35l36, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %vpbr_en = getelementptr inbounds %struct.cs35l36_private, ptr %cs35l36, i32 0, i32 1, i32 13, i32 1
  %2 = ptrtoint ptr %vpbr_en to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vpbr_en, align 1, !range !420
  %4 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %4, 12
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8220, i32 noundef 4096, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %vpbr_thld = getelementptr inbounds %struct.cs35l36_private, ptr %cs35l36, i32 0, i32 1, i32 13, i32 2
  %7 = ptrtoint ptr %vpbr_thld to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vpbr_thld, align 4
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 25604, i32 noundef 31, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %vpbr_max_attn = getelementptr inbounds %struct.cs35l36_private, ptr %cs35l36, i32 0, i32 1, i32 13, i32 5
  %11 = ptrtoint ptr %vpbr_max_attn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vpbr_max_attn, align 4
  %shl7 = shl i32 %12, 8
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 25604, i32 noundef 3840, i32 noundef %shl7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %vpbr_atk_vol = getelementptr inbounds %struct.cs35l36_private, ptr %cs35l36, i32 0, i32 1, i32 13, i32 4
  %15 = ptrtoint ptr %vpbr_atk_vol to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vpbr_atk_vol, align 4
  %shl10 = shl i32 %16, 12
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 25604, i32 noundef 61440, i32 noundef %shl10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %vpbr_atk_rate = getelementptr inbounds %struct.cs35l36_private, ptr %cs35l36, i32 0, i32 1, i32 13, i32 3
  %19 = ptrtoint ptr %vpbr_atk_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vpbr_atk_rate, align 4
  %shl13 = shl i32 %20, 16
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 25604, i32 noundef 458752, i32 noundef %shl13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %vpbr_wait = getelementptr inbounds %struct.cs35l36_private, ptr %cs35l36, i32 0, i32 1, i32 13, i32 6
  %23 = ptrtoint ptr %vpbr_wait to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vpbr_wait, align 4
  %shl16 = shl i32 %24, 19
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 25604, i32 noundef 1572864, i32 noundef %shl16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %vpbr_rel_rate = getelementptr inbounds %struct.cs35l36_private, ptr %cs35l36, i32 0, i32 1, i32 13, i32 7
  %27 = ptrtoint ptr %vpbr_rel_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vpbr_rel_rate, align 4
  %shl19 = shl i32 %28, 21
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 25604, i32 noundef 14680064, i32 noundef %shl19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %vpbr_mute_en = getelementptr inbounds %struct.cs35l36_private, ptr %cs35l36, i32 0, i32 1, i32 13, i32 8
  %31 = ptrtoint ptr %vpbr_mute_en to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vpbr_mute_en, align 4
  %shl22 = shl i32 %32, 24
  %call.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 25604, i32 noundef 16777216, i32 noundef %shl22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_irq(i32 noundef %irq, ptr noundef readonly %data) #2 align 64 {
entry:
  %status = alloca [4 x i32], align 4
  %masks = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %status) #8
  %0 = getelementptr inbounds [4 x i32], ptr %status, i32 0, i32 2
  %1 = getelementptr inbounds [4 x i32], ptr %status, i32 0, i32 3
  %2 = call ptr @memset(ptr %status, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %masks) #8
  %3 = getelementptr inbounds [4 x i32], ptr %masks, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %masks, i32 0, i32 3
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %data, i32 0, i32 2
  %5 = call ptr @memset(ptr %masks, i32 255, i32 16)
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 13631488, ptr noundef nonnull %status, i32 noundef 4) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 13631552, ptr noundef nonnull %masks, i32 noundef 4) #8
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %masks, align 4
  %neg = xor i32 %13, -1
  %and = and i32 %11, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %14 = getelementptr inbounds [4 x i32], ptr %masks, i32 0, i32 1
  %15 = getelementptr inbounds [4 x i32], ptr %status, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %14, align 4
  %neg7 = xor i32 %19, -1
  %and8 = and i32 %17, %neg7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %neg13 = xor i32 %23, -1
  %and14 = and i32 %21, %neg13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %4, align 4
  %neg19 = xor i32 %27, -1
  %and20 = and i32 %25, %neg19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.if.end_crit_edge

land.lhs.true16.if.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true16.if.end_crit_edge, %land.lhs.true10.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %0, align 4
  %and23 = and i32 %29, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end.if.end34_crit_edge, label %do.end

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %31, ptr noundef nonnull @.str.98) #11
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 8244, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i154 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 8244, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call.i155 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 8244, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call.i156 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 13631496, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end.if.end34_crit_edge
  %ret.0 = phi i32 [ 1, %do.end ], [ 0, %if.end.if.end34_crit_edge ]
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status, align 4
  %and36 = and i32 %41, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end51_crit_edge, label %do.end41

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %43, ptr noundef nonnull @.str.102) #11
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call.i157 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 8244, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call.i158 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 8244, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call.i159 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 8244, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call.i160 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 13631488, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end51

if.end51:                                         ; preds = %do.end41, %if.end34.if.end51_crit_edge
  %ret.1 = phi i32 [ 1, %do.end41 ], [ %ret.0, %if.end34.if.end51_crit_edge ]
  %52 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %status, align 4
  %and53 = and i32 %53, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.if.end68_crit_edge, label %do.end58

if.end51.if.end68_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %55, ptr noundef nonnull @.str.105) #11
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call.i161 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 8244, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call.i162 = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 8244, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call.i163 = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 8244, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call.i164 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 13631488, i32 noundef 67108864, i32 noundef 67108864, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end68

if.end68:                                         ; preds = %do.end58, %if.end51.if.end68_crit_edge
  %ret.2 = phi i32 [ 1, %do.end58 ], [ %ret.1, %if.end51.if.end68_crit_edge ]
  %64 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status, align 4
  %and70 = and i32 %65, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end68.if.end85_crit_edge, label %do.end75

if.end68.if.end85_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %67, ptr noundef nonnull @.str.108) #11
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %call.i165 = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 8244, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %call.i166 = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 8244, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call.i167 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 8244, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %74 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap, align 4
  %call.i168 = call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 13631488, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end85

if.end85:                                         ; preds = %do.end75, %if.end68.if.end85_crit_edge
  %ret.3 = phi i32 [ 1, %do.end75 ], [ %ret.2, %if.end68.if.end85_crit_edge ]
  %76 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %status, align 4
  %and87 = and i32 %77, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end85.if.end102_crit_edge, label %do.end92

if.end85.if.end102_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %79, ptr noundef nonnull @.str.111) #11
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %call.i169 = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 8244, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %call.i170 = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 8244, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call.i171 = call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef 8244, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call.i172 = call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 13631488, i32 noundef 131072, i32 noundef 131072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end102

if.end102:                                        ; preds = %do.end92, %if.end85.if.end102_crit_edge
  %ret.4 = phi i32 [ 1, %do.end92 ], [ %ret.3, %if.end85.if.end102_crit_edge ]
  %88 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %status, align 4
  %and104 = and i32 %89, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end102.cleanup_crit_edge, label %do.end109

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end109:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %91, ptr noundef nonnull @.str.114) #11
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 4
  %call.i173 = call i32 @regmap_update_bits_base(ptr noundef %93, i32 noundef 8244, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %call.i174 = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 8244, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 4
  %call.i175 = call i32 @regmap_update_bits_base(ptr noundef %97, i32 noundef 8244, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %98 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap, align 4
  %call.i176 = call i32 @regmap_update_bits_base(ptr noundef %99, i32 noundef 13631488, i32 noundef 262144, i32 noundef 262144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end109, %if.end102.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true16.cleanup_crit_edge ], [ 1, %do.end109 ], [ %ret.4, %if.end102.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %masks) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs35l36_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 4, label %entry.return_crit_edge4
    i32 8, label %entry.return_crit_edge5
    i32 32, label %entry.return_crit_edge6
    i32 36, label %entry.return_crit_edge7
    i32 1144, label %entry.return_crit_edge8
    i32 1280, label %entry.return_crit_edge9
    i32 1284, label %entry.return_crit_edge10
    i32 1288, label %entry.return_crit_edge11
    i32 1292, label %entry.return_crit_edge12
    i32 1296, label %entry.return_crit_edge13
    i32 3072, label %entry.return_crit_edge14
    i32 3076, label %entry.return_crit_edge15
    i32 3080, label %entry.return_crit_edge16
    i32 8196, label %entry.return_crit_edge17
    i32 8200, label %entry.return_crit_edge18
    i32 8204, label %entry.return_crit_edge19
    i32 8212, label %entry.return_crit_edge20
    i32 8216, label %entry.return_crit_edge21
    i32 8220, label %entry.return_crit_edge22
    i32 8224, label %entry.return_crit_edge23
    i32 8228, label %entry.return_crit_edge24
    i32 8232, label %entry.return_crit_edge25
    i32 8236, label %entry.return_crit_edge26
    i32 8244, label %entry.return_crit_edge27
    i32 9216, label %entry.return_crit_edge28
    i32 11268, label %entry.return_crit_edge29
    i32 11276, label %entry.return_crit_edge30
    i32 11280, label %entry.return_crit_edge31
    i32 11284, label %entry.return_crit_edge32
    i32 11520, label %entry.return_crit_edge33
    i32 11536, label %entry.return_crit_edge34
    i32 13316, label %entry.return_crit_edge35
    i32 13320, label %entry.return_crit_edge36
    i32 13324, label %entry.return_crit_edge37
    i32 13328, label %entry.return_crit_edge38
    i32 13340, label %entry.return_crit_edge39
    i32 13344, label %entry.return_crit_edge40
    i32 13348, label %entry.return_crit_edge41
    i32 14336, label %entry.return_crit_edge42
    i32 14340, label %entry.return_crit_edge43
    i32 14344, label %entry.return_crit_edge44
    i32 14348, label %entry.return_crit_edge45
    i32 14352, label %entry.return_crit_edge46
    i32 14356, label %entry.return_crit_edge47
    i32 14360, label %entry.return_crit_edge48
    i32 14364, label %entry.return_crit_edge49
    i32 14368, label %entry.return_crit_edge50
    i32 14384, label %entry.return_crit_edge51
    i32 14652, label %entry.return_crit_edge52
    i32 14668, label %entry.return_crit_edge53
    i32 15364, label %entry.return_crit_edge54
    i32 15368, label %entry.return_crit_edge55
    i32 15372, label %entry.return_crit_edge56
    i32 15376, label %entry.return_crit_edge57
    i32 15380, label %entry.return_crit_edge58
    i32 15384, label %entry.return_crit_edge59
    i32 16388, label %entry.return_crit_edge60
    i32 16392, label %entry.return_crit_edge61
    i32 16640, label %entry.return_crit_edge62
    i32 16928, label %entry.return_crit_edge63
    i32 17152, label %entry.return_crit_edge64
    i32 17408, label %entry.return_crit_edge65
    i32 17472, label %entry.return_crit_edge66
    i32 17476, label %entry.return_crit_edge67
    i32 18432, label %entry.return_crit_edge68
    i32 18436, label %entry.return_crit_edge69
    i32 18440, label %entry.return_crit_edge70
    i32 18456, label %entry.return_crit_edge71
    i32 18460, label %entry.return_crit_edge72
    i32 18464, label %entry.return_crit_edge73
    i32 18468, label %entry.return_crit_edge74
    i32 18472, label %entry.return_crit_edge75
    i32 18476, label %entry.return_crit_edge76
    i32 18492, label %entry.return_crit_edge77
    i32 19456, label %entry.return_crit_edge78
    i32 19488, label %entry.return_crit_edge79
    i32 19492, label %entry.return_crit_edge80
    i32 19496, label %entry.return_crit_edge81
    i32 19500, label %entry.return_crit_edge82
    i32 19504, label %entry.return_crit_edge83
    i32 19508, label %entry.return_crit_edge84
    i32 19520, label %entry.return_crit_edge85
    i32 19524, label %entry.return_crit_edge86
    i32 19552, label %entry.return_crit_edge87
    i32 19556, label %entry.return_crit_edge88
    i32 19560, label %entry.return_crit_edge89
    i32 20480, label %entry.return_crit_edge90
    i32 20484, label %entry.return_crit_edge91
    i32 20488, label %entry.return_crit_edge92
    i32 20492, label %entry.return_crit_edge93
    i32 20496, label %entry.return_crit_edge94
    i32 24576, label %entry.return_crit_edge95
    i32 25604, label %entry.return_crit_edge96
    i32 25608, label %entry.return_crit_edge97
    i32 25612, label %entry.return_crit_edge98
    i32 25616, label %entry.return_crit_edge99
    i32 25620, label %entry.return_crit_edge100
    i32 25624, label %entry.return_crit_edge101
    i32 26624, label %entry.return_crit_edge102
    i32 26628, label %entry.return_crit_edge103
    i32 26632, label %entry.return_crit_edge104
    i32 27652, label %entry.return_crit_edge105
    i32 28780, label %entry.return_crit_edge106
    i32 28784, label %entry.return_crit_edge107
    i32 29696, label %entry.return_crit_edge108
    i32 29712, label %entry.return_crit_edge109
    i32 32260, label %entry.return_crit_edge110
    i32 32264, label %entry.return_crit_edge111
    i32 32272, label %entry.return_crit_edge112
    i32 32276, label %entry.return_crit_edge113
    i32 32316, label %entry.return_crit_edge114
    i32 13631488, label %entry.return_crit_edge115
    i32 13631492, label %entry.return_crit_edge116
    i32 13631496, label %entry.return_crit_edge117
    i32 13631500, label %entry.return_crit_edge118
    i32 13631520, label %entry.return_crit_edge119
    i32 13631524, label %entry.return_crit_edge120
    i32 13631528, label %entry.return_crit_edge121
    i32 13631532, label %entry.return_crit_edge122
    i32 13631552, label %entry.return_crit_edge123
    i32 13631556, label %entry.return_crit_edge124
    i32 13631560, label %entry.return_crit_edge125
    i32 13631564, label %entry.return_crit_edge126
    i32 13631584, label %entry.return_crit_edge127
    i32 13631592, label %entry.return_crit_edge128
    i32 13632000, label %entry.return_crit_edge129
    i32 13632016, label %entry.return_crit_edge130
    i32 13632024, label %entry.return_crit_edge131
    i32 13632032, label %entry.return_crit_edge132
    i32 13632036, label %entry.return_crit_edge133
    i32 13632040, label %entry.return_crit_edge134
    i32 13632044, label %entry.return_crit_edge135
    i32 13632048, label %entry.return_crit_edge136
    i32 13632052, label %entry.return_crit_edge137
    i32 13632056, label %entry.return_crit_edge138
    i32 13632060, label %entry.return_crit_edge139
  ]

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = add i32 %reg, -14690304
  call void @__sanitizer_cov_trace_const_cmp4(i32 4093, i32 %1)
  %2 = icmp ult i32 %1, 4093
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ %2, %sw.default ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs35l36_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 4, label %entry.return_crit_edge4
    i32 8, label %entry.return_crit_edge5
    i32 32, label %entry.return_crit_edge6
    i32 36, label %entry.return_crit_edge7
    i32 8196, label %entry.return_crit_edge8
    i32 8200, label %entry.return_crit_edge9
    i32 8204, label %entry.return_crit_edge10
    i32 13631488, label %entry.return_crit_edge11
    i32 13631492, label %entry.return_crit_edge12
    i32 13631496, label %entry.return_crit_edge13
    i32 13631500, label %entry.return_crit_edge14
    i32 13631520, label %entry.return_crit_edge15
    i32 13631524, label %entry.return_crit_edge16
    i32 13631528, label %entry.return_crit_edge17
    i32 13631532, label %entry.return_crit_edge18
    i32 13631552, label %entry.return_crit_edge19
    i32 13631556, label %entry.return_crit_edge20
    i32 13631560, label %entry.return_crit_edge21
    i32 13631564, label %entry.return_crit_edge22
    i32 13631584, label %entry.return_crit_edge23
    i32 13631592, label %entry.return_crit_edge24
    i32 13632000, label %entry.return_crit_edge25
    i32 13632016, label %entry.return_crit_edge26
    i32 13632024, label %entry.return_crit_edge27
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = add i32 %reg, -14690304
  call void @__sanitizer_cov_trace_const_cmp4(i32 4093, i32 %1)
  %2 = icmp ult i32 %1, 4093
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ %2, %sw.default ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs35l36_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %reg, label %sw.default [
    i32 32, label %entry.return_crit_edge
    i32 36, label %entry.return_crit_edge1
    i32 11536, label %entry.return_crit_edge2
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_component_probe(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %rev_id = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %5)
  %cmp = icmp eq i32 %5, 160
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dcm_mode = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %dcm_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dcm_mode, align 1, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 14364, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 32, i32 noundef 21845) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 32, i32 noundef 43690) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i175 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 14652, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i176 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 14652, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 32, i32 noundef 52428) #8
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 32, i32 noundef 13107) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pdata14 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 1
  %amp_pcm_inv = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %amp_pcm_inv to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %amp_pcm_inv, align 2, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool15.not = icmp eq i8 %23, 0
  br i1 %tobool15.not, label %if.end.if.end19_crit_edge, label %if.then16

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap17 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap17, align 4
  %call.i177 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 24576, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end.if.end19_crit_edge
  %26 = ptrtoint ptr %pdata14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pdata14, align 4, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool21.not = icmp eq i8 %27, 0
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %if.then22

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %regmap23 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %regmap23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap23, align 4
  %call.i178 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 18432, i32 noundef 2097152, i32 noundef 2097152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge
  %imon_pol_inv = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %imon_pol_inv to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %imon_pol_inv, align 1, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool27.not = icmp eq i8 %31, 0
  br i1 %tobool27.not, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %regmap29 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %regmap29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap29, align 4
  %call.i179 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 16388, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %vmon_pol_inv = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %vmon_pol_inv to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %vmon_pol_inv, align 4, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool33.not = icmp eq i8 %35, 0
  br i1 %tobool33.not, label %if.end31.if.end37_crit_edge, label %if.then34

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %regmap35 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %regmap35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap35, align 4
  %call.i180 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 16388, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31.if.end37_crit_edge
  %bst_vctl = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 1, i32 6
  %38 = ptrtoint ptr %bst_vctl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bst_vctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool39.not = icmp eq i32 %39, 0
  br i1 %tobool39.not, label %if.end37.if.end45_crit_edge, label %if.then40

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %regmap41 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %40 = ptrtoint ptr %regmap41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap41, align 4
  %call.i181 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 14336, i32 noundef 255, i32 noundef %39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end37.if.end45_crit_edge
  %bst_vctl_sel = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 1, i32 7
  %42 = ptrtoint ptr %bst_vctl_sel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bst_vctl_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool47.not = icmp eq i32 %43, 0
  br i1 %tobool47.not, label %if.end45.if.end53_crit_edge, label %if.then48

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %regmap49 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %44 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap49, align 4
  %call.i182 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 14340, i32 noundef 3, i32 noundef %43, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end45.if.end53_crit_edge
  %bst_ipk = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 1, i32 8
  %46 = ptrtoint ptr %bst_ipk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bst_ipk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool55.not = icmp eq i32 %47, 0
  br i1 %tobool55.not, label %if.end53.if.end61_crit_edge, label %if.then56

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %regmap57 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %48 = ptrtoint ptr %regmap57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap57, align 4
  %call.i183 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 14344, i32 noundef 127, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end53.if.end61_crit_edge
  %boost_ind = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 1, i32 5
  %50 = ptrtoint ptr %boost_ind to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %boost_ind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool63.not = icmp eq i32 %51, 0
  br i1 %tobool63.not, label %if.end61.if.end71_crit_edge, label %if.then64

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then64:                                        ; preds = %if.end61
  %regmap.i = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %52 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 14352, i32 noundef 255, i32 noundef 60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %54 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i, align 4
  %call.i22.i = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 14352, i32 noundef 65280, i32 noundef 15360, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %56 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i, align 4
  %call.i23.i = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 14360, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %58 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %51, label %do.end [
    i32 1000, label %if.then64.if.end71.sink.split_crit_edge
    i32 1200, label %sw.bb9.i
  ]

if.then64.if.end71.sink.split_crit_edge:          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.sink.split

sw.bb9.i:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.sink.split

do.end:                                           ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184, i32 noundef %51) #11
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.181, i32 noundef -22) #11
  br label %cleanup

if.end71.sink.split:                              ; preds = %sw.bb9.i, %if.then64.if.end71.sink.split_crit_edge
  %.sink195 = phi i32 [ 27392, %sw.bb9.i ], [ 29952, %if.then64.if.end71.sink.split_crit_edge ]
  %.sink194 = phi i32 [ 1, %sw.bb9.i ], [ 0, %if.then64.if.end71.sink.split_crit_edge ]
  %63 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i, align 4
  %call.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 14356, i32 noundef 65280, i32 noundef %.sink195, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %65 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap.i, align 4
  %call.i25.i = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 14356, i32 noundef 3, i32 noundef %.sink194, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %if.end61.if.end71_crit_edge
  %temp_warn_thld = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 1, i32 10
  %67 = ptrtoint ptr %temp_warn_thld to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %temp_warn_thld, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool73.not = icmp eq i32 %68, 0
  br i1 %tobool73.not, label %if.end71.if.end79_crit_edge, label %if.then74

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %regmap75 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %69 = ptrtoint ptr %regmap75 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap75, align 4
  %call.i184 = tail call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 16928, i32 noundef 3, i32 noundef %68, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end71.if.end79_crit_edge
  %irq_drv_sel = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 1, i32 11
  %71 = ptrtoint ptr %irq_drv_sel to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq_drv_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool81.not = icmp eq i32 %72, 0
  br i1 %tobool81.not, label %if.end79.if.end87_crit_edge, label %if.then82

if.end79.if.end87_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %regmap83 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %73 = ptrtoint ptr %regmap83 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap83, align 4
  %shl = shl i32 %72, 5
  %call.i185 = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 9216, i32 noundef 32, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %if.end79.if.end87_crit_edge
  %irq_gpio_sel = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 1, i32 12
  %75 = ptrtoint ptr %irq_gpio_sel to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq_gpio_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool89.not = icmp eq i32 %76, 0
  br i1 %tobool89.not, label %if.end87.if.end96_crit_edge, label %if.then90

if.end87.if.end96_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %regmap91 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %77 = ptrtoint ptr %regmap91 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap91, align 4
  %shl94 = shl i32 %76, 1
  %call.i186 = tail call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 9216, i32 noundef 2, i32 noundef %shl94, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end96

if.end96:                                         ; preds = %if.then90, %if.end87.if.end96_crit_edge
  %chip_version = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 6
  %79 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chip_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %80)
  %cmp97 = icmp eq i32 %80, 36
  br i1 %cmp97, label %if.then98, label %if.end96.if.end115_crit_edge

if.end96.if.end115_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %regmap99 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %81 = ptrtoint ptr %regmap99 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap99, align 4
  %call.i187 = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 14384, i32 noundef 63, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %83 = ptrtoint ptr %regmap99 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap99, align 4
  %call102 = tail call i32 @regmap_write(ptr noundef %84, i32 noundef 32, i32 noundef 21845) #8
  %85 = ptrtoint ptr %regmap99 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap99, align 4
  %call104 = tail call i32 @regmap_write(ptr noundef %86, i32 noundef 32, i32 noundef 43690) #8
  %87 = ptrtoint ptr %regmap99 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap99, align 4
  %call.i188 = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 14668, i32 noundef 491520, i32 noundef 393216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %89 = ptrtoint ptr %regmap99 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap99, align 4
  %call.i189 = tail call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 14340, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %91 = ptrtoint ptr %regmap99 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap99, align 4
  %call.i190 = tail call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 14336, i32 noundef 255, i32 noundef 150, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %93 = ptrtoint ptr %regmap99 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap99, align 4
  %call112 = tail call i32 @regmap_write(ptr noundef %94, i32 noundef 32, i32 noundef 52428) #8
  %95 = ptrtoint ptr %regmap99 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap99, align 4
  %call114 = tail call i32 @regmap_write(ptr noundef %96, i32 noundef 32, i32 noundef 13107) #8
  br label %if.end115

if.end115:                                        ; preds = %if.then98, %if.end96.if.end115_crit_edge
  %regmap116 = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %97 = ptrtoint ptr %regmap116 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap116, align 4
  %call.i191 = tail call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 8224, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end115 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_component_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %clksrc = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clksrc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clksrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %clk_id)
  %6 = icmp ult i32 %clk_id, 5
  br i1 %6, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.cs35l36_component_set_sysclk, i32 0, i32 %clk_id
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %8 = ptrtoint ptr %clksrc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %switch.load, ptr %clksrc, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %switch.lookup
  %i.01.i = phi i32 [ 0, %switch.lookup ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [64 x %struct.cs35l36_pll_config], ptr @cs35l36_pll_sysclk, i32 0, i32 %i.01.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %freq)
  %cmp2.i = icmp eq i32 %10, %freq
  br i1 %cmp2.i, label %cs35l36_get_clk_config.exit, label %for.cond.i

cs35l36_get_clk_config.exit:                      ; preds = %for.body.i
  %cmp = icmp eq ptr %arrayidx.i, null
  br i1 %cmp, label %cs35l36_get_clk_config.exit.do.end_crit_edge, label %if.end

cs35l36_get_clk_config.exit.do.end_crit_edge:     ; preds = %cs35l36_get_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %cs35l36_get_clk_config.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.185, i32 noundef %freq) #11
  br label %cleanup

if.end:                                           ; preds = %cs35l36_get_clk_config.exit
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 11268, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %clk_cfg13 = getelementptr [64 x %struct.cs35l36_pll_config], ptr @cs35l36_pll_sysclk, i32 0, i32 %i.01.i, i32 1
  %17 = ptrtoint ptr %clk_cfg13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_cfg13, align 4
  %shl = shl i32 %18, 5
  %call.i122 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 11268, i32 noundef 2016, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i123 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 11268, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %23 = ptrtoint ptr %clksrc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clksrc, align 4
  %call.i124 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 11268, i32 noundef 7, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i125 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 11268, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call.i126 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 11268, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %rev_id = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 7
  %29 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %30)
  %cmp24 = icmp eq i32 %30, 160
  br i1 %cmp24, label %if.then25, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call27 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 32, i32 noundef 21845) #8
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 32, i32 noundef 43690) #8
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call31 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 12304, i32 noundef 224680) #8
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call33 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 12308, i32 noundef 16838158) #8
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call.i127 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 12296, i32 noundef 1008, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %fll_igain = getelementptr [64 x %struct.cs35l36_pll_config], ptr @cs35l36_pll_sysclk, i32 0, i32 %i.01.i, i32 2
  %43 = ptrtoint ptr %fll_igain to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fll_igain, align 4
  %call.i128 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 12296, i32 noundef 15, i32 noundef %44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 32, i32 noundef 52428) #8
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call41 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 32, i32 noundef 13107) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then25, %if.end.if.end42_crit_edge
  %49 = ptrtoint ptr %clksrc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %clksrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp44 = icmp eq i32 %50, 4
  %ldm_mode_sel = getelementptr inbounds %struct.cs35l36_private, ptr %3, i32 0, i32 8
  %51 = ptrtoint ptr %ldm_mode_sel to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ldm_mode_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not = icmp ne i32 %52, 0
  br i1 %cmp44, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp46 = icmp ne i32 %5, 4
  %spec.select = select i1 %tobool.not, i1 %cmp46, i1 false
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  br i1 %spec.select, label %if.then48, label %if.end77.critedge

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %call.i129 = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 26632, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call.i130 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 29696, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %call.i131 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 26632, i32 noundef 112, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp62 = icmp eq i32 %5, 4
  %spec.select120 = select i1 %tobool.not, i1 %cmp62, i1 false
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  br i1 %spec.select120, label %if.then66, label %if.end77.critedge121

if.then66:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i132 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 26632, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call.i133 = tail call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 29696, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call.i134 = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 26632, i32 noundef 112, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.end77.critedge:                                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %call.i135 = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 29696, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.end77.critedge121:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i136 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 29696, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end77.critedge121, %if.end77.critedge, %if.then66, %if.then48, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end77.critedge121 ], [ 0, %if.end77.critedge ], [ 0, %if.then66 ], [ 0, %if.then48 ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cs35l36_ldm_sel_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %ldm_mode_sel = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %ldm_mode_sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ldm_mode_sel, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_ldm_sel_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %cond = select i1 %tobool.not, i32 0, i32 16128
  %ldm_mode_sel = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %ldm_mode_sel to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %ldm_mode_sel, align 4
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 26632, i32 noundef 16128, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_main_amp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  %reg = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg, align 4, !annotation !419
  %7 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %event, label %do.body58 [
    i32 2, label %sw.bb
    i32 4, label %sw.bb50
    i32 8, label %sw.bb55
  ]

sw.bb:                                            ; preds = %entry
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 8212, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %11, i32 noundef 13631532, ptr noundef nonnull %reg) #8
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %and = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.if.end45_crit_edge, label %land.rhs

sw.bb.if.end45_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.rhs:                                         ; preds = %sw.bb
  %.b87 = load i1, ptr @cs35l36_main_amp_event.__already_done, align 1
  br i1 %.b87, label %land.rhs.do.end44_crit_edge, label %if.then, !prof !421

land.rhs.do.end44_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cs35l36_main_amp_event.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 522, i32 noundef 9, ptr noundef null) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then, %land.rhs.do.end44_crit_edge
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %15, ptr noundef nonnull @.str.164) #11
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %sw.bb.if.end45_crit_edge
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i89 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 19456, i32 noundef 127, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i90 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 8228, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap51 = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %regmap51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap51, align 4
  %call.i91 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 19456, i32 noundef 127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %regmap51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap51, align 4
  %call.i92 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 8228, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap56 = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 2
  %24 = ptrtoint ptr %regmap56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap56, align 4
  %call.i93 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 8212, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #8
  br label %cleanup

do.body58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l36_main_amp_event.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l36_main_amp_event, %if.then69)) #8
          to label %cleanup [label %if.then69], !srcloc !422

if.then69:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l36_main_amp_event.__UNIQUE_ID_ddebug294, ptr noundef %27, ptr noundef nonnull @.str.167, i32 noundef %event) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %do.body58, %sw.bb55, %sw.bb50, %if.end45
  %retval.0 = phi i32 [ -22, %if.then69 ], [ 0, %sw.bb55 ], [ 0, %sw.bb50 ], [ 0, %if.end45 ], [ -22, %do.body58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_boost_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %event, label %do.body [
    i32 2, label %sw.bb
    i32 8, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %extern_boost = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 1, i32 9
  %7 = ptrtoint ptr %extern_boost to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %extern_boost, align 4, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 8216, i32 noundef 48, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %extern_boost5 = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %extern_boost5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %extern_boost5, align 4, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %if.then7, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %regmap8 = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap8, align 4
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 8216, i32 noundef 48, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs35l36_boost_event.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs35l36_boost_event, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !422

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs35l36_boost_event.__UNIQUE_ID_ddebug295, ptr noundef %16, ptr noundef nonnull @.str.167, i32 noundef %event) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body, %if.then7, %sw.bb3.cleanup_crit_edge, %if.then, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then15 ], [ 0, %sw.bb3.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_dai_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %freq)
  %cmp = icmp ugt i32 %freq, 6000000
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nuw nsw i32 %freq, 23999999
  %div = udiv i32 %sub, %freq
  %mul = mul nuw nsw i32 %div, 3
  %add2 = add nuw nsw i32 %mul, 4
  %add7 = mul i32 %div, 20480
  %phi.bo = add i32 %add7, 16384
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %fs1.0 = phi i32 [ %add2, %if.else ], [ 16, %entry.if.end_crit_edge ]
  %fs2.0 = phi i32 [ %phi.bo, %if.else ], [ 147456, %entry.if.end_crit_edge ]
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 32, i32 noundef 21845) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 32, i32 noundef 43690) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %or = or i32 %fs2.0, %fs1.0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 11536, i32 noundef 16777215, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 32, i32 noundef 52428) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 32, i32 noundef 13107) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_set_dai_fmt(ptr nocapture noundef readonly %component_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %component_dai, i32 0, i32 12
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.195)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %clock_provider.0 = phi i32 [ 0, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 %clock_provider.0, 6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 18432, i32 noundef 64, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i54 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 18436, i32 noundef 1, i32 noundef %clock_provider.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = trunc i32 %fmt to i8
  %trunc53 = and i8 %12, -16
  %13 = zext i8 %trunc53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.196)
  switch i8 %trunc53, label %sw.epilog.cleanup_crit_edge [
    i8 16, label %sw.epilog.sw.epilog10_crit_edge
    i8 0, label %sw.bb8
  ]

sw.epilog.sw.epilog10_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %sw.bb8, %sw.epilog.sw.epilog10_crit_edge
  %clk_frc.0 = phi i32 [ 0, %sw.bb8 ], [ 1, %sw.epilog.sw.epilog10_crit_edge ]
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %shl12 = shl nuw nsw i32 %clk_frc.0, 7
  %call.i55 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 18432, i32 noundef 128, i32 noundef %shl12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %shl15 = shl nuw nsw i32 %clk_frc.0, 1
  %call.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 18436, i32 noundef 2, i32 noundef %shl15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %and17 = and i32 %fmt, 15
  %18 = zext i32 %and17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %and17, label %sw.epilog10.cleanup_crit_edge [
    i32 4, label %sw.epilog10.sw.epilog21_crit_edge
    i32 1, label %sw.bb19
  ]

sw.epilog10.sw.epilog21_crit_edge:                ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

sw.epilog10.cleanup_crit_edge:                    ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb19:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %sw.bb19, %sw.epilog10.sw.epilog21_crit_edge
  %asp_fmt.0 = phi i32 [ 2, %sw.bb19 ], [ 0, %sw.epilog10.sw.epilog21_crit_edge ]
  %and22 = lshr i32 %fmt, 8
  %19 = and i32 %and22, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %20 = icmp ult i32 %19, 5
  br i1 %20, label %switch.hole_check, label %sw.epilog21.cleanup_crit_edge

sw.epilog21.cleanup_crit_edge:                    ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %sw.epilog21
  %switch.maskindex = trunc i32 %19 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %21 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %switch.lobit.not = icmp eq i8 %21, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.cs35l36_set_dai_fmt, i32 0, i32 %19
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep60 = getelementptr inbounds [5 x i32], ptr @switch.table.cs35l36_set_dai_fmt.188, i32 0, i32 %19
  %23 = ptrtoint ptr %switch.gep60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load61 = load i32, ptr %switch.gep60, align 4
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 18436, i32 noundef 4, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 18432, i32 noundef 256, i32 noundef %switch.load61, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 18440, i32 noundef 7, i32 noundef %asp_fmt.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %sw.epilog21.cleanup_crit_edge, %sw.epilog10.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog10.cleanup_crit_edge ], [ -22, %sw.epilog21.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_pcm_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @cs35l36_constraints) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs35l36_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %regmap = getelementptr inbounds %struct.cs35l36_private, ptr %5, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.029 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [14 x %struct.cs35l36_global_fs_config], ptr @cs35l36_fs_rates, i32 0, i32 %i.029
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2 = icmp eq i32 %7, %9
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %fs_cfg = getelementptr [14 x %struct.cs35l36_global_fs_config], ptr @cs35l36_fs_rates, i32 0, i32 %i.029, i32 1
  %12 = ptrtoint ptr %fs_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fs_cfg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 11276, i32 noundef 31, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %for.end.if.then.i.i.i_crit_edge

for.end.if.then.i.i.i_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %for.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %for.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %15, %for.end.if.then.i.i.i_crit_edge ], [ %18, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !423
  %add.i.i.i = or i32 %16, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %for.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1.i.i.i = icmp eq i32 %18, 0
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
  %19 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %call1.i, label %params_width.exit.cleanup_crit_edge [
    i32 16, label %params_width.exit.sw.epilog_crit_edge
    i32 24, label %params_width.exit.sw.epilog_crit_edge31
    i32 32, label %params_width.exit.sw.epilog_crit_edge32
  ]

params_width.exit.sw.epilog_crit_edge32:          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

params_width.exit.sw.epilog_crit_edge31:          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %params_width.exit.sw.epilog_crit_edge, %params_width.exit.sw.epilog_crit_edge31, %params_width.exit.sw.epilog_crit_edge32
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %20 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8 = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %shl11 = shl nuw nsw i32 %call1.i, 16
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 18456, i32 noundef 16711680, i32 noundef %shl11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 18456, i32 noundef 255, i32 noundef %call1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %params_width.exit.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 215)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 215)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !170, !171, !172, !174, !175, !177, !179, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !314, !315, !316, !318, !319, !320, !322, !324, !326, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !380, !381, !382, !384, !385, !386, !387, !389, !390, !391, !392, !394, !396, !398, !400, !402, !404, !406, !408}
!llvm.module.flags = !{!410, !411, !412, !413, !414, !415, !416, !417}
!llvm.ident = !{!418}

!0 = !{ptr @__initcall__kmod_snd_soc_cs35l36__296_1953_cs35l36_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_cs35l36__296_1953_cs35l36_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cs35l36.c", i32 1953, i32 1}
!2 = !{ptr @__exitcall_cs35l36_i2c_driver_exit, !1, !"__exitcall_cs35l36_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/cs35l36.c", i32 1955, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/cs35l36.c", i32 1956, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/cs35l36.c", i32 1957, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/cs35l36.c", i32 1946, i32 11}
!12 = !{ptr @cs35l36_i2c_driver, !13, !"cs35l36_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/cs35l36.c", i32 1944, i32 26}
!14 = !{ptr @cs35l36_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/cs35l36.c", i32 1720, i32 20}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/cs35l36.c", i32 1723, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cs35l36_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @cs35l36_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/cs35l36.c", i32 1734, i32 3}
!27 = !{ptr @cs35l36_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cs35l36_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/cs35l36.c", i32 1758, i32 3}
!31 = !{ptr @cs35l36_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cs35l36_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/cs35l36.c", i32 1763, i32 53}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/cs35l36.c", i32 1769, i32 4}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cs35l36_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @cs35l36_i2c_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/cs35l36.c", i32 1771, i32 4}
!42 = !{ptr @cs35l36_i2c_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cs35l36_i2c_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/cs35l36.c", i32 1784, i32 3}
!46 = !{ptr @cs35l36_i2c_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cs35l36_i2c_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/cs35l36.c", i32 1789, i32 3}
!50 = !{ptr @cs35l36_i2c_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cs35l36_i2c_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/cs35l36.c", i32 1797, i32 3}
!54 = !{ptr @cs35l36_i2c_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cs35l36_i2c_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/cs35l36.c", i32 1805, i32 3}
!58 = !{ptr @cs35l36_i2c_probe._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cs35l36_i2c_probe._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/cs35l36.c", i32 1821, i32 4}
!62 = !{ptr @cs35l36_i2c_probe._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cs35l36_i2c_probe._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/cs35l36.c", i32 1829, i32 4}
!66 = !{ptr @cs35l36_i2c_probe._entry.36, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cs35l36_i2c_probe._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/cs35l36.c", i32 1837, i32 4}
!70 = !{ptr @cs35l36_i2c_probe._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cs35l36_i2c_probe._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/cs35l36.c", i32 1849, i32 3}
!74 = !{ptr @cs35l36_i2c_probe._entry.42, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cs35l36_i2c_probe._entry_ptr.44, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/cs35l36.c", i32 1866, i32 3}
!78 = !{ptr @cs35l36_i2c_probe._entry.45, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @cs35l36_i2c_probe._entry_ptr.47, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/cs35l36.c", i32 1879, i32 3}
!82 = !{ptr @cs35l36_i2c_probe._entry.48, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @cs35l36_i2c_probe._entry_ptr.50, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.52, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/cs35l36.c", i32 1892, i32 2}
!86 = !{ptr @cs35l36_i2c_probe._entry.51, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @cs35l36_i2c_probe._entry_ptr.53, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/cs35l36.c", i32 1899, i32 3}
!90 = !{ptr @cs35l36_i2c_probe._entry.54, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @cs35l36_i2c_probe._entry_ptr.56, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @cs35l36_regmap, !93, !"cs35l36_regmap", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/cs35l36.c", i32 1305, i32 29}
!94 = !{ptr @cs35l36_reg, !95, !"cs35l36_reg", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/cs35l36.c", i32 134, i32 27}
!96 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/cs35l36.c", i32 44, i32 2}
!98 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/cs35l36.c", i32 45, i32 2}
!100 = distinct !{null, !101, !"cs35l36_supplies", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/cs35l36.c", i32 43, i32 27}
!102 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/cs35l36.c", i32 1443, i32 33}
!104 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/cs35l36.c", i32 1446, i32 4}
!106 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @cs35l36_handle_of_data._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @cs35l36_handle_of_data._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/cs35l36.c", i32 1452, i32 3}
!111 = !{ptr @cs35l36_handle_of_data._entry.62, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @cs35l36_handle_of_data._entry_ptr.64, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/cs35l36.c", i32 1457, i32 33}
!115 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/cs35l36.c", i32 1461, i32 33}
!117 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/cs35l36.c", i32 1464, i32 4}
!119 = !{ptr @cs35l36_handle_of_data._entry.67, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @cs35l36_handle_of_data._entry_ptr.69, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.71, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/cs35l36.c", i32 1471, i32 3}
!123 = !{ptr @cs35l36_handle_of_data._entry.70, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @cs35l36_handle_of_data._entry_ptr.72, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.73, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/cs35l36.c", i32 1477, i32 6}
!127 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/cs35l36.c", i32 1480, i32 6}
!129 = !{ptr @.str.75, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/cs35l36.c", i32 1483, i32 6}
!131 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/cs35l36.c", i32 1486, i32 6}
!133 = !{ptr @.str.77, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/cs35l36.c", i32 1489, i32 6}
!135 = !{ptr @.str.78, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/cs35l36.c", i32 1491, i32 31}
!137 = !{ptr @.str.79, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/cs35l36.c", i32 1494, i32 31}
!139 = !{ptr @.str.81, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/cs35l36.c", i32 1497, i32 3}
!141 = !{ptr @cs35l36_handle_of_data._entry.80, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @cs35l36_handle_of_data._entry_ptr.82, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.83, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/cs35l36.c", i32 1501, i32 31}
!145 = !{ptr @.str.84, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/cs35l36.c", i32 1504, i32 31}
!147 = !{ptr @.str.85, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/cs35l36.c", i32 1508, i32 39}
!149 = !{ptr @.str.86, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/cs35l36.c", i32 1511, i32 39}
!151 = !{ptr @.str.87, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/cs35l36.c", i32 1514, i32 39}
!153 = !{ptr @.str.88, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/cs35l36.c", i32 1517, i32 39}
!155 = !{ptr @.str.89, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/cs35l36.c", i32 1520, i32 39}
!157 = !{ptr @.str.90, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/cs35l36.c", i32 1523, i32 39}
!159 = !{ptr @.str.91, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/cs35l36.c", i32 1526, i32 39}
!161 = !{ptr @.str.92, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/cs35l36.c", i32 1529, i32 39}
!163 = !{ptr @.str.93, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/cs35l36.c", i32 1532, i32 39}
!165 = !{ptr @cs35l36_reva0_errata_patch, !166, !"cs35l36_reva0_errata_patch", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/cs35l36.c", i32 1648, i32 34}
!167 = !{ptr @.str.94, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/cs35l36.c", i32 1575, i32 3}
!169 = !{ptr @.str.95, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @cs35l36_pac._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @cs35l36_pac._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @cs35l36_pac._entry.96, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/cs35l36.c", i32 1587, i32 4}
!174 = !{ptr @cs35l36_pac._entry_ptr.97, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @cs35l36_revb0_errata_patch, !176, !"cs35l36_revb0_errata_patch", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/cs35l36.c", i32 1684, i32 34}
!177 = !{ptr @.str.98, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/cs35l36.c", i32 1344, i32 3}
!179 = !{ptr @.str.99, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.100, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @cs35l36_irq._entry, !178, !"_entry", i1 false, i1 false}
!182 = !{ptr @cs35l36_irq._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.102, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/cs35l36.c", i32 1359, i32 3}
!185 = !{ptr @cs35l36_irq._entry.101, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @cs35l36_irq._entry_ptr.103, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.105, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/cs35l36.c", i32 1373, i32 3}
!189 = !{ptr @cs35l36_irq._entry.104, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @cs35l36_irq._entry_ptr.106, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.108, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/cs35l36.c", i32 1386, i32 3}
!193 = !{ptr @cs35l36_irq._entry.107, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @cs35l36_irq._entry_ptr.109, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.111, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/cs35l36.c", i32 1399, i32 3}
!197 = !{ptr @cs35l36_irq._entry.110, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @cs35l36_irq._entry_ptr.112, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.114, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/cs35l36.c", i32 1414, i32 3}
!201 = !{ptr @cs35l36_irq._entry.113, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @cs35l36_irq._entry_ptr.115, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @soc_component_dev_cs35l36, !204, !"soc_component_dev_cs35l36", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/cs35l36.c", i32 1290, i32 46}
!205 = !{ptr @.str.116, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/cs35l36.c", i32 488, i32 2}
!207 = !{ptr @.str.117, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/cs35l36.c", i32 490, i32 2}
!209 = !{ptr @.str.119, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/cs35l36.c", i32 492, i32 2}
!211 = !{ptr @.str.120, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/cs35l36.c", i32 493, i32 2}
!213 = !{ptr @.str.122, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/cs35l36.c", i32 495, i32 2}
!215 = !{ptr @.str.124, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/cs35l36.c", i32 497, i32 2}
!217 = !{ptr @.str.126, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/cs35l36.c", i32 499, i32 2}
!219 = !{ptr @cs35l36_aud_controls, !220, !"cs35l36_aud_controls", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/cs35l36.c", i32 487, i32 38}
!221 = !{ptr @dig_vol_tlv, !222, !"dig_vol_tlv", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/cs35l36.c", i32 447, i32 8}
!223 = !{ptr @amp_gain_tlv, !224, !"amp_gain_tlv", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/cs35l36.c", i32 448, i32 8}
!225 = !{ptr @pcm_sft_ramp, !226, !"pcm_sft_ramp", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/cs35l36.c", i32 453, i32 8}
!227 = !{ptr @.str.127, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/cs35l36.c", i32 451, i32 2}
!229 = !{ptr @.str.128, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/cs35l36.c", i32 451, i32 9}
!231 = !{ptr @.str.129, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/cs35l36.c", i32 451, i32 17}
!233 = !{ptr @.str.130, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/cs35l36.c", i32 451, i32 24}
!235 = !{ptr @.str.131, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/cs35l36.c", i32 451, i32 31}
!237 = !{ptr @.str.132, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/cs35l36.c", i32 451, i32 38}
!239 = !{ptr @.str.133, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/cs35l36.c", i32 451, i32 45}
!241 = !{ptr @.str.134, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/cs35l36.c", i32 451, i32 53}
!243 = !{ptr @cs35l36_pcm_sftramp_text, !244, !"cs35l36_pcm_sftramp_text", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/cs35l36.c", i32 450, i32 27}
!245 = !{ptr @.str.135, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/cs35l36.c", i32 655, i32 2}
!247 = !{ptr @.str.136, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/cs35l36.c", i32 656, i32 2}
!249 = !{ptr @.str.137, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/cs35l36.c", i32 658, i32 2}
!251 = !{ptr @.str.138, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/cs35l36.c", i32 662, i32 2}
!253 = !{ptr @.str.139, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/cs35l36.c", i32 663, i32 2}
!255 = !{ptr @.str.140, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/cs35l36.c", i32 664, i32 2}
!257 = !{ptr @.str.141, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/cs35l36.c", i32 665, i32 2}
!259 = !{ptr @.str.142, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/cs35l36.c", i32 669, i32 2}
!261 = !{ptr @.str.143, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/cs35l36.c", i32 670, i32 2}
!263 = !{ptr @.str.144, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/cs35l36.c", i32 671, i32 2}
!265 = !{ptr @.str.145, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/cs35l36.c", i32 672, i32 2}
!267 = !{ptr @.str.146, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/cs35l36.c", i32 673, i32 2}
!269 = !{ptr @.str.147, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/cs35l36.c", i32 674, i32 2}
!271 = !{ptr @.str.148, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/cs35l36.c", i32 676, i32 2}
!273 = !{ptr @.str.149, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/cs35l36.c", i32 677, i32 2}
!275 = !{ptr @.str.150, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/cs35l36.c", i32 678, i32 2}
!277 = !{ptr @.str.151, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/cs35l36.c", i32 679, i32 2}
!279 = !{ptr @.str.152, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/cs35l36.c", i32 680, i32 2}
!281 = !{ptr @.str.153, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/cs35l36.c", i32 681, i32 2}
!283 = !{ptr @.str.154, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/cs35l36.c", i32 683, i32 2}
!285 = !{ptr @.str.155, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/cs35l36.c", i32 684, i32 2}
!287 = !{ptr @.str.156, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/cs35l36.c", i32 685, i32 2}
!289 = !{ptr @.str.157, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/cs35l36.c", i32 686, i32 2}
!291 = !{ptr @.str.158, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/cs35l36.c", i32 689, i32 2}
!293 = !{ptr @.str.159, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/cs35l36.c", i32 690, i32 2}
!295 = !{ptr @cs35l36_dapm_widgets, !296, !"cs35l36_dapm_widgets", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/cs35l36.c", i32 654, i32 41}
!297 = !{ptr @.str.161, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/cs35l36.c", i32 595, i32 3}
!299 = !{ptr @cs35l36_chan_mux, !300, !"cs35l36_chan_mux", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/cs35l36.c", i32 594, i32 38}
!301 = !{ptr @chansel_enum, !302, !"chansel_enum", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/cs35l36.c", i32 591, i32 8}
!303 = !{ptr @.str.162, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/cs35l36.c", i32 587, i32 2}
!305 = !{ptr @.str.163, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/cs35l36.c", i32 588, i32 2}
!307 = !{ptr @cs35l36_chan_text, !308, !"cs35l36_chan_text", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/cs35l36.c", i32 586, i32 27}
!309 = distinct !{null, !310, !"__already_done", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/cs35l36.c", i32 522, i32 7}
!311 = !{ptr @.str.164, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/cs35l36.c", i32 523, i32 4}
!313 = !{ptr @.str.165, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @cs35l36_main_amp_event._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @cs35l36_main_amp_event._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.166, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/cs35l36.c", i32 548, i32 3}
!318 = !{ptr @.str.167, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @cs35l36_main_amp_event.__UNIQUE_ID_ddebug294, !317, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!320 = !{ptr @.str.168, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/cs35l36.c", i32 598, i32 3}
!322 = !{ptr @amp_enable_ctrl, !323, !"amp_enable_ctrl", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/cs35l36.c", i32 597, i32 38}
!324 = !{ptr @.str.170, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/cs35l36.c", i32 579, i32 3}
!326 = !{ptr @cs35l36_boost_event.__UNIQUE_ID_ddebug295, !325, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!327 = !{ptr @boost_ctrl, !328, !"boost_ctrl", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/cs35l36.c", i32 601, i32 38}
!329 = !{ptr @asp_tx1_src, !330, !"asp_tx1_src", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/cs35l36.c", i32 616, i32 38}
!331 = !{ptr @asp_tx1_src_enum, !332, !"asp_tx1_src_enum", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/cs35l36.c", i32 612, i32 8}
!333 = !{ptr @.str.172, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/cs35l36.c", i32 605, i32 2}
!335 = !{ptr @.str.173, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/cs35l36.c", i32 605, i32 15}
!337 = !{ptr @.str.174, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/cs35l36.c", i32 605, i32 25}
!339 = !{ptr @.str.175, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/cs35l36.c", i32 605, i32 33}
!341 = !{ptr @.str.176, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/cs35l36.c", i32 605, i32 41}
!343 = !{ptr @.str.177, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/cs35l36.c", i32 605, i32 51}
!345 = !{ptr @.str.178, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/cs35l36.c", i32 605, i32 60}
!347 = !{ptr @asp_tx_src_text, !348, !"asp_tx_src_text", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/cs35l36.c", i32 604, i32 27}
!349 = !{ptr @asp_tx_src_values, !350, !"asp_tx_src_values", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/cs35l36.c", i32 608, i32 27}
!351 = !{ptr @asp_tx2_src, !352, !"asp_tx2_src", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/cs35l36.c", i32 623, i32 38}
!353 = !{ptr @asp_tx2_src_enum, !354, !"asp_tx2_src_enum", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/cs35l36.c", i32 619, i32 8}
!355 = !{ptr @asp_tx3_src, !356, !"asp_tx3_src", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/cs35l36.c", i32 630, i32 38}
!357 = !{ptr @asp_tx3_src_enum, !358, !"asp_tx3_src_enum", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/cs35l36.c", i32 626, i32 8}
!359 = !{ptr @asp_tx4_src, !360, !"asp_tx4_src", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/cs35l36.c", i32 637, i32 38}
!361 = !{ptr @asp_tx4_src_enum, !362, !"asp_tx4_src_enum", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/cs35l36.c", i32 633, i32 8}
!363 = !{ptr @asp_tx5_src, !364, !"asp_tx5_src", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/cs35l36.c", i32 644, i32 38}
!365 = !{ptr @asp_tx5_src_enum, !366, !"asp_tx5_src_enum", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/cs35l36.c", i32 640, i32 8}
!367 = !{ptr @asp_tx6_src, !368, !"asp_tx6_src", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/cs35l36.c", i32 651, i32 38}
!369 = !{ptr @asp_tx6_src_enum, !370, !"asp_tx6_src_enum", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/cs35l36.c", i32 647, i32 8}
!371 = !{ptr @.str.179, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/cs35l36.c", i32 736, i32 3}
!373 = !{ptr @.str.180, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/cs35l36.c", i32 743, i32 27}
!375 = !{ptr @cs35l36_audio_map, !376, !"cs35l36_audio_map", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/cs35l36.c", i32 693, i32 40}
!377 = !{ptr @.str.181, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/cs35l36.c", i32 1220, i32 4}
!379 = !{ptr @.str.182, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @cs35l36_component_probe._entry, !378, !"_entry", i1 false, i1 false}
!381 = !{ptr @cs35l36_component_probe._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.183, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/cs35l36.c", i32 1147, i32 3}
!384 = !{ptr @.str.184, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @cs35l36_boost_inductor._entry, !383, !"_entry", i1 false, i1 false}
!386 = !{ptr @cs35l36_boost_inductor._entry_ptr, !383, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.185, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/cs35l36.c", i32 1036, i32 3}
!389 = !{ptr @.str.186, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @cs35l36_component_set_sysclk._entry, !388, !"_entry", i1 false, i1 false}
!391 = !{ptr @cs35l36_component_set_sysclk._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @cs35l36_pll_sysclk, !393, !"cs35l36_pll_sysclk", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/cs35l36.c", i32 67, i32 40}
!394 = !{ptr @.str.187, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/cs35l36.c", i32 981, i32 11}
!396 = !{ptr @cs35l36_dai, !397, !"cs35l36_dai", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/cs35l36.c", i32 979, i32 34}
!398 = !{ptr @cs35l36_ops, !399, !"cs35l36_ops", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/cs35l36.c", i32 972, i32 37}
!400 = !{ptr @cs35l36_constraints, !401, !"cs35l36_constraints", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/cs35l36.c", i32 958, i32 48}
!402 = !{ptr @cs35l36_src_rates, !403, !"cs35l36_src_rates", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/cs35l36.c", i32 953, i32 27}
!404 = !{ptr @cs35l36_fs_rates, !405, !"cs35l36_fs_rates", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/cs35l36.c", i32 846, i32 46}
!406 = !{ptr @cs35l36_of_match, !407, !"cs35l36_of_match", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/cs35l36.c", i32 1931, i32 34}
!408 = !{ptr @cs35l36_id, !409, !"cs35l36_id", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/cs35l36.c", i32 1937, i32 35}
!410 = !{i32 1, !"wchar_size", i32 2}
!411 = !{i32 1, !"min_enum_size", i32 4}
!412 = !{i32 8, !"branch-target-enforcement", i32 0}
!413 = !{i32 8, !"sign-return-address", i32 0}
!414 = !{i32 8, !"sign-return-address-all", i32 0}
!415 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!416 = !{i32 7, !"uwtable", i32 1}
!417 = !{i32 7, !"frame-pointer", i32 2}
!418 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!419 = !{!"auto-init"}
!420 = !{i8 0, i8 2}
!421 = !{!"branch_weights", i32 2000, i32 1}
!422 = !{i64 2149009252, i64 2149009257, i64 2149009270, i64 2149009314, i64 2149009348, i64 2149009369}
!423 = !{i32 0, i32 33}
