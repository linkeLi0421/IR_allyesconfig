; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cs4234.c_pt.bc'
source_filename = "../sound/soc/codecs/cs4234.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_ratnum = type { i32, i32, i32, i32 }
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
%struct.cs4234 = type { ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], i32, %struct.completion, %struct.delayed_work, ptr, i32, i32, i32, [2 x %struct.snd_ratnum], %struct.snd_pcm_hw_constraint_ratnums }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_pcm_hw_constraint_ratnums = type { i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.92, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.92 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
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
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@__initcall__kmod_snd_soc_cs4234__312_914_cs4234_i2c_driver_init6 = internal global ptr @cs4234_i2c_driver_init, section ".initcall6.init", align 4
@cs4234_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cs4234_i2c_probe, ptr @cs4234_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cs4234_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs4234_pm, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cs4234_i2c_driver_exit = internal global ptr @cs4234_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description313 = internal constant [59 x i8] c"snd_soc_cs4234.description=ASoC Cirrus Logic CS4234 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author314 = internal constant [68 x i8] c"snd_soc_cs4234.author=Lucas Tanure <tanureal@opensource.cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [52 x i8] c"snd_soc_cs4234.file=sound/soc/codecs/snd-soc-cs4234\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [30 x i8] c"snd_soc_cs4234.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cs4234\00", [25 x i8] zeroinitializer }, align 32
@cs4234_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs4234\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cs4234_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs4234_runtime_suspend, ptr @cs4234_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&cs4234->vq_ramp_delay)->work)\00", [45 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&cs4234->vq_ramp_delay)->timer\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 763, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request core supplies %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cs4234_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/cs4234.c\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry_ptr = internal global ptr @cs4234_i2c_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 770, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get the mclk: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry_ptr.13 = internal global ptr @cs4234_i2c_probe._entry.11, section ".printk_index", align 4
@cs4234_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 776, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid Master Clock rate\0A\00", [37 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry_ptr.16 = internal global ptr @cs4234_i2c_probe._entry.14, section ".printk_index", align 4
@cs4234_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cs4234_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @cs4234_writeable_register, ptr @cs4234_readable_register, ptr @cs4234_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 34, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs4234_default_reg, i32 26, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cs4234:780:(&cs4234_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.7, i32 783, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry_ptr.20 = internal global ptr @cs4234_i2c_probe._entry.18, section ".printk_index", align 4
@cs4234_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.7, i32 793, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read DEVID: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry_ptr.23 = internal global ptr @cs4234_i2c_probe._entry.21, section ".printk_index", align 4
@cs4234_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str.7, i32 799, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown device ID: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry_ptr.26 = internal global ptr @cs4234_i2c_probe._entry.24, section ".printk_index", align 4
@cs4234_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.6, ptr @.str.7, i32 806, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read CS4234_REVID: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry_ptr.29 = internal global ptr @cs4234_i2c_probe._entry.27, section ".printk_index", align 4
@cs4234_i2c_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.6, ptr @.str.7, i32 811, ptr @.str.32, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Cirrus Logic CS4234, Alpha Rev: %02X, Numeric Rev: %02X\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry_ptr.33 = internal global ptr @cs4234_i2c_probe._entry.30, section ".printk_index", align 4
@cs4234_i2c_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.6, ptr @.str.7, i32 826, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid VA voltage\0A\00", [44 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry_ptr.36 = internal global ptr @cs4234_i2c_probe._entry.34, section ".printk_index", align 4
@cs4234_dividers = internal constant { [2 x %struct.snd_ratnum], [32 x i8] } { [2 x %struct.snd_ratnum] [%struct.snd_ratnum { i32 0, i32 4, i32 8, i32 2 }, %struct.snd_ratnum { i32 0, i32 2, i32 3, i32 1 }], [32 x i8] zeroinitializer }, align 32
@soc_component_cs4234 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @cs4234_snd_controls, i32 43, ptr @cs4234_dapm_widgets, i32 27, ptr @cs4234_dapm_routes, i32 27, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs4234_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 100, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cs4234_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.194, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs4234_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.193, i64 1103840149572, i32 2016, i32 0, i32 0, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.192, i64 1103840149572, i32 2016, i32 0, i32 0, i32 1, i32 5, i32 0 }, i8 -128, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.6, ptr @.str.7, i32 840, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register component:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@cs4234_i2c_probe._entry_ptr.39 = internal global ptr @cs4234_i2c_probe._entry.37, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VA\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VL\00", [29 x i8] zeroinitializer }, align 32
@cs4234_default_reg = internal constant { [26 x %struct.reg_default], [48 x i8] } { [26 x %struct.reg_default] [%struct.reg_default { i32 6, i32 4 }, %struct.reg_default { i32 7, i32 255 }, %struct.reg_default { i32 8, i32 72 }, %struct.reg_default { i32 9, i32 1 }, %struct.reg_default { i32 10, i32 255 }, %struct.reg_default { i32 11, i32 255 }, %struct.reg_default { i32 12, i32 255 }, %struct.reg_default { i32 13, i32 255 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 192 }, %struct.reg_default { i32 16, i32 255 }, %struct.reg_default { i32 17, i32 224 }, %struct.reg_default { i32 18, i32 224 }, %struct.reg_default { i32 19, i32 224 }, %struct.reg_default { i32 20, i32 191 }, %struct.reg_default { i32 21, i32 31 }, %struct.reg_default { i32 22, i32 135 }, %struct.reg_default { i32 23, i32 16 }, %struct.reg_default { i32 24, i32 16 }, %struct.reg_default { i32 25, i32 16 }, %struct.reg_default { i32 26, i32 16 }, %struct.reg_default { i32 27, i32 16 }, %struct.reg_default { i32 28, i32 16 }, %struct.reg_default { i32 30, i32 64 }, %struct.reg_default { i32 31, i32 16 }, %struct.reg_default { i32 32, i32 32 }], [48 x i8] zeroinitializer }, align 32
@cs4234_powerup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.7, i32 710, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable mclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cs4234_powerup\00", [17 x i8] zeroinitializer }, align 32
@cs4234_powerup._entry_ptr = internal global ptr @cs4234_powerup._entry, section ".printk_index", align 4
@cs4234_powerup._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.7, i32 716, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable core supplies: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cs4234_powerup._entry_ptr.47 = internal global ptr @cs4234_powerup._entry.45, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@cs4234_snd_controls = internal constant { [43 x %struct.snd_kcontrol_new], [528 x i8] } { [43 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @cs4234_dac14_grp_delay_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @cs4234_dac14_group_delay to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @cs4234_ll_noise_gate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @cs4234_dac14_noise_gate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @cs4234_dac5_noise_gate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @cs4234_dac5_config_fltr_sel to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @cs4234_mute_delay to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @cs4234_min_delay to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @cs4234_max_delay to i32) }], [528 x i8] zeroinitializer }, align 32
@cs4234_dapm_routes = internal constant { [27 x %struct.snd_soc_dapm_route], [324 x i8] } { [27 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.186, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }], [324 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Master Volume\00", [18 x i8] zeroinitializer }, align 32
@dac_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -8992, i32 38], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 23, i32 23, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 24, i32 24, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 25, i32 25, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC3 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 26, i32 26, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC4 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 27, i32 27, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC5 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 28, i32 28, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC5 Soft Ramp Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DAC1-4 Soft Ramp Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC HPF Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC1-4 Group Delay\00", [45 x i8] zeroinitializer }, align 32
@cs4234_dac14_group_delay = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 0, i8 0, i32 16, i32 15, ptr @cs4234_dac14_delay_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC1 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC2 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC3 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC4 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC1 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC2 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC3 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC4 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC5 Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC3 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC4 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC3 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC4 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC5 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Low-latency Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DAC1 Low-latency Invert Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DAC2 Low-latency Invert Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DAC3 Low-latency Invert Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DAC4 Low-latency Invert Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Low-latency Noise Gate\00", [41 x i8] zeroinitializer }, align 32
@cs4234_ll_noise_gate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 17, i8 5, i8 5, i32 8, i32 7, ptr @cs4234_noise_gate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC1-4 Noise Gate\00", [46 x i8] zeroinitializer }, align 32
@cs4234_dac14_noise_gate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 5, i8 5, i32 8, i32 7, ptr @cs4234_noise_gate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC5 Noise Gate\00", [16 x i8] zeroinitializer }, align 32
@cs4234_dac5_noise_gate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19, i8 5, i8 5, i32 8, i32 7, ptr @cs4234_noise_gate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DAC1-4 De-emphasis Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DAC5 De-emphasis Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DAC5 Master Controlled Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC5 Filter\00", [20 x i8] zeroinitializer }, align 32
@cs4234_dac5_config_fltr_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 0, i8 0, i32 2, i32 1, ptr @cs4234_dac5_config_fltr_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mute Delay\00", [21 x i8] zeroinitializer }, align 32
@cs4234_mute_delay = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 22, i8 6, i8 6, i32 4, i32 3, ptr @cs4234_mute_delay_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Ramp Minimum Delay\00", [45 x i8] zeroinitializer }, align 32
@cs4234_min_delay = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 22, i8 3, i8 3, i32 8, i32 7, ptr @cs4234_minmax_delay_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Ramp Maximum Delay\00", [45 x i8] zeroinitializer }, align 32
@cs4234_max_delay = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 22, i8 0, i8 0, i32 8, i32 7, ptr @cs4234_minmax_delay_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@cs4234_dac14_grp_delay_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.7, i32 99, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Can't change group delay while ADC are ON\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cs4234_dac14_grp_delay_put\00", [37 x i8] zeroinitializer }, align 32
@cs4234_dac14_grp_delay_put._entry_ptr = internal global ptr @cs4234_dac14_grp_delay_put._entry, section ".printk_index", align 4
@cs4234_dac14_grp_delay_put._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.7, i32 106, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Can't change group delay while DAC are ON\0A\00", [53 x i8] zeroinitializer }, align 32
@cs4234_dac14_grp_delay_put._entry_ptr.129 = internal global ptr @cs4234_dac14_grp_delay_put._entry.127, section ".printk_index", align 4
@cs4234_dac14_delay_text = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145], [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0us\00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100us\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"150us\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200us\00", [26 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"225us\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"250us\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"275us\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300us\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"325us\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"350us\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"375us\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"400us\00", [26 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"425us\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"450us\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"475us\00", [26 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"500us\00", [26 x i8] zeroinitializer }, align 32
@cs4234_noise_gate_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153], [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"72dB\00", [27 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"78dB\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"84dB\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"90dB\00", [27 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"96dB\00", [27 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"102dB\00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"138dB\00", [26 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@cs4234_dac5_config_fltr_sel_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.154, ptr @.str.155], [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Interpolation Filter\00", [43 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sample and Hold\00", [16 x i8] zeroinitializer }, align 32
@cs4234_mute_delay_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159], [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1x\00", [29 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4x\00", [29 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"16x\00", [28 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"64x\00", [28 x i8] zeroinitializer }, align 32
@cs4234_minmax_delay_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.156, ptr @.str.160, ptr @.str.157, ptr @.str.161, ptr @.str.158, ptr @.str.162, ptr @.str.159, ptr @.str.163], [32 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2x\00", [29 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"8x\00", [29 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"32x\00", [28 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"128x\00", [27 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDRX1\00", [26 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDRX2\00", [26 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDRX3\00", [26 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDRX4\00", [26 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDRX5\00", [26 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC1\00", [27 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC2\00", [27 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC3\00", [27 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC4\00", [27 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC5\00", [27 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AOUT1\00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AOUT2\00", [26 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AOUT3\00", [26 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AOUT4\00", [26 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AOUT5\00", [26 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN2\00", [27 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN3\00", [27 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN4\00", [27 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC1\00", [27 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC2\00", [27 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC3\00", [27 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC4\00", [27 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDTX1\00", [26 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDTX2\00", [26 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDTX3\00", [26 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDTX4\00", [26 x i8] zeroinitializer }, align 32
@cs4234_dapm_widgets = internal constant { [27 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1188 x i8] } { [27 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 2 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 3 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 4 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 2 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 3 }], [1188 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cs4234-dai\00", [21 x i8] zeroinitializer }, align 32
@cs4234_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @cs4234_dai_set_fmt, ptr null, ptr @cs4234_dai_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs4234_dai_startup, ptr null, ptr @cs4234_dai_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@cs4234_dai_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.7, i32 305, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported dai format\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs4234_dai_set_fmt\00", [45 x i8] zeroinitializer }, align 32
@cs4234_dai_set_fmt._entry_ptr = internal global ptr @cs4234_dai_set_fmt._entry, section ".printk_index", align 4
@cs4234_dai_set_fmt._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.196, ptr @.str.7, i32 314, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unsupported DSP A format in master mode\0A\00", [55 x i8] zeroinitializer }, align 32
@cs4234_dai_set_fmt._entry_ptr.199 = internal global ptr @cs4234_dai_set_fmt._entry.197, section ".printk_index", align 4
@cs4234_dai_set_fmt._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.196, ptr @.str.7, i32 320, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported master/slave mode\0A\00", [33 x i8] zeroinitializer }, align 32
@cs4234_dai_set_fmt._entry_ptr.202 = internal global ptr @cs4234_dai_set_fmt._entry.200, section ".printk_index", align 4
@cs4234_dai_set_fmt._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.196, ptr @.str.7, i32 331, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported inverted clock setting\0A\00", [60 x i8] zeroinitializer }, align 32
@cs4234_dai_set_fmt._entry_ptr.205 = internal global ptr @cs4234_dai_set_fmt._entry.203, section ".printk_index", align 4
@cs4234_dai_set_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.7, i32 531, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported slot width\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cs4234_dai_set_tdm_slot\00", [40 x i8] zeroinitializer }, align 32
@cs4234_dai_set_tdm_slot._entry_ptr = internal global ptr @cs4234_dai_set_tdm_slot._entry, section ".printk_index", align 4
@cs4234_dai_set_tdm_slot._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.207, ptr @.str.7, i32 539, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported tx slots allocation\0A\00", [63 x i8] zeroinitializer }, align 32
@cs4234_dai_set_tdm_slot._entry_ptr.210 = internal global ptr @cs4234_dai_set_tdm_slot._entry.208, section ".printk_index", align 4
@cs4234_dai_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.7, i32 501, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Startup unsupported DAI format\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs4234_dai_startup\00", [45 x i8] zeroinitializer }, align 32
@cs4234_dai_startup._entry_ptr = internal global ptr @cs4234_dai_startup._entry, section ".printk_index", align 4
@cs4234_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.7, i32 371, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported mclk/lrclk rate\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cs4234_dai_hw_params\00", [43 x i8] zeroinitializer }, align 32
@cs4234_dai_hw_params._entry_ptr = internal global ptr @cs4234_dai_hw_params._entry, section ".printk_index", align 4
@cs4234_dai_hw_params._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.214, ptr @.str.7, i32 389, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported LR clock\0A\00", [42 x i8] zeroinitializer }, align 32
@cs4234_dai_hw_params._entry_ptr.217 = internal global ptr @cs4234_dai_hw_params._entry.215, section ".printk_index", align 4
@cs4234_dai_hw_params._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.214, ptr @.str.7, i32 410, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported sample width\0A\00", [38 x i8] zeroinitializer }, align 32
@cs4234_dai_hw_params._entry_ptr.220 = internal global ptr @cs4234_dai_hw_params._entry.218, section ".printk_index", align 4
@cs4234_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.7, i32 878, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to sync regmap: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs4234_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@cs4234_runtime_resume._entry_ptr = internal global ptr @cs4234_runtime_resume._entry, section ".printk_index", align 4
@switch.table.cs4234_dai_hw_params = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 33, i64 34]
@__sancov_gen_cov_switch_values.223 = internal global [34 x i64] [i64 32, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 30, i64 31, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.224 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.225 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 31]
@__sancov_gen_cov_switch_values.228 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.229 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 384, i64 512]
@__sancov_gen_cov_switch_values.230 = internal global [8 x i64] [i64 6, i64 32, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000]
@___asan_gen_.231 = private unnamed_addr constant [18 x i8] c"cs4234_i2c_driver\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 905, i32 26 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 907, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant [16 x i8] c"cs4234_of_match\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 899, i32 34 }
@___asan_gen_.240 = private unnamed_addr constant [10 x i8] c"cs4234_pm\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 895, i32 32 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 749, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 751, i32 43 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 763, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 767, i32 35 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 770, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 776, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [14 x i8] c"cs4234_regmap\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 668, i32 35 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 780, i32 19 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 783, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 793, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 799, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 806, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 810, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 826, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [16 x i8] c"cs4234_dividers\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 430, i32 32 }
@___asan_gen_.342 = private unnamed_addr constant [21 x i8] c"soc_component_cs4234\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 655, i32 46 }
@___asan_gen_.345 = private unnamed_addr constant [11 x i8] c"cs4234_dai\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 570, i32 34 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 840, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 87, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 684, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 685, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [19 x i8] c"cs4234_default_reg\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 592, i32 33 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 710, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 716, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c"cs4234_snd_controls\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 219, i32 38 }
@___asan_gen_.387 = private unnamed_addr constant [19 x i8] c"cs4234_dapm_routes\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 182, i32 40 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 220, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 45, i32 14 }
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 221, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 222, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 223, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 224, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 225, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 227, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 228, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 230, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 232, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [25 x i8] c"cs4234_dac14_group_delay\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 51, i32 8 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 235, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 236, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 237, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 238, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 240, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 241, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 242, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 243, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 244, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 246, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 247, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 248, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 249, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 251, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 252, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 253, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 254, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 255, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 256, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 258, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 260, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 262, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 264, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 267, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [21 x i8] c"cs4234_ll_noise_gate\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 57, i32 8 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 268, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant [24 x i8] c"cs4234_dac14_noise_gate\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 59, i32 8 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 269, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [23 x i8] c"cs4234_dac5_noise_gate\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 61, i32 8 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 271, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 273, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 276, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 279, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant [28 x i8] c"cs4234_dac5_config_fltr_sel\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 67, i32 8 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 281, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [18 x i8] c"cs4234_mute_delay\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 74, i32 8 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 282, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [17 x i8] c"cs4234_min_delay\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 80, i32 8 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 283, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant [17 x i8] c"cs4234_max_delay\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 82, i32 8 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 99, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 106, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant [24 x i8] c"cs4234_dac14_delay_text\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 47, i32 27 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 48, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 48, i32 11 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 48, i32 20 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 48, i32 29 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 48, i32 38 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 48, i32 47 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 48, i32 56 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 48, i32 65 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 49, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 49, i32 11 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 49, i32 20 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 49, i32 29 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 49, i32 38 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 49, i32 47 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 49, i32 56 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 49, i32 65 }
@___asan_gen_.647 = private unnamed_addr constant [23 x i8] c"cs4234_noise_gate_text\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 54, i32 27 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 55, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 55, i32 11 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 55, i32 20 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 55, i32 28 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 55, i32 36 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 55, i32 44 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 55, i32 53 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 55, i32 62 }
@___asan_gen_.674 = private unnamed_addr constant [33 x i8] c"cs4234_dac5_config_fltr_sel_text\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 64, i32 27 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 65, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 65, i32 26 }
@___asan_gen_.683 = private unnamed_addr constant [23 x i8] c"cs4234_mute_delay_text\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 71, i32 27 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 72, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 72, i32 9 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 72, i32 16 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 72, i32 23 }
@___asan_gen_.698 = private unnamed_addr constant [25 x i8] c"cs4234_minmax_delay_text\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 77, i32 27 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 78, i32 9 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 78, i32 22 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 78, i32 36 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 78, i32 50 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 148, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 149, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 150, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 151, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 152, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 154, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 155, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 156, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 157, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 158, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 160, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 161, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 162, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 163, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 164, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 166, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 167, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 168, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 169, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 171, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 172, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 173, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 174, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 176, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 177, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 178, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 179, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant [20 x i8] c"cs4234_dapm_widgets\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 147, i32 41 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 196, i32 19 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 213, i32 4 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 572, i32 11 }
@___asan_gen_.806 = private unnamed_addr constant [15 x i8] c"cs4234_dai_ops\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 563, i32 37 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 305, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 314, i32 4 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 320, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 331, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 531, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 539, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 501, i32 3 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 371, i32 3 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 389, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 410, i32 3 }
@___asan_gen_.881 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.887 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.888 = private constant [29 x i8] c"../sound/soc/codecs/cs4234.c\00", align 1
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.888, i32 878, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant [34 x i8] c"switch.table.cs4234_dai_hw_params\00", align 1
@llvm.compiler.used = appending global [276 x ptr] [ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_cs4234_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_cs4234__312_914_cs4234_i2c_driver_init6, ptr @cs4234_dac14_grp_delay_put._entry, ptr @cs4234_dac14_grp_delay_put._entry.127, ptr @cs4234_dac14_grp_delay_put._entry_ptr, ptr @cs4234_dac14_grp_delay_put._entry_ptr.129, ptr @cs4234_dai_hw_params._entry, ptr @cs4234_dai_hw_params._entry.215, ptr @cs4234_dai_hw_params._entry.218, ptr @cs4234_dai_hw_params._entry_ptr, ptr @cs4234_dai_hw_params._entry_ptr.217, ptr @cs4234_dai_hw_params._entry_ptr.220, ptr @cs4234_dai_set_fmt._entry, ptr @cs4234_dai_set_fmt._entry.197, ptr @cs4234_dai_set_fmt._entry.200, ptr @cs4234_dai_set_fmt._entry.203, ptr @cs4234_dai_set_fmt._entry_ptr, ptr @cs4234_dai_set_fmt._entry_ptr.199, ptr @cs4234_dai_set_fmt._entry_ptr.202, ptr @cs4234_dai_set_fmt._entry_ptr.205, ptr @cs4234_dai_set_tdm_slot._entry, ptr @cs4234_dai_set_tdm_slot._entry.208, ptr @cs4234_dai_set_tdm_slot._entry_ptr, ptr @cs4234_dai_set_tdm_slot._entry_ptr.210, ptr @cs4234_dai_startup._entry, ptr @cs4234_dai_startup._entry_ptr, ptr @cs4234_i2c_driver_exit, ptr @cs4234_i2c_probe._entry, ptr @cs4234_i2c_probe._entry.11, ptr @cs4234_i2c_probe._entry.14, ptr @cs4234_i2c_probe._entry.18, ptr @cs4234_i2c_probe._entry.21, ptr @cs4234_i2c_probe._entry.24, ptr @cs4234_i2c_probe._entry.27, ptr @cs4234_i2c_probe._entry.30, ptr @cs4234_i2c_probe._entry.34, ptr @cs4234_i2c_probe._entry.37, ptr @cs4234_i2c_probe._entry_ptr, ptr @cs4234_i2c_probe._entry_ptr.13, ptr @cs4234_i2c_probe._entry_ptr.16, ptr @cs4234_i2c_probe._entry_ptr.20, ptr @cs4234_i2c_probe._entry_ptr.23, ptr @cs4234_i2c_probe._entry_ptr.26, ptr @cs4234_i2c_probe._entry_ptr.29, ptr @cs4234_i2c_probe._entry_ptr.33, ptr @cs4234_i2c_probe._entry_ptr.36, ptr @cs4234_i2c_probe._entry_ptr.39, ptr @cs4234_powerup._entry, ptr @cs4234_powerup._entry.45, ptr @cs4234_powerup._entry_ptr, ptr @cs4234_powerup._entry_ptr.47, ptr @cs4234_runtime_resume._entry, ptr @cs4234_runtime_resume._entry_ptr, ptr @cs4234_i2c_driver, ptr @.str, ptr @cs4234_of_match, ptr @cs4234_pm, ptr @cs4234_i2c_probe.__key, ptr @.str.1, ptr @cs4234_i2c_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @cs4234_i2c_probe._key, ptr @cs4234_regmap, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @cs4234_dividers, ptr @soc_component_cs4234, ptr @cs4234_dai, ptr @.str.38, ptr @init_completion.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @cs4234_default_reg, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @cs4234_snd_controls, ptr @cs4234_dapm_routes, ptr @.str.48, ptr @dac_tlv, ptr @.compoundliteral, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @cs4234_dac14_group_delay, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @cs4234_ll_noise_gate, ptr @.str.113, ptr @cs4234_dac14_noise_gate, ptr @.str.114, ptr @cs4234_dac5_noise_gate, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @cs4234_dac5_config_fltr_sel, ptr @.str.122, ptr @cs4234_mute_delay, ptr @.str.123, ptr @cs4234_min_delay, ptr @.str.124, ptr @cs4234_max_delay, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @cs4234_dac14_delay_text, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @cs4234_noise_gate_text, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @cs4234_dac5_config_fltr_sel_text, ptr @.str.154, ptr @.str.155, ptr @cs4234_mute_delay_text, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @cs4234_minmax_delay_text, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @cs4234_dapm_widgets, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @cs4234_dai_ops, ptr @.str.195, ptr @.str.196, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.209, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.216, ptr @.str.219, ptr @.str.221, ptr @.str.222, ptr @switch.table.cs4234_dai_hw_params], section "llvm.metadata"
@0 = internal global [244 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dividers to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_cs4234 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_i2c_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_default_reg to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_powerup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_powerup._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_snd_controls to i32), i32 2064, i32 2592, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dapm_routes to i32), i32 1404, i32 1728, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dac14_group_delay to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_ll_noise_gate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dac14_noise_gate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dac5_noise_gate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dac5_config_fltr_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_mute_delay to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_min_delay to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_max_delay to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dac14_grp_delay_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dac14_grp_delay_put._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dac14_delay_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_noise_gate_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dac5_config_fltr_sel_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_mute_delay_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_minmax_delay_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dapm_widgets to i32), i32 4860, i32 6048, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dai_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dai_set_fmt._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dai_set_fmt._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dai_set_fmt._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dai_set_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dai_set_tdm_slot._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dai_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dai_hw_params._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_dai_hw_params._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4234_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs4234_dai_hw_params to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4234_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cs4234_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs4234_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @cs4234_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4234_i2c_probe(ptr noundef %i2c_client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %revid = alloca i32, align 4
  %ids = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %revid) #7
  %0 = ptrtoint ptr %revid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %revid, align 4, !annotation !420
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ids) #7
  %1 = ptrtoint ptr %ids to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ids, align 1, !annotation !420
  %2 = getelementptr inbounds [3 x i8], ptr %ids, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !420
  %4 = getelementptr inbounds [3 x i8], ptr %ids, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !420
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 252, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %vq_ramp_complete = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %vq_ramp_complete to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %vq_ramp_complete, align 4
  %wait.i = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #7
  %vq_ramp_delay = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %vq_ramp_delay, i32 noundef 0) #7
  %9 = ptrtoint ptr %vq_ramp_delay to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %vq_ramp_delay, align 4
  %lockdep_map = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @cs4234_i2c_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry10 = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %10 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 6, i32 0, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cs4234_vq_ramp_done, ptr %func, align 4
  %timer = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @cs4234_i2c_probe.__key.2) #7
  %call19 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 3) #7
  %reset_gpio = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call19, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %do.end28

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call19 to i32
  br label %cleanup

do.end28:                                         ; preds = %if.end
  %num_core_supplies = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %num_core_supplies, align 4
  %arrayidx29 = getelementptr %struct.cs4234, ptr %call.i, i32 0, i32 3, i32 0
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.41, ptr %arrayidx29, align 4
  %arrayidx29.1 = getelementptr %struct.cs4234, ptr %call.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.42, ptr %arrayidx29.1, align 4
  %call32 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %arrayidx29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end38, label %do.end37

do.end37:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %call32) #10
  br label %cleanup

if.end38:                                         ; preds = %do.end28
  %call39 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  %mclk = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call39, ptr %mclk, align 4
  %cmp.i220 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then42, label %if.end48

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %19) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end38
  %call50 = tail call i32 @clk_get_rate(ptr noundef %call39) #7
  %mclk_rate = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call50, ptr %mclk_rate, align 4
  %21 = add i32 %call50, -25600001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17920001, i32 %21)
  %22 = icmp ult i32 %21, -17920001
  br i1 %22, label %do.end58, label %if.end59

do.end58:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end59:                                         ; preds = %if.end48
  %call60 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c_client, ptr noundef nonnull @cs4234_regmap, ptr noundef nonnull @cs4234_i2c_probe._key, ptr noundef nonnull @.str.17) #7
  %regmap = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call60, ptr %regmap, align 4
  %cmp.i221 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221, label %if.then63, label %if.end69

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call60 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %24) #10
  br label %cleanup

if.end69:                                         ; preds = %if.end59
  %call70 = tail call fastcc i32 @cs4234_powerup(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end73:                                         ; preds = %if.end69
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call76 = call i32 @regmap_bulk_read(ptr noundef %26, i32 noundef 1, ptr noundef nonnull %ids, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end81, label %if.end82

do.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call76) #10
  br label %fail_shutdown

if.end82:                                         ; preds = %if.end73
  %27 = ptrtoint ptr %ids to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ids, align 1
  %conv = zext i8 %28 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %2, align 1
  %conv85 = zext i8 %30 to i32
  %shl86 = shl nuw nsw i32 %conv85, 8
  %or = or i32 %shl86, %shl
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %4, align 1
  %conv88 = zext i8 %32 to i32
  %or89 = or i32 %or, %conv88
  call void @__sanitizer_cov_trace_const_cmp4(i32 4338688, i32 %or89)
  %cmp90.not = icmp eq i32 %or89, 4338688
  br i1 %cmp90.not, label %if.end96, label %do.end95

do.end95:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %or89) #10
  br label %fail_shutdown

if.end96:                                         ; preds = %if.end82
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call98 = call i32 @regmap_read(ptr noundef %34, i32 noundef 5, ptr noundef nonnull %revid) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %do.end104, label %do.end108

do.end104:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call98) #10
  br label %fail_shutdown

do.end108:                                        ; preds = %if.end96
  %35 = ptrtoint ptr %revid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %revid, align 4
  %and = lshr i32 %36, 4
  %shr = and i32 %and, 15
  %and109 = and i32 %36, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %shr, i32 noundef %and109) #10
  %consumer = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %37 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %consumer, align 4
  %call112 = call i32 @regulator_get_voltage(ptr noundef %38) #7
  %39 = add i32 %call112, -4750000
  call void @__sanitizer_cov_trace_const_cmp4(i32 500001, i32 %39)
  %inbounds119 = icmp ult i32 %39, 500001
  br i1 %inbounds119, label %do.end108.sw.epilog_crit_edge, label %sw.caserange

do.end108.sw.epilog_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.caserange:                                     ; preds = %do.end108
  %40 = add i32 %call112, -3135000
  call void @__sanitizer_cov_trace_const_cmp4(i32 515001, i32 %40)
  %inbounds = icmp ult i32 %40, 515001
  br i1 %inbounds, label %sw.caserange.sw.epilog_crit_edge, label %do.end122

sw.caserange.sw.epilog_crit_edge:                 ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end122:                                        ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35) #10
  br label %fail_shutdown

sw.epilog:                                        ; preds = %sw.caserange.sw.epilog_crit_edge, %do.end108.sw.epilog_crit_edge
  %.sink226 = phi i32 [ 0, %sw.caserange.sw.epilog_crit_edge ], [ 32, %do.end108.sw.epilog_crit_edge ]
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call.i223 = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 15, i32 noundef 32, i32 noundef %.sink226, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i224 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %rate_dividers = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 11
  %43 = call ptr @memcpy(ptr %rate_dividers, ptr @cs4234_dividers, i32 32)
  %rats = getelementptr inbounds %struct.cs4234, ptr %call.i, i32 0, i32 12, i32 1
  %44 = ptrtoint ptr %rats to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %rate_dividers, ptr %rats, align 4
  %call128 = call i32 @snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @soc_component_cs4234, ptr noundef nonnull @cs4234_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %do.end134, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end134:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %call128) #10
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %fail_shutdown

fail_shutdown:                                    ; preds = %do.end134, %do.end122, %do.end104, %do.end95, %do.end81
  %ret.0 = phi i32 [ %call76, %do.end81 ], [ -22, %do.end95 ], [ %call98, %do.end104 ], [ %call128, %do.end134 ], [ -22, %do.end122 ]
  call fastcc void @cs4234_shutdown(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %fail_shutdown, %sw.epilog.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.then63, %do.end58, %if.then42, %do.end37, %if.then22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then22 ], [ %call32, %do.end37 ], [ %19, %if.then42 ], [ -22, %do.end58 ], [ %24, %if.then63 ], [ %ret.0, %fail_shutdown ], [ -12, %entry.cleanup_crit_edge ], [ %call70, %if.end69.cleanup_crit_edge ], [ %call128, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ids) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %revid) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4234_i2c_remove(ptr noundef %i2c_client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4
  tail call void @snd_soc_unregister_component(ptr noundef %dev1) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  tail call fastcc void @cs4234_shutdown(ptr noundef %1)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs4234_vq_ramp_done(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vq_ramp_complete = getelementptr i8, ptr %work, i32 -56
  tail call void @complete_all(ptr noundef %vq_ramp_complete) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs4234_powerup(ptr noundef %cs4234) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mclk = getelementptr inbounds %struct.cs4234, ptr %cs4234, i32 0, i32 7
  %0 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %2 = ptrtoint ptr %cs4234 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cs4234, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %num_core_supplies = getelementptr inbounds %struct.cs4234, ptr %cs4234, i32 0, i32 4
  %4 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_core_supplies, align 4
  %core_supplies = getelementptr inbounds %struct.cs4234, ptr %cs4234, i32 0, i32 3
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef %5, ptr noundef %core_supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %cs4234 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cs4234, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.46, i32 noundef %call1) #10
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %reset_gpio = getelementptr inbounds %struct.cs4234, ptr %cs4234, i32 0, i32 2
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %12 = load ptr, ptr @system_power_efficient_wq, align 4
  %vq_ramp_delay = getelementptr inbounds %struct.cs4234, ptr %cs4234, i32 0, i32 6
  %call.i24 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %vq_ramp_delay, i32 noundef 100) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end6, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call1, %do.end6 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs4234_shutdown(ptr noundef %cs4234) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vq_ramp_delay = getelementptr inbounds %struct.cs4234, ptr %cs4234, i32 0, i32 6
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %vq_ramp_delay) #7
  %vq_ramp_complete = getelementptr inbounds %struct.cs4234, ptr %cs4234, i32 0, i32 5
  %0 = ptrtoint ptr %vq_ramp_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %vq_ramp_complete, align 4
  %regmap = getelementptr inbounds %struct.cs4234, ptr %cs4234, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 21, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @msleep(i32 noundef 50) #7
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %4, i1 noundef zeroext true) #7
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 21, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %reset_gpio = getelementptr inbounds %struct.cs4234, ptr %cs4234, i32 0, i32 2
  %7 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 0) #7
  %num_core_supplies = getelementptr inbounds %struct.cs4234, ptr %cs4234, i32 0, i32 4
  %9 = ptrtoint ptr %num_core_supplies to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_core_supplies, align 4
  %core_supplies = getelementptr inbounds %struct.cs4234, ptr %cs4234, i32 0, i32 3
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef %10, ptr noundef %core_supplies) #7
  %mclk = getelementptr inbounds %struct.cs4234, ptr %cs4234, i32 0, i32 7
  %11 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %12) #7
  tail call void @clk_unprepare(ptr noundef %12) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs4234_writeable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 33, label %entry.return_crit_edge
    i32 34, label %entry.return_crit_edge2
    i32 1, label %entry.return_crit_edge3
    i32 2, label %entry.return_crit_edge4
    i32 3, label %entry.return_crit_edge5
    i32 4, label %entry.return_crit_edge6
    i32 5, label %entry.return_crit_edge7
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7
  %retval.0 = phi i1 [ true, %sw.default ], [ false, %entry.return_crit_edge ], [ false, %entry.return_crit_edge2 ], [ false, %entry.return_crit_edge3 ], [ false, %entry.return_crit_edge4 ], [ false, %entry.return_crit_edge5 ], [ false, %entry.return_crit_edge6 ], [ false, %entry.return_crit_edge7 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs4234_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %reg, label %sw.default [
    i32 30, label %entry.return_crit_edge
    i32 31, label %entry.return_crit_edge3
    i32 32, label %entry.return_crit_edge4
    i32 33, label %entry.return_crit_edge5
    i32 34, label %entry.return_crit_edge6
    i32 5, label %entry.return_crit_edge7
    i32 6, label %entry.return_crit_edge8
    i32 7, label %entry.return_crit_edge9
    i32 8, label %entry.return_crit_edge10
    i32 9, label %entry.return_crit_edge11
    i32 10, label %entry.return_crit_edge12
    i32 11, label %entry.return_crit_edge13
    i32 12, label %entry.return_crit_edge14
    i32 13, label %entry.return_crit_edge15
    i32 14, label %entry.return_crit_edge16
    i32 15, label %entry.return_crit_edge17
    i32 16, label %entry.return_crit_edge18
    i32 17, label %entry.return_crit_edge19
    i32 18, label %entry.return_crit_edge20
    i32 19, label %entry.return_crit_edge21
    i32 20, label %entry.return_crit_edge22
    i32 21, label %entry.return_crit_edge23
    i32 22, label %entry.return_crit_edge24
    i32 23, label %entry.return_crit_edge25
    i32 24, label %entry.return_crit_edge26
    i32 25, label %entry.return_crit_edge27
    i32 26, label %entry.return_crit_edge28
    i32 27, label %entry.return_crit_edge29
    i32 28, label %entry.return_crit_edge30
    i32 1, label %entry.return_crit_edge31
    i32 2, label %entry.return_crit_edge32
    i32 3, label %entry.return_crit_edge33
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs4234_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 2
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4234_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %level)
  %cond = icmp eq i32 %level, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog4_crit_edge

entry.sw.epilog4_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog4

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %4 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cond5 = icmp eq i32 %5, 1
  br i1 %cond5, label %sw.bb2, label %sw.bb.sw.epilog4_crit_edge

sw.bb.sw.epilog4_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog4

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %vq_ramp_complete = getelementptr inbounds %struct.cs4234, ptr %3, i32 0, i32 5
  tail call void @wait_for_completion(ptr noundef %vq_ramp_complete) #7
  br label %sw.epilog4

sw.epilog4:                                       ; preds = %sw.bb2, %sw.bb.sw.epilog4_crit_edge, %entry.sw.epilog4_crit_edge
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4234_dac14_grp_delay_put(ptr noundef %kctrl, ptr noundef %uctrl) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kctrl, i32 0, i32 8
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17, i32 4
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #7
  %regmap = getelementptr inbounds %struct.cs4234, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %10, i32 noundef 16, ptr noundef nonnull %val) #7
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp.not = icmp eq i32 %and, 15
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.125) #10
  br label %exit

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_read(ptr noundef %16, i32 noundef 21, ptr noundef nonnull %val) #7
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and6 = and i32 %18, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 31
  br i1 %cmp7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.128) #10
  br label %exit

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 @snd_soc_put_enum_double(ptr noundef %kctrl, ptr noundef %uctrl) #7
  br label %exit

exit:                                             ; preds = %if.end13, %if.then8, %if.then
  %ret.0 = phi i32 [ -16, %if.then ], [ -16, %if.then8 ], [ %call14, %if.end13 ]
  %21 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i22 = getelementptr inbounds %struct.snd_soc_card, ptr %22, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %dapm_mutex.i22) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4234_dai_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %format) #2 align 64 {
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
  %and = and i32 %format, 15
  %format2 = getelementptr inbounds %struct.cs4234, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %format2, align 4
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %and, label %do.end [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb4
    i32 4, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.195) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %entry.sw.epilog_crit_edge
  %sp_ctrl.0 = phi i32 [ 8, %sw.bb6 ], [ 4, %sw.bb4 ], [ 0, %entry.sw.epilog_crit_edge ]
  %10 = trunc i32 %format to i16
  %trunc = and i16 %10, -4096
  %11 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.225)
  switch i16 %trunc, label %do.end19 [
    i16 16384, label %sw.epilog.sw.epilog21_crit_edge
    i16 4096, label %sw.bb9
  ]

sw.epilog.sw.epilog21_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %do.end13, label %if.end

do.end13:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.198) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %or15 = or i32 %sp_ctrl.0, 1
  br label %sw.epilog21

do.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.201) #10
  br label %cleanup

sw.epilog21:                                      ; preds = %if.end, %sw.epilog.sw.epilog21_crit_edge
  %sp_ctrl.1 = phi i32 [ %or15, %if.end ], [ %sp_ctrl.0, %sw.epilog.sw.epilog21_crit_edge ]
  %and22 = and i32 %format, 3840
  %16 = zext i32 %and22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %and22, label %do.end28 [
    i32 0, label %sw.epilog21.sw.epilog30_crit_edge
    i32 768, label %sw.bb23
  ]

sw.epilog21.sw.epilog30_crit_edge:                ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog30

sw.bb23:                                          ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  %or24 = or i32 %sp_ctrl.1, 128
  br label %sw.epilog30

do.end28:                                         ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.204) #10
  br label %cleanup

sw.epilog30:                                      ; preds = %sw.bb23, %sw.epilog21.sw.epilog30_crit_edge
  %sp_ctrl.2 = phi i32 [ %or24, %sw.bb23 ], [ %sp_ctrl.1, %sw.epilog21.sw.epilog30_crit_edge ]
  %regmap = getelementptr inbounds %struct.cs4234, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 8, i32 noundef 141, i32 noundef %sp_ctrl.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog30, %do.end28, %do.end19, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end19 ], [ -22, %do.end13 ], [ -22, %do.end28 ], [ 0, %sw.epilog30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4234_dai_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  %dac5_masks = alloca [4 x i8], align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dac5_masks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %slot_width)
  %cmp.not = icmp eq i32 %slot_width, 32
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.206) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.cttz.i32(i32 %tx_mask, i1 true), !range !421
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %iszero = icmp eq i32 %tx_mask, 0
  %sub = select i1 %iszero, i32 -1, i32 %6
  %shr = lshr i32 %tx_mask, %sub
  %rem = and i32 %sub, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

lor.lhs.false:                                    ; preds = %if.end
  %7 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %shr, label %lor.lhs.false.do.end7_crit_edge [
    i32 15, label %lor.lhs.false.if.end9_crit_edge
    i32 31, label %lor.lhs.false.if.end9_crit_edge48
  ]

lor.lhs.false.if.end9_crit_edge48:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

lor.lhs.false.do.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end7:                                          ; preds = %lor.lhs.false.do.end7_crit_edge, %if.end.do.end7_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.209) #10
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false.if.end9_crit_edge, %lor.lhs.false.if.end9_crit_edge48
  %regmap = getelementptr inbounds %struct.cs4234, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %div45 = lshr i32 %sub, 2
  %shl = shl nuw nsw i32 %div45, 3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9, i32 noundef 56, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 9, i32 noundef 7, i32 noundef %div45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %shr)
  %cmp15 = icmp eq i32 %shr, 31
  br i1 %cmp15, label %if.then16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %sub, 4
  %12 = ptrtoint ptr %dac5_masks to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %dac5_masks, align 4
  %div1746 = lshr i32 %add, 3
  %rem18 = and i32 %add, 7
  %sub19 = xor i32 %rem18, 7
  %shl20 = shl nuw i32 1, %sub19
  %arrayidx = getelementptr [4 x i8], ptr %dac5_masks, i32 0, i32 %div1746
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = trunc i32 %shl20 to i8
  %conv21 = xor i8 %14, %15
  store i8 %conv21, ptr %arrayidx, align 1
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call24 = call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef 10, ptr noundef nonnull %dac5_masks, i32 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ 0, %if.then16 ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dac5_masks) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4234_dai_startup(ptr nocapture noundef readonly %sub, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %format = getelementptr inbounds %struct.cs4234, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %7, label %do.end [
    i32 3, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge49
    i32 4, label %sw.bb10
  ]

entry.sw.bb_crit_edge49:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge49
  %rate_constraint = getelementptr inbounds %struct.cs4234, ptr %5, i32 0, i32 12
  %9 = ptrtoint ptr %rate_constraint to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %rate_constraint, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 11
  %12 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime, align 4
  %call1 = tail call i32 @snd_pcm_hw_constraint_mask64(ptr noundef %13, i32 noundef 1, i64 noundef 4294967360) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %call5 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %15, i32 noundef 10, i32 noundef 1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rate_constraint11 = getelementptr inbounds %struct.cs4234, ptr %5, i32 0, i32 12
  %16 = ptrtoint ptr %rate_constraint11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %rate_constraint11, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.211) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10, %if.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %rate_constraint13 = getelementptr inbounds %struct.cs4234, ptr %5, i32 0, i32 12
  %17 = ptrtoint ptr %rate_constraint13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rate_constraint13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1547 = icmp sgt i32 %18, 0
  br i1 %cmp1547, label %for.body.lr.ph, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %mclk_rate = getelementptr inbounds %struct.cs4234, ptr %5, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %19 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mclk_rate, align 4
  %div46 = lshr i32 %20, 6
  %arrayidx = getelementptr %struct.cs4234, ptr %5, i32 0, i32 11, i32 %i.048
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div46, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.048, 1
  %22 = ptrtoint ptr %rate_constraint13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate_constraint13, align 4
  %cmp15 = icmp slt i32 %inc, %23
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %runtime16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 11
  %24 = ptrtoint ptr %runtime16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime16, align 4
  %call18 = tail call i32 @snd_pcm_hw_constraint_ratnums(ptr noundef %25, i32 noundef 0, i32 noundef 11, ptr noundef %rate_constraint13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %for.end.cleanup_crit_edge, label %if.end21

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %runtime16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %runtime16, align 4
  %call23 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %27, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @cs4234_dai_rule_rate, ptr noundef %5, i32 noundef -1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %for.end.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call23, %if.end21 ], [ %call1, %if.then.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call18, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4234_dai_hw_params(ptr nocapture noundef readonly %sub, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %lrclk_rate = getelementptr inbounds %struct.cs4234, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %lrclk_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lrclk_rate, align 4
  %mclk_rate = getelementptr inbounds %struct.cs4234, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk_rate, align 4
  %div = udiv i32 %10, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %7)
  %cmp = icmp ugt i32 %7, 48000
  %mul = zext i1 %cmp to i32
  %spec.select = shl i32 %div, %mul
  %11 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %spec.select, label %do.end [
    i32 256, label %entry.sw.bb_crit_edge
    i32 384, label %entry.sw.bb_crit_edge78
    i32 512, label %entry.sw.bb_crit_edge79
  ]

entry.sw.bb_crit_edge79:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge78:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge78, %entry.sw.bb_crit_edge79
  %spec.select73 = select i1 %cmp, i32 16, i32 0
  %regmap = getelementptr inbounds %struct.cs4234, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 6, i32 noundef 48, i32 noundef %spec.select73, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = lshr i32 %spec.select, 6
  %sub8 = and i32 %16, 67108862
  %shl9 = add nsw i32 %sub8, -4
  %call.i74 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 6, i32 noundef 14, i32 noundef %shl9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = ptrtoint ptr %lrclk_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lrclk_rate, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %18, label %do.end18 [
    i32 48000, label %sw.bb.sw.epilog20_crit_edge
    i32 96000, label %sw.bb.sw.epilog20_crit_edge80
    i32 44100, label %sw.bb.sw.bb13_crit_edge
    i32 88200, label %sw.bb.sw.bb13_crit_edge81
    i32 32000, label %sw.bb.sw.bb14_crit_edge
    i32 64000, label %sw.bb.sw.bb14_crit_edge82
  ]

sw.bb.sw.bb14_crit_edge82:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

sw.bb.sw.bb14_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

sw.bb.sw.bb13_crit_edge81:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

sw.bb.sw.bb13_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

sw.bb.sw.epilog20_crit_edge80:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog20

sw.bb.sw.epilog20_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.213) #10
  br label %cleanup

sw.bb13:                                          ; preds = %sw.bb.sw.bb13_crit_edge, %sw.bb.sw.bb13_crit_edge81
  br label %sw.epilog20

sw.bb14:                                          ; preds = %sw.bb.sw.bb14_crit_edge, %sw.bb.sw.bb14_crit_edge82
  br label %sw.epilog20

do.end18:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.216) #10
  br label %cleanup

sw.epilog20:                                      ; preds = %sw.bb14, %sw.bb13, %sw.bb.sw.epilog20_crit_edge, %sw.bb.sw.epilog20_crit_edge80
  %rate_ad.0 = phi i32 [ 128, %sw.bb14 ], [ 64, %sw.bb13 ], [ 0, %sw.bb.sw.epilog20_crit_edge ], [ 0, %sw.bb.sw.epilog20_crit_edge80 ]
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i75 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 6, i32 noundef 192, i32 noundef %rate_ad.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %sw.epilog20.if.then.i.i.i_crit_edge

sw.epilog20.if.then.i.i.i_crit_edge:              ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %sw.epilog20.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %sw.epilog20.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %27, %sw.epilog20.if.then.i.i.i_crit_edge ], [ %30, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %28 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !421
  %add.i.i.i = or i32 %28, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %sw.epilog20
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.1.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  %switch.tableidx = add i32 %call1.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %31 = icmp ult i32 %switch.tableidx, 9
  br i1 %31, label %switch.hole_check, label %params_width.exit.do.end32_crit_edge

params_width.exit.do.end32_crit_edge:             ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

do.end32:                                         ; preds = %switch.hole_check.do.end32_crit_edge, %params_width.exit.do.end32_crit_edge
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.219) #10
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 277, %switch.maskindex
  %34 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %switch.lobit.not = icmp eq i16 %34, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end32_crit_edge, label %switch.lookup

switch.hole_check.do.end32_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.cs4234_dai_hw_params, i32 0, i32 %switch.tableidx
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load = load i32, ptr %switch.gep, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 5
  %36 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp35 = icmp eq i32 %37, 1
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %shl38 = shl nuw nsw i32 %switch.load, 6
  %call.i76 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 7, i32 noundef 192, i32 noundef %shl38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %or44 = mul nuw nsw i32 %switch.load, 21
  %call.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 7, i32 noundef 63, i32 noundef %or44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then36, %do.end32, %do.end18, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ -22, %do.end32 ], [ 0, %if.else ], [ 0, %if.then36 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_mask64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_ratnums(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4234_dai_rule_rate(ptr noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  %ranges = alloca [2 x %struct.snd_interval], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %mclk_rate = getelementptr inbounds %struct.cs4234, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk_rate, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ranges) #7
  %4 = getelementptr inbounds i8, ptr %ranges, i32 8
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7709999, i32 %3)
  %cmp = icmp sgt i32 %3, 7709999
  %div = sdiv i32 %3, 30000
  %6 = tail call i32 @llvm.smin.i32(i32 %div, i32 512)
  %7 = select i1 %cmp, i32 %6, i32 256
  %div7 = sdiv i32 %3, %7
  %8 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div7, ptr %ranges, align 4
  %max = getelementptr inbounds %struct.snd_interval, ptr %ranges, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12849999, i32 %3)
  %cmp10 = icmp sgt i32 %3, 12849999
  %div8 = sdiv i32 %3, 50000
  %9 = tail call i32 @llvm.smin.i32(i32 %div8, i32 512)
  %10 = select i1 %cmp10, i32 %9, i32 256
  %div21 = sdiv i32 %3, %10
  %11 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div21, ptr %max, align 4
  %openmin = getelementptr inbounds %struct.snd_interval, ptr %ranges, i32 0, i32 2
  %12 = ptrtoint ptr %openmin to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 15, ptr %openmin, align 4
  %arrayinit.element = getelementptr inbounds %struct.snd_interval, ptr %ranges, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7739999, i32 %3)
  %cmp34 = icmp sgt i32 %3, 7739999
  %div32 = sdiv i32 %3, 60000
  %13 = tail call i32 @llvm.smin.i32(i32 %div32, i32 256)
  %14 = select i1 %cmp34, i32 %13, i32 128
  %div45 = sdiv i32 %3, %14
  %15 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div45, ptr %arrayinit.element, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12899999, i32 %3)
  %cmp49 = icmp sgt i32 %3, 12899999
  %div47 = sdiv i32 %3, 100000
  %16 = tail call i32 @llvm.smin.i32(i32 %div47, i32 256)
  %17 = select i1 %cmp49, i32 %16, i32 128
  %max46 = getelementptr inbounds %struct.snd_interval, ptr %ranges, i32 1, i32 1
  %div60 = sdiv i32 %3, %17
  %18 = ptrtoint ptr %max46 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div60, ptr %max46, align 4
  %openmin61 = getelementptr inbounds %struct.snd_interval, ptr %ranges, i32 1, i32 2
  %19 = ptrtoint ptr %openmin61 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 15, ptr %openmin61, align 4
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %20 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %var, align 4
  %sub.i = add i32 %21, -8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i
  %call77 = call i32 @snd_interval_ranges(ptr noundef %arrayidx.i, i32 noundef 2, ptr noundef nonnull %ranges, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ranges) #7
  ret i32 %call77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_ranges(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4234_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @cs4234_shutdown(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4234_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @cs4234_powerup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.cs4234, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %3) #7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regcache_sync(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.221, i32 noundef %call4) #10
  tail call fastcc void @cs4234_shutdown(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 244)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 244)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !190, !191, !192, !194, !195, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !361, !362, !363, !365, !366, !367, !369, !370, !371, !373, !374, !375, !377, !378, !379, !380, !382, !383, !384, !386, !387, !388, !389, !391, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !406, !408, !409, !410}
!llvm.module.flags = !{!411, !412, !413, !414, !415, !416, !417, !418}
!llvm.ident = !{!419}

!0 = !{ptr @__initcall__kmod_snd_soc_cs4234__312_914_cs4234_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_cs4234__312_914_cs4234_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cs4234.c", i32 914, i32 1}
!2 = !{ptr @__exitcall_cs4234_i2c_driver_exit, !1, !"__exitcall_cs4234_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description313, !4, !"__UNIQUE_ID_description313", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/cs4234.c", i32 916, i32 1}
!5 = !{ptr @__UNIQUE_ID_author314, !6, !"__UNIQUE_ID_author314", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/cs4234.c", i32 917, i32 1}
!7 = !{ptr @__UNIQUE_ID_file315, !8, !"__UNIQUE_ID_file315", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/cs4234.c", i32 918, i32 1}
!9 = !{ptr @__UNIQUE_ID_license316, !8, !"__UNIQUE_ID_license316", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/cs4234.c", i32 907, i32 11}
!12 = !{ptr @cs4234_i2c_driver, !13, !"cs4234_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/cs4234.c", i32 905, i32 26}
!14 = !{ptr @cs4234_i2c_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/cs4234.c", i32 749, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cs4234_i2c_probe.__key.2, !15, !"__key", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/cs4234.c", i32 751, i32 43}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/cs4234.c", i32 763, i32 3}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cs4234_i2c_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @cs4234_i2c_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/cs4234.c", i32 767, i32 35}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/cs4234.c", i32 770, i32 3}
!33 = !{ptr @cs4234_i2c_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cs4234_i2c_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/cs4234.c", i32 776, i32 3}
!37 = !{ptr @cs4234_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cs4234_i2c_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @cs4234_i2c_probe._key, !40, !"_key", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/cs4234.c", i32 780, i32 19}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/cs4234.c", i32 783, i32 3}
!44 = !{ptr @cs4234_i2c_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cs4234_i2c_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/cs4234.c", i32 793, i32 3}
!48 = !{ptr @cs4234_i2c_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cs4234_i2c_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/cs4234.c", i32 799, i32 3}
!52 = !{ptr @cs4234_i2c_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cs4234_i2c_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/cs4234.c", i32 806, i32 3}
!56 = !{ptr @cs4234_i2c_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cs4234_i2c_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/cs4234.c", i32 810, i32 2}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cs4234_i2c_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @cs4234_i2c_probe._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/cs4234.c", i32 826, i32 3}
!65 = !{ptr @cs4234_i2c_probe._entry.34, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @cs4234_i2c_probe._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/cs4234.c", i32 840, i32 3}
!69 = !{ptr @cs4234_i2c_probe._entry.37, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @cs4234_i2c_probe._entry_ptr.39, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @init_completion.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../include/linux/completion.h", i32 87, i32 2}
!73 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/cs4234.c", i32 684, i32 2}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/cs4234.c", i32 685, i32 2}
!78 = distinct !{null, !79, !"cs4234_core_supplies", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/cs4234.c", i32 683, i32 27}
!80 = !{ptr @cs4234_regmap, !81, !"cs4234_regmap", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/cs4234.c", i32 668, i32 35}
!82 = !{ptr @cs4234_default_reg, !83, !"cs4234_default_reg", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/cs4234.c", i32 592, i32 33}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/cs4234.c", i32 710, i32 3}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @cs4234_powerup._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @cs4234_powerup._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/cs4234.c", i32 716, i32 3}
!91 = !{ptr @cs4234_powerup._entry.45, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cs4234_powerup._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @cs4234_dividers, !94, !"cs4234_dividers", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/cs4234.c", i32 430, i32 32}
!95 = !{ptr @soc_component_cs4234, !96, !"soc_component_cs4234", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/cs4234.c", i32 655, i32 46}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/cs4234.c", i32 220, i32 2}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/cs4234.c", i32 221, i32 2}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/cs4234.c", i32 222, i32 2}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/cs4234.c", i32 223, i32 2}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/cs4234.c", i32 224, i32 2}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/cs4234.c", i32 225, i32 2}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/cs4234.c", i32 227, i32 2}
!111 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/cs4234.c", i32 228, i32 2}
!113 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/cs4234.c", i32 230, i32 2}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/cs4234.c", i32 232, i32 2}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/cs4234.c", i32 235, i32 2}
!119 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/cs4234.c", i32 236, i32 2}
!121 = !{ptr @.str.70, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/cs4234.c", i32 237, i32 2}
!123 = !{ptr @.str.72, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/cs4234.c", i32 238, i32 2}
!125 = !{ptr @.str.74, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/cs4234.c", i32 240, i32 2}
!127 = !{ptr @.str.76, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/cs4234.c", i32 241, i32 2}
!129 = !{ptr @.str.78, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/cs4234.c", i32 242, i32 2}
!131 = !{ptr @.str.80, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/cs4234.c", i32 243, i32 2}
!133 = !{ptr @.str.82, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/cs4234.c", i32 244, i32 2}
!135 = !{ptr @.str.84, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/cs4234.c", i32 246, i32 2}
!137 = !{ptr @.str.86, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/cs4234.c", i32 247, i32 2}
!139 = !{ptr @.str.88, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/cs4234.c", i32 248, i32 2}
!141 = !{ptr @.str.90, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/cs4234.c", i32 249, i32 2}
!143 = !{ptr @.str.92, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/cs4234.c", i32 251, i32 2}
!145 = !{ptr @.str.94, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/cs4234.c", i32 252, i32 2}
!147 = !{ptr @.str.96, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/cs4234.c", i32 253, i32 2}
!149 = !{ptr @.str.98, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/cs4234.c", i32 254, i32 2}
!151 = !{ptr @.str.100, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/cs4234.c", i32 255, i32 2}
!153 = !{ptr @.str.102, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/cs4234.c", i32 256, i32 2}
!155 = !{ptr @.str.104, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/cs4234.c", i32 258, i32 2}
!157 = !{ptr @.str.106, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/cs4234.c", i32 260, i32 2}
!159 = !{ptr @.str.108, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/cs4234.c", i32 262, i32 2}
!161 = !{ptr @.str.110, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/cs4234.c", i32 264, i32 2}
!163 = !{ptr @.str.112, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/cs4234.c", i32 267, i32 2}
!165 = !{ptr @.str.113, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/cs4234.c", i32 268, i32 2}
!167 = !{ptr @.str.114, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/cs4234.c", i32 269, i32 2}
!169 = !{ptr @.str.115, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/cs4234.c", i32 271, i32 2}
!171 = !{ptr @.str.117, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/cs4234.c", i32 273, i32 2}
!173 = !{ptr @.str.119, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/cs4234.c", i32 276, i32 2}
!175 = !{ptr @.str.121, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/cs4234.c", i32 279, i32 2}
!177 = !{ptr @.str.122, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/cs4234.c", i32 281, i32 2}
!179 = !{ptr @.str.123, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/cs4234.c", i32 282, i32 2}
!181 = !{ptr @.str.124, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/cs4234.c", i32 283, i32 2}
!183 = !{ptr @cs4234_snd_controls, !184, !"cs4234_snd_controls", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/cs4234.c", i32 219, i32 38}
!185 = !{ptr @dac_tlv, !186, !"dac_tlv", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/cs4234.c", i32 45, i32 14}
!187 = !{ptr @.str.125, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/cs4234.c", i32 99, i32 3}
!189 = !{ptr @.str.126, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @cs4234_dac14_grp_delay_put._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @cs4234_dac14_grp_delay_put._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.128, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/cs4234.c", i32 106, i32 3}
!194 = !{ptr @cs4234_dac14_grp_delay_put._entry.127, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @cs4234_dac14_grp_delay_put._entry_ptr.129, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @cs4234_dac14_group_delay, !197, !"cs4234_dac14_group_delay", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/cs4234.c", i32 51, i32 8}
!198 = !{ptr @.str.130, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/cs4234.c", i32 48, i32 4}
!200 = !{ptr @.str.131, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/cs4234.c", i32 48, i32 11}
!202 = !{ptr @.str.132, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/cs4234.c", i32 48, i32 20}
!204 = !{ptr @.str.133, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/cs4234.c", i32 48, i32 29}
!206 = !{ptr @.str.134, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/cs4234.c", i32 48, i32 38}
!208 = !{ptr @.str.135, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/cs4234.c", i32 48, i32 47}
!210 = !{ptr @.str.136, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/cs4234.c", i32 48, i32 56}
!212 = !{ptr @.str.137, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/cs4234.c", i32 48, i32 65}
!214 = !{ptr @.str.138, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/cs4234.c", i32 49, i32 2}
!216 = !{ptr @.str.139, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/cs4234.c", i32 49, i32 11}
!218 = !{ptr @.str.140, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/cs4234.c", i32 49, i32 20}
!220 = !{ptr @.str.141, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/cs4234.c", i32 49, i32 29}
!222 = !{ptr @.str.142, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/cs4234.c", i32 49, i32 38}
!224 = !{ptr @.str.143, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/cs4234.c", i32 49, i32 47}
!226 = !{ptr @.str.144, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/cs4234.c", i32 49, i32 56}
!228 = !{ptr @.str.145, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/cs4234.c", i32 49, i32 65}
!230 = !{ptr @cs4234_dac14_delay_text, !231, !"cs4234_dac14_delay_text", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/cs4234.c", i32 47, i32 27}
!232 = !{ptr @cs4234_ll_noise_gate, !233, !"cs4234_ll_noise_gate", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/cs4234.c", i32 57, i32 8}
!234 = !{ptr @.str.146, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/cs4234.c", i32 55, i32 2}
!236 = !{ptr @.str.147, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/cs4234.c", i32 55, i32 11}
!238 = !{ptr @.str.148, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/cs4234.c", i32 55, i32 20}
!240 = !{ptr @.str.149, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/cs4234.c", i32 55, i32 28}
!242 = !{ptr @.str.150, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/cs4234.c", i32 55, i32 36}
!244 = !{ptr @.str.151, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/cs4234.c", i32 55, i32 44}
!246 = !{ptr @.str.152, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/cs4234.c", i32 55, i32 53}
!248 = !{ptr @.str.153, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/cs4234.c", i32 55, i32 62}
!250 = !{ptr @cs4234_noise_gate_text, !251, !"cs4234_noise_gate_text", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/cs4234.c", i32 54, i32 27}
!252 = !{ptr @cs4234_dac14_noise_gate, !253, !"cs4234_dac14_noise_gate", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/cs4234.c", i32 59, i32 8}
!254 = !{ptr @cs4234_dac5_noise_gate, !255, !"cs4234_dac5_noise_gate", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/cs4234.c", i32 61, i32 8}
!256 = !{ptr @cs4234_dac5_config_fltr_sel, !257, !"cs4234_dac5_config_fltr_sel", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/cs4234.c", i32 67, i32 8}
!258 = !{ptr @.str.154, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/cs4234.c", i32 65, i32 2}
!260 = !{ptr @.str.155, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/cs4234.c", i32 65, i32 26}
!262 = !{ptr @cs4234_dac5_config_fltr_sel_text, !263, !"cs4234_dac5_config_fltr_sel_text", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/cs4234.c", i32 64, i32 27}
!264 = !{ptr @cs4234_mute_delay, !265, !"cs4234_mute_delay", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/cs4234.c", i32 74, i32 8}
!266 = !{ptr @.str.156, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/cs4234.c", i32 72, i32 2}
!268 = !{ptr @.str.157, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/cs4234.c", i32 72, i32 9}
!270 = !{ptr @.str.158, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/cs4234.c", i32 72, i32 16}
!272 = !{ptr @.str.159, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/cs4234.c", i32 72, i32 23}
!274 = !{ptr @cs4234_mute_delay_text, !275, !"cs4234_mute_delay_text", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/cs4234.c", i32 71, i32 27}
!276 = !{ptr @cs4234_min_delay, !277, !"cs4234_min_delay", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/cs4234.c", i32 80, i32 8}
!278 = !{ptr @.str.160, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/cs4234.c", i32 78, i32 9}
!280 = !{ptr @.str.161, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/cs4234.c", i32 78, i32 22}
!282 = !{ptr @.str.162, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/cs4234.c", i32 78, i32 36}
!284 = !{ptr @.str.163, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/cs4234.c", i32 78, i32 50}
!286 = !{ptr @cs4234_minmax_delay_text, !287, !"cs4234_minmax_delay_text", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/cs4234.c", i32 77, i32 27}
!288 = !{ptr @cs4234_max_delay, !289, !"cs4234_max_delay", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/cs4234.c", i32 82, i32 8}
!290 = !{ptr @.str.164, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/cs4234.c", i32 148, i32 2}
!292 = !{ptr @.str.165, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/cs4234.c", i32 149, i32 2}
!294 = !{ptr @.str.166, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/cs4234.c", i32 150, i32 2}
!296 = !{ptr @.str.167, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/cs4234.c", i32 151, i32 2}
!298 = !{ptr @.str.168, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/cs4234.c", i32 152, i32 2}
!300 = !{ptr @.str.169, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/cs4234.c", i32 154, i32 2}
!302 = !{ptr @.str.170, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/cs4234.c", i32 155, i32 2}
!304 = !{ptr @.str.171, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/cs4234.c", i32 156, i32 2}
!306 = !{ptr @.str.172, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/cs4234.c", i32 157, i32 2}
!308 = !{ptr @.str.173, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/cs4234.c", i32 158, i32 2}
!310 = !{ptr @.str.174, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/cs4234.c", i32 160, i32 2}
!312 = !{ptr @.str.175, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/cs4234.c", i32 161, i32 2}
!314 = !{ptr @.str.176, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/cs4234.c", i32 162, i32 2}
!316 = !{ptr @.str.177, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/cs4234.c", i32 163, i32 2}
!318 = !{ptr @.str.178, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/cs4234.c", i32 164, i32 2}
!320 = !{ptr @.str.179, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/cs4234.c", i32 166, i32 2}
!322 = !{ptr @.str.180, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/cs4234.c", i32 167, i32 2}
!324 = !{ptr @.str.181, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/cs4234.c", i32 168, i32 2}
!326 = !{ptr @.str.182, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/cs4234.c", i32 169, i32 2}
!328 = !{ptr @.str.183, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/cs4234.c", i32 171, i32 2}
!330 = !{ptr @.str.184, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/cs4234.c", i32 172, i32 2}
!332 = !{ptr @.str.185, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/cs4234.c", i32 173, i32 2}
!334 = !{ptr @.str.186, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/cs4234.c", i32 174, i32 2}
!336 = !{ptr @.str.187, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/cs4234.c", i32 176, i32 2}
!338 = !{ptr @.str.188, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/cs4234.c", i32 177, i32 2}
!340 = !{ptr @.str.189, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/cs4234.c", i32 178, i32 2}
!342 = !{ptr @.str.190, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/cs4234.c", i32 179, i32 2}
!344 = !{ptr @cs4234_dapm_widgets, !345, !"cs4234_dapm_widgets", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/cs4234.c", i32 147, i32 41}
!346 = !{ptr @.str.192, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/cs4234.c", i32 196, i32 19}
!348 = !{ptr @.str.193, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/cs4234.c", i32 213, i32 4}
!350 = !{ptr @cs4234_dapm_routes, !351, !"cs4234_dapm_routes", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/cs4234.c", i32 182, i32 40}
!352 = !{ptr @.str.194, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/cs4234.c", i32 572, i32 11}
!354 = !{ptr @cs4234_dai, !355, !"cs4234_dai", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/cs4234.c", i32 570, i32 34}
!356 = !{ptr @cs4234_dai_ops, !357, !"cs4234_dai_ops", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/cs4234.c", i32 563, i32 37}
!358 = !{ptr @.str.195, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/cs4234.c", i32 305, i32 3}
!360 = !{ptr @.str.196, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @cs4234_dai_set_fmt._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @cs4234_dai_set_fmt._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.198, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/cs4234.c", i32 314, i32 4}
!365 = !{ptr @cs4234_dai_set_fmt._entry.197, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @cs4234_dai_set_fmt._entry_ptr.199, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.201, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/cs4234.c", i32 320, i32 3}
!369 = !{ptr @cs4234_dai_set_fmt._entry.200, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @cs4234_dai_set_fmt._entry_ptr.202, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.204, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/cs4234.c", i32 331, i32 3}
!373 = !{ptr @cs4234_dai_set_fmt._entry.203, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @cs4234_dai_set_fmt._entry_ptr.205, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.206, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/cs4234.c", i32 531, i32 3}
!377 = !{ptr @.str.207, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @cs4234_dai_set_tdm_slot._entry, !376, !"_entry", i1 false, i1 false}
!379 = !{ptr @cs4234_dai_set_tdm_slot._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.209, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/cs4234.c", i32 539, i32 3}
!382 = !{ptr @cs4234_dai_set_tdm_slot._entry.208, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @cs4234_dai_set_tdm_slot._entry_ptr.210, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.211, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/cs4234.c", i32 501, i32 3}
!386 = !{ptr @.str.212, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @cs4234_dai_startup._entry, !385, !"_entry", i1 false, i1 false}
!388 = !{ptr @cs4234_dai_startup._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.213, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/cs4234.c", i32 371, i32 3}
!391 = !{ptr @.str.214, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @cs4234_dai_hw_params._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @cs4234_dai_hw_params._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.216, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/cs4234.c", i32 389, i32 3}
!396 = !{ptr @cs4234_dai_hw_params._entry.215, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @cs4234_dai_hw_params._entry_ptr.217, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.219, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/cs4234.c", i32 410, i32 3}
!400 = !{ptr @cs4234_dai_hw_params._entry.218, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @cs4234_dai_hw_params._entry_ptr.220, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @cs4234_of_match, !403, !"cs4234_of_match", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/cs4234.c", i32 899, i32 34}
!404 = !{ptr @cs4234_pm, !405, !"cs4234_pm", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/cs4234.c", i32 895, i32 32}
!406 = !{ptr @.str.221, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/cs4234.c", i32 878, i32 3}
!408 = !{ptr @.str.222, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @cs4234_runtime_resume._entry, !407, !"_entry", i1 false, i1 false}
!410 = !{ptr @cs4234_runtime_resume._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!411 = !{i32 1, !"wchar_size", i32 2}
!412 = !{i32 1, !"min_enum_size", i32 4}
!413 = !{i32 8, !"branch-target-enforcement", i32 0}
!414 = !{i32 8, !"sign-return-address", i32 0}
!415 = !{i32 8, !"sign-return-address-all", i32 0}
!416 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!417 = !{i32 7, !"uwtable", i32 1}
!418 = !{i32 7, !"frame-pointer", i32 2}
!419 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!420 = !{!"auto-init"}
!421 = !{i32 0, i32 33}
