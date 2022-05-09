; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cs42l42.c_pt.bc'
source_filename = "../sound/soc/codecs/cs42l42.c"
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
%struct.atomic_t = type { i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.cs42l42_irq_params = type { i16, i16, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cs42l42_pll_params = type { i32, i8, i8, i8, i32, i8, i8, i32, i8, i8 }
%struct.reg_sequence = type { i32, i32, i32 }
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
%struct.cs42l42_private = type { ptr, ptr, [5 x %struct.regulator_bulk_data], ptr, %struct.completion, ptr, %struct.mutex, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.97, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.97 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.92, [128 x i8] }
%union.anon.92 = type { %union.anon.94 }
%union.anon.94 = type { [64 x i64] }
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

@__initcall__kmod_snd_soc_cs42l42__303_2247_cs42l42_i2c_driver_init6 = internal global ptr @cs42l42_i2c_driver_init, section ".initcall6.init", align 4
@cs42l42_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cs42l42_i2c_probe, ptr @cs42l42_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cs42l42_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cs42l42_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cs42l42_i2c_driver_exit = internal global ptr @cs42l42_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [48 x i8] c"snd_soc_cs42l42.description=ASoC CS42L42 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [85 x i8] c"snd_soc_cs42l42.author=James Schulman, Cirrus Logic Inc, <james.schulman@cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [81 x i8] c"snd_soc_cs42l42.author=Brian Austin, Cirrus Logic Inc, <brian.austin@cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [83 x i8] c"snd_soc_cs42l42.author=Michael White, Cirrus Logic Inc, <michael.white@cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [69 x i8] c"snd_soc_cs42l42.author=Lucas Tanure <tanureal@opensource.cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [69 x i8] c"snd_soc_cs42l42.author=Richard Fitzgerald <rf@opensource.cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [71 x i8] c"snd_soc_cs42l42.author=Vitaly Rodionov <vitalyr@opensource.cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [54 x i8] c"snd_soc_cs42l42.file=sound/soc/codecs/snd-soc-cs42l42\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [28 x i8] c"snd_soc_cs42l42.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cs42l42\00", [24 x i8] zeroinitializer }, align 32
@cs42l42_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs42l42\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cs42l42_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cs42l42\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&cs42l42->jack_detect_mutex\00", [36 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cs42l42_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @cs42l42_readable_register, ptr @cs42l42_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12308, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs42l42_reg_defaults, i32 124, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @cs42l42_page_range, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cs42l42:2059:(&cs42l42_regmap)->lock\00", [59 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2062, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs42l42_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/cs42l42.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe._entry_ptr = internal global ptr @cs42l42_i2c_probe._entry, section ".printk_index", align 4
@cs42l42_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 2074, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe._entry_ptr.10 = internal global ptr @cs42l42_i2c_probe._entry.8, section ".printk_index", align 4
@cs42l42_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 2082, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe._entry_ptr.13 = internal global ptr @cs42l42_i2c_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.4, ptr @.str.5, ptr @.str.16, i8 2, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_cs42l42\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Found reset GPIO\0A\00", [46 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 2110, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe._entry_ptr.19 = internal global ptr @cs42l42_i2c_probe._entry.17, section ".printk_index", align 4
@cs42l42_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 2119, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read device ID: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe._entry_ptr.22 = internal global ptr @cs42l42_i2c_probe._entry.20, section ".printk_index", align 4
@cs42l42_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 2127, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CS42L42 Device ID (%X). Expected %X\0A\00", [59 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe._entry_ptr.25 = internal global ptr @cs42l42_i2c_probe._entry.23, section ".printk_index", align 4
@cs42l42_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 2133, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Get Revision ID failed\0A\00", [40 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe._entry_ptr.28 = internal global ptr @cs42l42_i2c_probe._entry.26, section ".printk_index", align 4
@cs42l42_i2c_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 2138, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cirrus Logic CS42L42, Revision: %02X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cs42l42_i2c_probe._entry_ptr.32 = internal global ptr @cs42l42_i2c_probe._entry.29, section ".printk_index", align 4
@soc_component_dev_cs42l42 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @cs42l42_snd_controls, i32 14, ptr @cs42l42_dapm_widgets, i32 13, ptr @cs42l42_audio_map, i32 21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs42l42_set_jack, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 76, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cs42l42_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs42l42_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.130, i64 1092, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.129, i64 1092, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -96, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@cs42l42_reg_defaults = internal constant { [124 x %struct.reg_default], [224 x i8] } { [124 x %struct.reg_default] [%struct.reg_default { i32 4102, i32 0 }, %struct.reg_default { i32 4103, i32 16 }, %struct.reg_default { i32 4105, i32 2 }, %struct.reg_default { i32 4106, i32 164 }, %struct.reg_default { i32 4107, i32 112 }, %struct.reg_default { i32 4110, i32 136 }, %struct.reg_default { i32 4111, i32 3 }, %struct.reg_default { i32 4112, i32 183 }, %struct.reg_default { i32 4353, i32 255 }, %struct.reg_default { i32 4354, i32 132 }, %struct.reg_default { i32 4355, i32 32 }, %struct.reg_default { i32 4356, i32 64 }, %struct.reg_default { i32 4357, i32 0 }, %struct.reg_default { i32 4359, i32 0 }, %struct.reg_default { i32 4370, i32 27 }, %struct.reg_default { i32 4371, i32 27 }, %struct.reg_default { i32 4372, i32 0 }, %struct.reg_default { i32 4383, i32 119 }, %struct.reg_default { i32 4384, i32 0 }, %struct.reg_default { i32 4385, i32 243 }, %struct.reg_default { i32 4393, i32 0 }, %struct.reg_default { i32 4609, i32 0 }, %struct.reg_default { i32 4610, i32 0 }, %struct.reg_default { i32 4611, i32 0 }, %struct.reg_default { i32 4612, i32 0 }, %struct.reg_default { i32 4613, i32 249 }, %struct.reg_default { i32 4614, i32 0 }, %struct.reg_default { i32 4615, i32 0 }, %struct.reg_default { i32 4616, i32 16 }, %struct.reg_default { i32 4617, i32 0 }, %struct.reg_default { i32 4618, i32 0 }, %struct.reg_default { i32 4619, i32 0 }, %struct.reg_default { i32 4620, i32 0 }, %struct.reg_default { i32 4886, i32 1 }, %struct.reg_default { i32 4887, i32 15 }, %struct.reg_default { i32 4888, i32 15 }, %struct.reg_default { i32 4889, i32 31 }, %struct.reg_default { i32 4890, i32 15 }, %struct.reg_default { i32 4891, i32 3 }, %struct.reg_default { i32 4892, i32 127 }, %struct.reg_default { i32 4894, i32 1 }, %struct.reg_default { i32 4895, i32 1 }, %struct.reg_default { i32 4896, i32 15 }, %struct.reg_default { i32 5377, i32 0 }, %struct.reg_default { i32 5378, i32 0 }, %struct.reg_default { i32 5379, i32 0 }, %struct.reg_default { i32 5380, i32 0 }, %struct.reg_default { i32 5381, i32 64 }, %struct.reg_default { i32 5384, i32 16 }, %struct.reg_default { i32 5386, i32 128 }, %struct.reg_default { i32 5403, i32 3 }, %struct.reg_default { i32 6439, i32 0 }, %struct.reg_default { i32 7024, i32 3 }, %struct.reg_default { i32 7025, i32 192 }, %struct.reg_default { i32 7026, i32 0 }, %struct.reg_default { i32 7027, i32 2 }, %struct.reg_default { i32 7028, i32 3 }, %struct.reg_default { i32 7029, i32 31 }, %struct.reg_default { i32 7030, i32 47 }, %struct.reg_default { i32 7033, i32 224 }, %struct.reg_default { i32 7034, i32 255 }, %struct.reg_default { i32 7171, i32 194 }, %struct.reg_default { i32 7425, i32 0 }, %struct.reg_default { i32 7427, i32 0 }, %struct.reg_default { i32 7428, i32 113 }, %struct.reg_default { i32 7937, i32 0 }, %struct.reg_default { i32 7942, i32 2 }, %struct.reg_default { i32 8193, i32 13 }, %struct.reg_default { i32 8449, i32 7 }, %struct.reg_default { i32 8961, i32 63 }, %struct.reg_default { i32 8962, i32 63 }, %struct.reg_default { i32 8963, i32 63 }, %struct.reg_default { i32 9217, i32 0 }, %struct.reg_default { i32 9218, i32 0 }, %struct.reg_default { i32 9219, i32 0 }, %struct.reg_default { i32 9220, i32 0 }, %struct.reg_default { i32 9222, i32 0 }, %struct.reg_default { i32 9223, i32 0 }, %struct.reg_default { i32 9224, i32 0 }, %struct.reg_default { i32 9225, i32 0 }, %struct.reg_default { i32 9226, i32 0 }, %struct.reg_default { i32 9227, i32 0 }, %struct.reg_default { i32 9228, i32 0 }, %struct.reg_default { i32 9230, i32 0 }, %struct.reg_default { i32 9473, i32 4 }, %struct.reg_default { i32 9474, i32 4 }, %struct.reg_default { i32 9475, i32 140 }, %struct.reg_default { i32 9476, i32 14 }, %struct.reg_default { i32 9477, i32 4 }, %struct.reg_default { i32 9478, i32 204 }, %struct.reg_default { i32 9479, i32 63 }, %struct.reg_default { i32 9729, i32 64 }, %struct.reg_default { i32 9737, i32 64 }, %struct.reg_default { i32 10241, i32 1 }, %struct.reg_default { i32 10242, i32 0 }, %struct.reg_default { i32 10243, i32 0 }, %struct.reg_default { i32 10244, i32 66 }, %struct.reg_default { i32 10497, i32 0 }, %struct.reg_default { i32 10498, i32 0 }, %struct.reg_default { i32 10499, i32 15 }, %struct.reg_default { i32 10500, i32 0 }, %struct.reg_default { i32 10501, i32 0 }, %struct.reg_default { i32 10502, i32 0 }, %struct.reg_default { i32 10506, i32 0 }, %struct.reg_default { i32 10507, i32 0 }, %struct.reg_default { i32 10753, i32 0 }, %struct.reg_default { i32 10754, i32 3 }, %struct.reg_default { i32 10755, i32 0 }, %struct.reg_default { i32 10756, i32 0 }, %struct.reg_default { i32 10757, i32 3 }, %struct.reg_default { i32 10758, i32 0 }, %struct.reg_default { i32 10759, i32 0 }, %struct.reg_default { i32 10760, i32 3 }, %struct.reg_default { i32 10761, i32 0 }, %struct.reg_default { i32 10762, i32 0 }, %struct.reg_default { i32 10763, i32 3 }, %struct.reg_default { i32 10764, i32 0 }, %struct.reg_default { i32 10765, i32 0 }, %struct.reg_default { i32 10766, i32 3 }, %struct.reg_default { i32 10767, i32 0 }, %struct.reg_default { i32 10768, i32 0 }, %struct.reg_default { i32 10769, i32 3 }, %struct.reg_default { i32 10770, i32 0 }, %struct.reg_default { i32 10771, i32 0 }], [224 x i8] zeroinitializer }, align 32
@cs42l42_page_range = internal constant { %struct.regmap_range_cfg, [32 x i8] } { %struct.regmap_range_cfg { ptr @.str.33, i32 0, i32 12308, i32 0, i32 255, i32 0, i32 0, i32 256 }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Pages\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VA\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VP\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCP\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VD_FILT\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VL\00", [29 x i8] zeroinitializer }, align 32
@irq_params_table = internal constant { [12 x %struct.cs42l42_irq_params], [56 x i8] } { [12 x %struct.cs42l42_irq_params] [%struct.cs42l42_irq_params { i16 4865, i16 4886, i8 1 }, %struct.cs42l42_irq_params { i16 4866, i16 4887, i8 15 }, %struct.cs42l42_irq_params { i16 4867, i16 4888, i8 15 }, %struct.cs42l42_irq_params { i16 4868, i16 4889, i8 31 }, %struct.cs42l42_irq_params { i16 4869, i16 4890, i8 15 }, %struct.cs42l42_irq_params { i16 4872, i16 4891, i8 3 }, %struct.cs42l42_irq_params { i16 4873, i16 7033, i8 -32 }, %struct.cs42l42_irq_params { i16 4874, i16 7034, i8 -57 }, %struct.cs42l42_irq_params { i16 4875, i16 4892, i8 101 }, %struct.cs42l42_irq_params { i16 4877, i16 4894, i8 1 }, %struct.cs42l42_irq_params { i16 4878, i16 4895, i8 1 }, %struct.cs42l42_irq_params { i16 4879, i16 4896, i8 15 }], [56 x i8] zeroinitializer }, align 32
@cs42l42_irq_thread.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.39, ptr @.str.5, ptr @.str.40, i8 1, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs42l42_irq_thread\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Auto detect done (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@cs42l42_irq_thread.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.39, ptr @.str.5, ptr @.str.41, i8 1, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unplug event\0A\00", [18 x i8] zeroinitializer }, align 32
@cs42l42_irq_thread.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.39, ptr @.str.5, ptr @.str.42, i8 1, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Button released\0A\00", [47 x i8] zeroinitializer }, align 32
@cs42l42_process_hs_type_detect.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.43, ptr @.str.5, ptr @.str.44, i8 1, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cs42l42_process_hs_type_detect\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Running Manual Detection Fallback\0A\00", [61 x i8] zeroinitializer }, align 32
@cs42l42_handle_button_press.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 1, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cs42l42_handle_button_press\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Function C button press\0A\00", [39 x i8] zeroinitializer }, align 32
@cs42l42_handle_button_press.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.45, ptr @.str.5, ptr @.str.47, i8 1, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Function B button press\0A\00", [39 x i8] zeroinitializer }, align 32
@cs42l42_handle_button_press.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.45, ptr @.str.5, ptr @.str.48, i8 1, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Function D button press\0A\00", [39 x i8] zeroinitializer }, align 32
@cs42l42_handle_button_press.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.45, ptr @.str.5, ptr @.str.49, i8 1, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Function A button press\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cirrus,ts-inv\00", [18 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 1887, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Wrong cirrus,ts-inv DT value %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cs42l42_handle_device_data\00", [37 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry_ptr = internal global ptr @cs42l42_handle_device_data._entry, section ".printk_index", align 4
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cirrus,ts-dbnc-rise\00", [44 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.52, ptr @.str.5, i32 1910, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Wrong cirrus,ts-dbnc-rise DT value %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry_ptr.56 = internal global ptr @cs42l42_handle_device_data._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cirrus,ts-dbnc-fall\00", [44 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.52, ptr @.str.5, i32 1938, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Wrong cirrus,ts-dbnc-fall DT value %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry_ptr.60 = internal global ptr @cs42l42_handle_device_data._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cirrus,btn-det-init-dbnce\00", [38 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.52, ptr @.str.5, i32 1957, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Wrong cirrus,btn-det-init-dbnce DT value %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry_ptr.64 = internal global ptr @cs42l42_handle_device_data._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cirrus,btn-det-event-dbnce\00", [37 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.52, ptr @.str.5, i32 1972, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Wrong cirrus,btn-det-event-dbnce DT value %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry_ptr.68 = internal global ptr @cs42l42_handle_device_data._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cirrus,bias-lvls\00", [47 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.52, ptr @.str.5, i32 1990, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Wrong cirrus,bias-lvls[%d] DT value %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry_ptr.72 = internal global ptr @cs42l42_handle_device_data._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cirrus,hs-bias-ramp-rate\00", [39 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.52, ptr @.str.5, i32 2021, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Wrong cirrus,hs-bias-ramp-rate DT value %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cs42l42_handle_device_data._entry_ptr.76 = internal global ptr @cs42l42_handle_device_data._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cirrus,hs-bias-sense-disable\00", [35 x i8] zeroinitializer }, align 32
@cs42l42_snd_controls = internal constant { [14 x %struct.snd_kcontrol_new], [160 x i8] } { [14 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @cs42l42_hpf_freq_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @cs42l42_wnf3_freq_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mixer_tlv }, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @cs42l42_slow_start_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }], [160 x i8] zeroinitializer }, align 32
@cs42l42_audio_map = internal constant { [21 x %struct.snd_soc_dapm_route], [284 x i8] } { [21 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }], [284 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Notch Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7425, i32 7425, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC Weak Force Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7425, i32 7425, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC Invert Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7425, i32 7425, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Boost Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7425, i32 7425, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Volume\00", [21 x i8] zeroinitializer }, align 32
@adc_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9700, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -97, i32 12, i32 12, i32 7427, i32 7427, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC WNF Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7428, i32 7428, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC HPF Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7428, i32 7428, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HPF Corner Freq\00", [16 x i8] zeroinitializer }, align 32
@cs42l42_hpf_freq_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7428, i8 1, i8 1, i32 4, i32 3, ptr @cs42l42_hpf_freq_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WNF 3dB Freq\00", [19 x i8] zeroinitializer }, align 32
@cs42l42_wnf3_freq_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7428, i8 4, i8 4, i32 8, i32 7, ptr @cs42l42_wnf3_freq_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DACA Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7937, i32 7937, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DACB Invert Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7937, i32 7937, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC HPF Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7942, i32 7942, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mixer Volume\00", [19 x i8] zeroinitializer }, align 32
@mixer_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6300, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 8961, i32 8963, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Slow Start Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4107, i32 4107, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@cs42l42_hpf_freq_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.86Hz\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"120Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"235Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"466Hz\00", [26 x i8] zeroinitializer }, align 32
@cs42l42_wnf3_freq_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114], [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"160Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"180Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"220Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"240Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"260Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"280Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIXER\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDIN1\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDIN2\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ASP DAI0\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HS\00", [29 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDOUT1\00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDOUT2\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ASP DAO0\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASP TX EN\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCLK\00", [27 x i8] zeroinitializer }, align 32
@cs42l42_dapm_widgets = internal constant { [13 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [604 x i8] } { [13 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4353, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 3, ptr @cs42l42_hp_adc_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4353, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4353, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4353, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 3, ptr @cs42l42_hp_adc_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10498, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10498, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4353, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10497, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4615, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [604 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@cs42l42_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cs42l42_set_sysclk, ptr null, ptr null, ptr null, ptr @cs42l42_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs42l42_mute_stream, ptr @cs42l42_dai_startup, ptr null, ptr @cs42l42_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@pll_ratio_table = internal constant { [18 x %struct.cs42l42_pll_params], [112 x i8] } { [18 x %struct.cs42l42_pll_params] [%struct.cs42l42_pll_params { i32 1411200, i8 1, i8 0, i8 -128, i32 0, i8 3, i8 16, i32 11289600, i8 -128, i8 2 }, %struct.cs42l42_pll_params { i32 1536000, i8 1, i8 0, i8 125, i32 0, i8 3, i8 16, i32 12000000, i8 125, i8 2 }, %struct.cs42l42_pll_params { i32 2304000, i8 1, i8 0, i8 85, i32 12582912, i8 2, i8 16, i32 12288000, i8 85, i8 2 }, %struct.cs42l42_pll_params { i32 2400000, i8 1, i8 0, i8 80, i32 0, i8 3, i8 16, i32 12000000, i8 80, i8 2 }, %struct.cs42l42_pll_params { i32 2822400, i8 1, i8 0, i8 64, i32 0, i8 3, i8 16, i32 11289600, i8 -128, i8 1 }, %struct.cs42l42_pll_params { i32 3000000, i8 1, i8 0, i8 64, i32 0, i8 3, i8 16, i32 12000000, i8 -128, i8 1 }, %struct.cs42l42_pll_params { i32 3072000, i8 1, i8 0, i8 62, i32 8388608, i8 3, i8 16, i32 12000000, i8 125, i8 1 }, %struct.cs42l42_pll_params { i32 4000000, i8 1, i8 0, i8 48, i32 8388608, i8 3, i8 16, i32 12000000, i8 96, i8 1 }, %struct.cs42l42_pll_params { i32 4096000, i8 1, i8 0, i8 46, i32 14680064, i8 3, i8 16, i32 12000000, i8 94, i8 1 }, %struct.cs42l42_pll_params { i32 5644800, i8 1, i8 1, i8 64, i32 0, i8 3, i8 16, i32 11289600, i8 -128, i8 1 }, %struct.cs42l42_pll_params { i32 6000000, i8 1, i8 1, i8 64, i32 0, i8 3, i8 16, i32 12000000, i8 -128, i8 1 }, %struct.cs42l42_pll_params { i32 6144000, i8 1, i8 1, i8 62, i32 8388608, i8 3, i8 16, i32 12000000, i8 125, i8 1 }, %struct.cs42l42_pll_params { i32 11289600, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i32 11289600, i8 0, i8 1 }, %struct.cs42l42_pll_params { i32 12000000, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i32 12000000, i8 0, i8 1 }, %struct.cs42l42_pll_params { i32 12288000, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i32 12288000, i8 0, i8 1 }, %struct.cs42l42_pll_params { i32 22579200, i8 1, i8 3, i8 64, i32 0, i8 3, i8 16, i32 11289600, i8 -128, i8 1 }, %struct.cs42l42_pll_params { i32 24000000, i8 1, i8 3, i8 64, i32 0, i8 3, i8 16, i32 12000000, i8 -128, i8 1 }, %struct.cs42l42_pll_params { i32 24576000, i8 1, i8 3, i8 64, i32 0, i8 3, i8 16, i32 12288000, i8 -128, i8 1 }], [112 x i8] zeroinitializer }, align 32
@cs42l42_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.5, i32 972, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SCLK %u not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs42l42_set_sysclk\00", [45 x i8] zeroinitializer }, align 32
@cs42l42_set_sysclk._entry_ptr = internal global ptr @cs42l42_set_sysclk._entry, section ".printk_index", align 4
@cs42l42_to_osc_seq = internal constant { [1 x %struct.reg_sequence], [20 x i8] } { [1 x %struct.reg_sequence] [%struct.reg_sequence { i32 4359, i32 0, i32 150 }], [20 x i8] zeroinitializer }, align 32
@cs42l42_mute_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.5, i32 1037, ptr @.str.135, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PLL failed to lock: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs42l42_mute_stream\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cs42l42_mute_stream._entry_ptr = internal global ptr @cs42l42_mute_stream._entry, section ".printk_index", align 4
@cs42l42_to_sclk_seq = internal constant { [1 x %struct.reg_sequence], [20 x i8] } { [1 x %struct.reg_sequence] [%struct.reg_sequence { i32 4359, i32 1, i32 150 }], [20 x i8] zeroinitializer }, align 32
@cs42l42_pll_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.5, i32 683, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported sclk %d/sample rate %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs42l42_pll_config\00", [45 x i8] zeroinitializer }, align 32
@cs42l42_pll_config._entry_ptr = internal global ptr @cs42l42_pll_config._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.140 = internal global [153 x i64] [i64 151, i64 32, i64 0, i64 4097, i64 4098, i64 4099, i64 4100, i64 4101, i64 4102, i64 4103, i64 4104, i64 4105, i64 4106, i64 4107, i64 4110, i64 4111, i64 4112, i64 4353, i64 4354, i64 4355, i64 4356, i64 4357, i64 4359, i64 4361, i64 4370, i64 4371, i64 4372, i64 4373, i64 4383, i64 4384, i64 4385, i64 4388, i64 4393, i64 4609, i64 4610, i64 4611, i64 4612, i64 4613, i64 4614, i64 4615, i64 4616, i64 4617, i64 4618, i64 4619, i64 4620, i64 4865, i64 4866, i64 4867, i64 4868, i64 4869, i64 4872, i64 4873, i64 4874, i64 4875, i64 4877, i64 4878, i64 4879, i64 4886, i64 4887, i64 4888, i64 4889, i64 4890, i64 4891, i64 4892, i64 4894, i64 4895, i64 4896, i64 5377, i64 5378, i64 5379, i64 5380, i64 5381, i64 5384, i64 5386, i64 5403, i64 6437, i64 6438, i64 6439, i64 7024, i64 7025, i64 7026, i64 7027, i64 7028, i64 7029, i64 7030, i64 7031, i64 7032, i64 7033, i64 7034, i64 7171, i64 7425, i64 7427, i64 7428, i64 7937, i64 7942, i64 8193, i64 8449, i64 8961, i64 8962, i64 8963, i64 9217, i64 9218, i64 9219, i64 9220, i64 9222, i64 9223, i64 9224, i64 9225, i64 9226, i64 9227, i64 9228, i64 9230, i64 9473, i64 9474, i64 9475, i64 9476, i64 9477, i64 9478, i64 9479, i64 9729, i64 9737, i64 10241, i64 10242, i64 10243, i64 10244, i64 10497, i64 10498, i64 10499, i64 10500, i64 10501, i64 10502, i64 10506, i64 10507, i64 10753, i64 10754, i64 10755, i64 10756, i64 10757, i64 10758, i64 10759, i64 10760, i64 10761, i64 10762, i64 10763, i64 10764, i64 10765, i64 10766, i64 10767, i64 10768, i64 10769, i64 10770, i64 10771, i64 12308]
@__sancov_gen_cov_switch_values.141 = internal global [25 x i64] [i64 23, i64 32, i64 4097, i64 4098, i64 4099, i64 4104, i64 4361, i64 4373, i64 4388, i64 4865, i64 4866, i64 4867, i64 4868, i64 4869, i64 4872, i64 4873, i64 4874, i64 4875, i64 4877, i64 4878, i64 4879, i64 6437, i64 6438, i64 7031, i64 7032]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.146 = internal global [21 x i64] [i64 19, i64 32, i64 0, i64 1411200, i64 1536000, i64 2304000, i64 2400000, i64 2822400, i64 3000000, i64 3072000, i64 4000000, i64 4096000, i64 5644800, i64 6000000, i64 6144000, i64 11289600, i64 12000000, i64 12288000, i64 22579200, i64 24000000, i64 24576000]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 16384]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.150 = internal global [20 x i64] [i64 18, i64 32, i64 1411200, i64 1536000, i64 2304000, i64 2400000, i64 2822400, i64 3000000, i64 3072000, i64 4000000, i64 4096000, i64 5644800, i64 6000000, i64 6144000, i64 11289600, i64 12000000, i64 12288000, i64 22579200, i64 24000000, i64 24576000]
@___asan_gen_.151 = private unnamed_addr constant [19 x i8] c"cs42l42_i2c_driver\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2236, i32 26 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2238, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"cs42l42_of_match\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2214, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant [11 x i8] c"cs42l42_id\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2229, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2057, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"cs42l42_regmap\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 370, i32 35 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2059, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2062, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2073, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2081, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2088, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2095, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2109, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2119, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2125, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2133, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2137, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [26 x i8] c"soc_component_dev_cs42l42\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 574, i32 46 }
@___asan_gen_.253 = private unnamed_addr constant [12 x i8] c"cs42l42_dai\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1076, i32 34 }
@___asan_gen_.256 = private unnamed_addr constant [21 x i8] c"cs42l42_reg_defaults\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 40, i32 33 }
@___asan_gen_.259 = private unnamed_addr constant [19 x i8] c"cs42l42_page_range\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 359, i32 38 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 360, i32 10 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 831, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 832, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 833, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 834, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [30 x i8] c"../sound/soc/codecs/cs42l42.h\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 835, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"irq_params_table\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1579, i32 40 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1657, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1681, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1697, i32 5 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1242, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1523, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1527, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1531, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1535, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1877, i32 38 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1885, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1894, i32 38 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1908, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1922, i32 38 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1936, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1950, i32 38 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1955, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1966, i32 38 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1971, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1981, i32 44 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1988, i32 5 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1999, i32 38 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2019, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2035, i32 37 }
@___asan_gen_.385 = private unnamed_addr constant [21 x i8] c"cs42l42_snd_controls\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 431, i32 38 }
@___asan_gen_.388 = private unnamed_addr constant [18 x i8] c"cs42l42_audio_map\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 517, i32 40 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 433, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 435, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 437, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 439, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 441, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant [8 x i8] c"adc_tlv\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 389, i32 8 }
@___asan_gen_.413 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 442, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 444, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 446, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant [22 x i8] c"cs42l42_hpf_freq_enum\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 418, i32 8 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 447, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [23 x i8] c"cs42l42_wnf3_freq_enum\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 427, i32 8 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 450, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 452, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 454, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 456, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant [10 x i8] c"mixer_tlv\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 390, i32 8 }
@___asan_gen_.452 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 460, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [22 x i8] c"cs42l42_hpf_freq_text\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 414, i32 27 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 415, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 415, i32 12 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 415, i32 21 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 415, i32 30 }
@___asan_gen_.472 = private unnamed_addr constant [23 x i8] c"cs42l42_wnf3_freq_text\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 422, i32 27 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 423, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 423, i32 11 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 423, i32 20 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 423, i32 29 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 424, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 424, i32 11 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 424, i32 20 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 424, i32 29 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 492, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 493, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 495, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 496, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 497, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 500, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 503, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 504, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 506, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 507, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 510, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 511, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 514, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [21 x i8] c"cs42l42_dapm_widgets\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 490, i32 41 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 523, i32 18 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 536, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant [12 x i8] c"cs42l42_ops\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1068, i32 37 }
@___asan_gen_.550 = private unnamed_addr constant [16 x i8] c"pll_ratio_table\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 622, i32 40 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 972, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant [19 x i8] c"cs42l42_to_osc_seq\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 597, i32 34 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 1037, i32 6 }
@___asan_gen_.577 = private unnamed_addr constant [20 x i8] c"cs42l42_to_sclk_seq\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 588, i32 34 }
@___asan_gen_.580 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.586 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.587 = private constant [30 x i8] c"../sound/soc/codecs/cs42l42.c\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 680, i32 5 }
@llvm.compiler.used = appending global [184 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_cs42l42_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_cs42l42__303_2247_cs42l42_i2c_driver_init6, ptr @cs42l42_handle_device_data._entry, ptr @cs42l42_handle_device_data._entry.54, ptr @cs42l42_handle_device_data._entry.58, ptr @cs42l42_handle_device_data._entry.62, ptr @cs42l42_handle_device_data._entry.66, ptr @cs42l42_handle_device_data._entry.70, ptr @cs42l42_handle_device_data._entry.74, ptr @cs42l42_handle_device_data._entry_ptr, ptr @cs42l42_handle_device_data._entry_ptr.56, ptr @cs42l42_handle_device_data._entry_ptr.60, ptr @cs42l42_handle_device_data._entry_ptr.64, ptr @cs42l42_handle_device_data._entry_ptr.68, ptr @cs42l42_handle_device_data._entry_ptr.72, ptr @cs42l42_handle_device_data._entry_ptr.76, ptr @cs42l42_i2c_driver_exit, ptr @cs42l42_i2c_probe._entry, ptr @cs42l42_i2c_probe._entry.11, ptr @cs42l42_i2c_probe._entry.17, ptr @cs42l42_i2c_probe._entry.20, ptr @cs42l42_i2c_probe._entry.23, ptr @cs42l42_i2c_probe._entry.26, ptr @cs42l42_i2c_probe._entry.29, ptr @cs42l42_i2c_probe._entry.8, ptr @cs42l42_i2c_probe._entry_ptr, ptr @cs42l42_i2c_probe._entry_ptr.10, ptr @cs42l42_i2c_probe._entry_ptr.13, ptr @cs42l42_i2c_probe._entry_ptr.19, ptr @cs42l42_i2c_probe._entry_ptr.22, ptr @cs42l42_i2c_probe._entry_ptr.25, ptr @cs42l42_i2c_probe._entry_ptr.28, ptr @cs42l42_i2c_probe._entry_ptr.32, ptr @cs42l42_mute_stream._entry, ptr @cs42l42_mute_stream._entry_ptr, ptr @cs42l42_pll_config._entry, ptr @cs42l42_pll_config._entry_ptr, ptr @cs42l42_set_sysclk._entry, ptr @cs42l42_set_sysclk._entry_ptr, ptr @cs42l42_i2c_driver, ptr @.str, ptr @cs42l42_of_match, ptr @cs42l42_id, ptr @cs42l42_i2c_probe.__key, ptr @.str.1, ptr @cs42l42_i2c_probe._key, ptr @cs42l42_regmap, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @soc_component_dev_cs42l42, ptr @cs42l42_dai, ptr @cs42l42_reg_defaults, ptr @cs42l42_page_range, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @irq_params_table, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @cs42l42_snd_controls, ptr @cs42l42_audio_map, ptr @.str.78, ptr @.compoundliteral, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @adc_tlv, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @cs42l42_hpf_freq_enum, ptr @.str.92, ptr @cs42l42_wnf3_freq_enum, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @mixer_tlv, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @cs42l42_hpf_freq_text, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @cs42l42_wnf3_freq_text, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @cs42l42_dapm_widgets, ptr @.str.129, ptr @.str.130, ptr @cs42l42_ops, ptr @pll_ratio_table, ptr @.str.131, ptr @.str.132, ptr @cs42l42_to_osc_seq, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @cs42l42_to_sclk_seq, ptr @.str.136, ptr @.str.137], section "llvm.metadata"
@0 = internal global [154 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_i2c_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_cs42l42 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_reg_defaults to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_page_range to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_params_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_handle_device_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_handle_device_data._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_handle_device_data._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_handle_device_data._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_handle_device_data._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_handle_device_data._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_handle_device_data._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_snd_controls to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_audio_map to i32), i32 1092, i32 1376, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_hpf_freq_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_wnf3_freq_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_hpf_freq_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_wnf3_freq_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_dapm_widgets to i32), i32 2340, i32 2944, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_ratio_table to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_to_osc_seq to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_mute_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_to_sclk_seq to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs42l42_pll_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l42_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cs42l42_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs42l42_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @cs42l42_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l42_i2c_probe(ptr noundef %i2c_client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %devid.i = alloca [3 x i8], align 1
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !310
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 256, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.cs42l42_private, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %jack_detect_mutex = getelementptr inbounds %struct.cs42l42_private, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %jack_detect_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @cs42l42_i2c_probe.__key) #7
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c_client, ptr noundef nonnull @cs42l42_regmap, ptr noundef nonnull @cs42l42_i2c_probe._key, ptr noundef nonnull @.str.2) #7
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %arrayidx14 = getelementptr %struct.cs42l42_private, ptr %call.i, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.34, ptr %arrayidx14, align 4
  %arrayidx14.1 = getelementptr %struct.cs42l42_private, ptr %call.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.35, ptr %arrayidx14.1, align 4
  %arrayidx14.2 = getelementptr %struct.cs42l42_private, ptr %call.i, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.36, ptr %arrayidx14.2, align 4
  %arrayidx14.3 = getelementptr %struct.cs42l42_private, ptr %call.i, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.37, ptr %arrayidx14.3, align 4
  %arrayidx14.4 = getelementptr %struct.cs42l42_private, ptr %call.i, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.38, ptr %arrayidx14.4, align 4
  %call17 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 5, ptr noundef %arrayidx14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end24, label %do.end22

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %9) #10
  br label %cleanup

do.end22:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call17) #10
  br label %cleanup

if.end24:                                         ; preds = %for.body.preheader
  %call27 = tail call i32 @regulator_bulk_enable(i32 noundef 5, ptr noundef %arrayidx14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call27) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %call36 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 3) #7
  %reset_gpio = getelementptr inbounds %struct.cs42l42_private, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call36, ptr %reset_gpio, align 4
  %cmp.i204 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call36 to i32
  br label %err_disable_noreset

if.end42:                                         ; preds = %if.end34
  %tobool44.not = icmp eq ptr %call36, null
  br i1 %tobool44.not, label %if.end42.if.end58_crit_edge, label %do.body46

if.end42.if.end58_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

do.body46:                                        ; preds = %if.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l42_i2c_probe.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l42_i2c_probe, %if.then52)) #7
          to label %do.end56 [label %if.then52], !srcloc !311

if.then52:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l42_i2c_probe.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.16) #7
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body46
  %12 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 1) #7
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %if.end42.if.end58_crit_edge
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 6
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool59.not = icmp eq i32 %15, 0
  br i1 %tobool59.not, label %if.end58.if.end73_crit_edge, label %if.then60

if.end58.if.end73_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then60:                                        ; preds = %if.end58
  %call62 = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef null, ptr noundef nonnull @cs42l42_irq_thread, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  %16 = zext i32 %call62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call62, label %do.end69 [
    i32 -517, label %if.then60.err_disable_noirq_crit_edge
    i32 0, label %if.then60.if.end73_crit_edge
  ]

if.then60.if.end73_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then60.err_disable_noirq_crit_edge:            ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_noirq

do.end69:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call62) #10
  br label %err_disable_noirq

if.end73:                                         ; preds = %if.then60.if.end73_crit_edge, %if.end58.if.end73_crit_edge
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %devid.i) #7
  %19 = ptrtoint ptr %devid.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %devid.i, align 1, !annotation !310
  %20 = getelementptr inbounds [3 x i8], ptr %devid.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %20, align 1, !annotation !310
  %22 = getelementptr inbounds [3 x i8], ptr %devid.i, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %22, align 1, !annotation !310
  %call.i205 = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef 4097, ptr noundef nonnull %devid.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %cmp.i206 = icmp slt i32 %call.i205, 0
  br i1 %cmp.i206, label %cirrus_read_device_id.exit.thread, label %cirrus_read_device_id.exit

cirrus_read_device_id.exit.thread:                ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %devid.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i205) #10
  br label %err_disable

cirrus_read_device_id.exit:                       ; preds = %if.end73
  %24 = ptrtoint ptr %devid.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %devid.i, align 1
  %conv.i = zext i8 %25 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %20, align 1
  %conv2.i = zext i8 %27 to i32
  %shl4.i = shl nuw nsw i32 %conv2.i, 4
  %or.i = or i32 %shl4.i, %shl.i
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %22, align 1
  %30 = lshr i8 %29, 4
  %31 = zext i8 %30 to i32
  %or8.i = or i32 %or.i, %31
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %devid.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 272962, i32 %or8.i)
  %cmp83.not = icmp eq i32 %or8.i, 272962
  br i1 %cmp83.not, label %if.end89, label %if.then84

if.then84:                                        ; preds = %cirrus_read_device_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %or8.i, i32 noundef 272962) #10
  br label %err_disable

if.end89:                                         ; preds = %cirrus_read_device_id.exit
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %call91 = call i32 @regmap_read(ptr noundef %33, i32 noundef 4101, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %do.end96, label %do.end101

do.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #10
  br label %err_shutdown

do.end101:                                        ; preds = %if.end89
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg, align 4
  %and = and i32 %35, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %and) #10
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %call.i208 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 4353, i32 noundef 253, i32 noundef 252, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call fastcc void @cs42l42_handle_device_data(ptr noundef %dev, ptr noundef nonnull %call.i)
  call fastcc void @cs42l42_setup_hs_type_detect(ptr noundef nonnull %call.i)
  call fastcc void @cs42l42_set_interrupt_masks(ptr noundef nonnull %call.i)
  %call111 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_cs42l42, ptr noundef nonnull @cs42l42_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %do.end101.err_shutdown_crit_edge, label %do.end101.cleanup_crit_edge

do.end101.cleanup_crit_edge:                      ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end101.err_shutdown_crit_edge:                 ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_shutdown

err_shutdown:                                     ; preds = %do.end101.err_shutdown_crit_edge, %do.end96
  %ret.0 = phi i32 [ %call91, %do.end96 ], [ %call111, %do.end101.err_shutdown_crit_edge ]
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %call116 = call i32 @regmap_write(ptr noundef %39, i32 noundef 4891, i32 noundef 255) #7
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %call118 = call i32 @regmap_write(ptr noundef %41, i32 noundef 4896, i32 noundef 255) #7
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %call120 = call i32 @regmap_write(ptr noundef %43, i32 noundef 4353, i32 noundef 255) #7
  br label %err_disable

err_disable:                                      ; preds = %err_shutdown, %if.then84, %cirrus_read_device_id.exit.thread
  %ret.1 = phi i32 [ %call.i205, %cirrus_read_device_id.exit.thread ], [ -19, %if.then84 ], [ %ret.0, %err_shutdown ]
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool122.not = icmp eq i32 %45, 0
  br i1 %tobool122.not, label %err_disable.err_disable_noirq_crit_edge, label %if.then123

err_disable.err_disable_noirq_crit_edge:          ; preds = %err_disable
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_noirq

if.then123:                                       ; preds = %err_disable
  call void @__sanitizer_cov_trace_pc() #9
  %call125 = call ptr @free_irq(i32 noundef %45, ptr noundef nonnull %call.i) #7
  br label %err_disable_noirq

err_disable_noirq:                                ; preds = %if.then123, %err_disable.err_disable_noirq_crit_edge, %do.end69, %if.then60.err_disable_noirq_crit_edge
  %ret.2 = phi i32 [ %call62, %if.then60.err_disable_noirq_crit_edge ], [ %call62, %do.end69 ], [ %ret.1, %if.then123 ], [ %ret.1, %err_disable.err_disable_noirq_crit_edge ]
  %46 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %47, i32 noundef 0) #7
  br label %err_disable_noreset

err_disable_noreset:                              ; preds = %err_disable_noirq, %if.then39
  %ret.3 = phi i32 [ %11, %if.then39 ], [ %ret.2, %err_disable_noirq ]
  %call130 = call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %arrayidx14) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_noreset, %do.end101.cleanup_crit_edge, %do.end32, %do.end22, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then6 ], [ %call17, %do.end22 ], [ %call27, %do.end32 ], [ %ret.3, %err_disable_noreset ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end101.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l42_i2c_remove(ptr nocapture noundef readonly %i2c_client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 4891, i32 noundef 255) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 4896, i32 noundef 255) #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 4353, i32 noundef 255) #7
  %reset_gpio = getelementptr inbounds %struct.cs42l42_private, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #7
  %supplies = getelementptr inbounds %struct.cs42l42_private, ptr %1, i32 0, i32 2
  %call8 = tail call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %supplies) #7
  ret i32 0
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
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l42_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %stickies = alloca [12 x i32], align 4
  %masks = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stickies) #7
  %0 = call ptr @memset(ptr %stickies, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %masks) #7
  %1 = call ptr @memset(ptr %masks, i32 255, i32 48)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0173 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr [12 x %struct.cs42l42_irq_params], ptr @irq_params_table, i32 0, i32 %i.0173
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %arrayidx1 = getelementptr [12 x i32], ptr %stickies, i32 0, i32 %i.0173
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef %conv, ptr noundef %arrayidx1) #7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %mask_addr = getelementptr [12 x %struct.cs42l42_irq_params], ptr @irq_params_table, i32 0, i32 %i.0173, i32 1
  %8 = ptrtoint ptr %mask_addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mask_addr, align 2
  %conv4 = zext i16 %9 to i32
  %arrayidx5 = getelementptr [12 x i32], ptr %masks, i32 0, i32 %i.0173
  %call6 = call i32 @regmap_read(ptr noundef %7, i32 noundef %conv4, ptr noundef %arrayidx5) #7
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1, align 4
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %neg = xor i32 %13, -1
  %and = and i32 %11, %neg
  %mask = getelementptr [12 x %struct.cs42l42_irq_params], ptr @irq_params_table, i32 0, i32 %i.0173, i32 2
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mask, align 2
  %conv10 = zext i8 %15 to i32
  %and11 = and i32 %and, %conv10
  store i32 %and11, ptr %arrayidx1, align 4
  %inc = add nuw nsw i32 %i.0173, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %arrayidx13 = getelementptr inbounds [12 x i32], ptr %stickies, i32 0, i32 11
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13, align 4
  %and14 = lshr i32 %17, 2
  %shr = and i32 %and14, 3
  %arrayidx15 = getelementptr inbounds [12 x i32], ptr %stickies, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  %jack_detect_mutex = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %jack_detect_mutex, i32 noundef 0) #7
  %arrayidx17 = getelementptr inbounds [12 x i32], ptr %masks, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17, align 4
  %neg18 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %neg18)
  %tobool.not = icmp eq i32 %neg18, 3
  br i1 %tobool.not, label %for.end.if.end36_crit_edge, label %if.then

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then:                                          ; preds = %for.end
  %arrayidx21 = getelementptr inbounds [12 x i32], ptr %stickies, i32 0, i32 5
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx21, align 4
  %and22 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then.if.end36_crit_edge, label %if.then24

if.then.if.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then24:                                        ; preds = %if.then
  call fastcc void @cs42l42_process_hs_type_detect(ptr noundef %data)
  %hs_type = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 12
  %24 = ptrtoint ptr %hs_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hs_type, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %25, label %if.then24.do.body_crit_edge [
    i8 0, label %if.then24.sw.bb_crit_edge
    i8 1, label %if.then24.sw.bb_crit_edge174
    i8 2, label %sw.bb26
  ]

if.then24.sw.bb_crit_edge174:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then24.sw.bb_crit_edge:                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then24.do.body_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb:                                            ; preds = %if.then24.sw.bb_crit_edge, %if.then24.sw.bb_crit_edge174
  %jack = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 5
  %27 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %jack, align 4
  call void @snd_soc_jack_report(ptr noundef %28, i32 noundef 3, i32 noundef 3) #7
  br label %do.body

sw.bb26:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %jack27 = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 5
  %29 = ptrtoint ptr %jack27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %jack27, align 4
  call void @snd_soc_jack_report(ptr noundef %30, i32 noundef 1, i32 noundef 1) #7
  br label %do.body

do.body:                                          ; preds = %sw.bb26, %sw.bb, %if.then24.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l42_irq_thread.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l42_irq_thread, %if.then32)) #7
          to label %if.end36 [label %if.then32], !srcloc !311

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %hs_type to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hs_type, align 1
  %conv34 = zext i8 %34 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l42_irq_thread.__UNIQUE_ID_ddebug299, ptr noundef %32, ptr noundef nonnull @.str.40, i32 noundef %conv34) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %do.body, %if.then.if.end36_crit_edge, %for.end.if.end36_crit_edge
  %arrayidx37 = getelementptr inbounds [12 x i32], ptr %masks, i32 0, i32 11
  %35 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx37, align 4
  %neg38 = and i32 %36, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %neg38)
  %tobool41.not = icmp eq i32 %neg38, 15
  br i1 %tobool41.not, label %if.end36.if.end85_crit_edge, label %if.then42

if.end36.if.end85_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then42:                                        ; preds = %if.end36
  %37 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %shr, label %sw.default76 [
    i32 3, label %sw.bb43
    i32 0, label %sw.bb50
  ]

sw.bb43:                                          ; preds = %if.then42
  %plug_state = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 11
  %38 = ptrtoint ptr %plug_state to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %plug_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp45.not = icmp eq i8 %39, 3
  br i1 %cmp45.not, label %sw.bb43.if.end85_crit_edge, label %if.then47

sw.bb43.if.end85_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then47:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %plug_state to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %plug_state, align 4
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 4896, i32 noundef 12, i32 noundef 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %call.i23.i = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 7028, i32 noundef 7, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %call.i24.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 7024, i32 noundef 231, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %call.i25.i = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 4384, i32 noundef 251, i32 noundef 35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %call.i26.i = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 7942, i32 noundef 255, i32 noundef 135, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %call.i27.i = call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 7028, i32 noundef 7, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %hs_bias_ramp_time.i = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 20
  %53 = ptrtoint ptr %hs_bias_ramp_time.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hs_bias_ramp_time.i, align 4
  %conv.i = zext i8 %54 to i32
  call void @msleep(i32 noundef %conv.i) #7
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %call.i28.i = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 4891, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  %call.i29.i = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 4384, i32 noundef 251, i32 noundef 227, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end85

sw.bb50:                                          ; preds = %if.then42
  %plug_state51 = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 11
  %59 = ptrtoint ptr %plug_state51 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %plug_state51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp53.not = icmp eq i8 %60, 0
  br i1 %cmp53.not, label %sw.bb50.if.end85_crit_edge, label %if.then55

sw.bb50.if.end85_crit_edge:                       ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then55:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %plug_state51 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %plug_state51, align 4
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %call.i.i169 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 7034, i32 noundef 199, i32 noundef 199, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %call.i10.i = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 7028, i32 noundef 7, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data, align 4
  %call.i11.i = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 7024, i32 noundef 231, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %call.i12.i = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 4384, i32 noundef 251, i32 noundef 35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %jack57 = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 5
  %70 = ptrtoint ptr %jack57 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %jack57, align 4
  call void @snd_soc_jack_report(ptr noundef %71, i32 noundef 0, i32 noundef 30723) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l42_irq_thread.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l42_irq_thread, %if.then70)) #7
          to label %if.end85 [label %if.then70], !srcloc !311

if.then70:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %dev71 = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 1
  %72 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev71, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l42_irq_thread.__UNIQUE_ID_ddebug300, ptr noundef %73, ptr noundef nonnull @.str.41) #7
  br label %if.end85

sw.default76:                                     ; preds = %if.then42
  %plug_state77 = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 11
  %74 = ptrtoint ptr %plug_state77 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %plug_state77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cmp79.not = icmp eq i8 %75, 1
  br i1 %cmp79.not, label %sw.default76.if.end85_crit_edge, label %if.then81

sw.default76.if.end85_crit_edge:                  ; preds = %sw.default76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then81:                                        ; preds = %sw.default76
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %plug_state77 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %plug_state77, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %sw.default76.if.end85_crit_edge, %if.then70, %if.then55, %sw.bb50.if.end85_crit_edge, %if.then47, %sw.bb43.if.end85_crit_edge, %if.end36.if.end85_crit_edge
  %plug_state86 = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 11
  %77 = ptrtoint ptr %plug_state86 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %plug_state86, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %78)
  %cmp88 = icmp eq i8 %78, 3
  br i1 %cmp88, label %land.lhs.true, label %if.end85.if.end127_crit_edge

if.end85.if.end127_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

land.lhs.true:                                    ; preds = %if.end85
  %arrayidx90 = getelementptr inbounds [12 x i32], ptr %masks, i32 0, i32 7
  %79 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx90, align 4
  %neg91 = and i32 %80, 199
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %neg91)
  %tobool94.not = icmp ne i32 %neg91, 199
  %and96 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %or.cond = select i1 %tobool94.not, i1 %tobool97.not, i1 false
  br i1 %or.cond, label %if.then98, label %land.lhs.true.if.end127_crit_edge

land.lhs.true.if.end127_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.then98:                                        ; preds = %land.lhs.true
  %and99 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.else, label %do.body102

do.body102:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l42_irq_thread.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l42_irq_thread, %if.then114)) #7
          to label %if.end124 [label %if.then114], !srcloc !311

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  %dev115 = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 1
  %81 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev115, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l42_irq_thread.__UNIQUE_ID_ddebug301, ptr noundef %82, ptr noundef nonnull @.str.42) #7
  br label %if.end124

if.else:                                          ; preds = %if.then98
  %and119 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.else.if.end124_crit_edge, label %if.then121

if.else.if.end124_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then121:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call122 = call fastcc i32 @cs42l42_handle_button_press(ptr noundef %data)
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %if.else.if.end124_crit_edge, %if.then114, %do.body102
  %report.0 = phi i32 [ %call122, %if.then121 ], [ 0, %if.else.if.end124_crit_edge ], [ 0, %if.then114 ], [ 0, %do.body102 ]
  %jack125 = getelementptr inbounds %struct.cs42l42_private, ptr %data, i32 0, i32 5
  %83 = ptrtoint ptr %jack125 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %jack125, align 4
  call void @snd_soc_jack_report(ptr noundef %84, i32 noundef %report.0, i32 noundef 30720) #7
  br label %if.end127

if.end127:                                        ; preds = %if.end124, %land.lhs.true.if.end127_crit_edge, %if.end85.if.end127_crit_edge
  call void @mutex_unlock(ptr noundef %jack_detect_mutex) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %masks) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stickies) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs42l42_handle_device_data(ptr noundef %dev, ptr noundef %cs42l42) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  %thresholds = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !310
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %thresholds) #7
  %1 = getelementptr inbounds [4 x i32], ptr %thresholds, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i32], ptr %thresholds, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i32], ptr %thresholds, i32 0, i32 3
  %4 = call ptr @memset(ptr %thresholds, i32 255, i32 16)
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %6 to i8
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %6) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb, %entry.if.end_crit_edge
  %conv.sink = phi i8 [ %conv, %sw.bb ], [ 0, %do.end ], [ 0, %entry.if.end_crit_edge ]
  %ts_inv = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 13
  %7 = ptrtoint ptr %ts_inv to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.sink, ptr %ts_inv, align 2
  %call.i3 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool4.not = icmp eq i32 %call.i3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then5:                                         ; preds = %if.end
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %switch1 = icmp ult i32 %9, 8
  br i1 %switch1, label %sw.bb6, label %do.end11

sw.bb6:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %conv7 = trunc i32 %9 to i8
  br label %if.end16

do.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %9) #10
  br label %if.end16

if.end16:                                         ; preds = %do.end11, %sw.bb6, %if.end.if.end16_crit_edge
  %conv7.sink = phi i8 [ %conv7, %sw.bb6 ], [ 5, %do.end11 ], [ 5, %if.end.if.end16_crit_edge ]
  %ts_dbnc_rise = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 14
  %10 = ptrtoint ptr %ts_dbnc_rise to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7.sink, ptr %ts_dbnc_rise, align 1
  %11 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cs42l42, align 4
  %conv18 = zext i8 %conv7.sink to i32
  %call.i4 = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 4371, i32 noundef 7, i32 noundef %conv18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i5 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool21.not = icmp eq i32 %call.i5, 0
  br i1 %tobool21.not, label %if.then22, label %if.end16.if.end33_crit_edge

if.end16.if.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then22:                                        ; preds = %if.end16
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %switch2 = icmp ult i32 %14, 8
  br i1 %switch2, label %sw.bb23, label %do.end28

sw.bb23:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %conv24 = trunc i32 %14 to i8
  br label %if.end33

do.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %14) #10
  br label %if.end33

if.end33:                                         ; preds = %do.end28, %sw.bb23, %if.end16.if.end33_crit_edge
  %conv24.sink = phi i8 [ %conv24, %sw.bb23 ], [ 0, %do.end28 ], [ 0, %if.end16.if.end33_crit_edge ]
  %ts_dbnc_fall = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 15
  %15 = ptrtoint ptr %ts_dbnc_fall to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv24.sink, ptr %ts_dbnc_fall, align 4
  %16 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cs42l42, align 4
  %conv36 = zext i8 %conv24.sink to i32
  %shl37 = shl nuw nsw i32 %conv36, 3
  %call.i6 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 4371, i32 noundef 56, i32 noundef %shl37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i7 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool40.not = icmp eq i32 %call.i7, 0
  br i1 %tobool40.not, label %if.then41, label %if.end33.if.end53_crit_edge

if.end33.if.end53_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then41:                                        ; preds = %if.end33
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 201, i32 %19)
  %cmp = icmp ult i32 %19, 201
  br i1 %cmp, label %if.then43, label %do.end48

if.then43:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %conv44 = trunc i32 %19 to i8
  br label %if.end53

do.end48:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %19) #10
  br label %if.end53

if.end53:                                         ; preds = %do.end48, %if.then43, %if.end33.if.end53_crit_edge
  %conv44.sink = phi i8 [ %conv44, %if.then43 ], [ 100, %do.end48 ], [ 100, %if.end33.if.end53_crit_edge ]
  %btn_det_init_dbnce = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 16
  %20 = ptrtoint ptr %btn_det_init_dbnce to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv44.sink, ptr %btn_det_init_dbnce, align 1
  %call.i8 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool55.not = icmp eq i32 %call.i8, 0
  br i1 %tobool55.not, label %if.then56, label %if.end53.if.end69_crit_edge

if.end53.if.end69_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then56:                                        ; preds = %if.end53
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %22)
  %cmp57 = icmp ult i32 %22, 21
  br i1 %cmp57, label %if.then59, label %do.end64

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %conv60 = trunc i32 %22 to i8
  br label %if.end69

do.end64:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %22) #10
  br label %if.end69

if.end69:                                         ; preds = %do.end64, %if.then59, %if.end53.if.end69_crit_edge
  %conv60.sink = phi i8 [ %conv60, %if.then59 ], [ 10, %do.end64 ], [ 10, %if.end53.if.end69_crit_edge ]
  %btn_det_event_dbnce = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 17
  %23 = ptrtoint ptr %btn_det_event_dbnce to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv60.sink, ptr %btn_det_event_dbnce, align 2
  %call70 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull %thresholds, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %for.body.preheader, label %for.body95.preheader

for.body95.preheader:                             ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx99 = getelementptr %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18, i32 0
  %24 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 15, ptr %arrayidx99, align 1
  %arrayidx99.1 = getelementptr %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %arrayidx99.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %arrayidx99.1, align 1
  %arrayidx99.2 = getelementptr %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18, i32 2
  %26 = ptrtoint ptr %arrayidx99.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %arrayidx99.2, align 1
  br label %if.end103

for.body.preheader:                               ; preds = %if.end69
  %27 = ptrtoint ptr %thresholds to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %thresholds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %28)
  %cmp75 = icmp ult i32 %28, 64
  br i1 %cmp75, label %if.then77, label %do.end84

if.then77:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %conv79 = trunc i32 %28 to i8
  br label %for.inc

do.end84:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef %28) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end84, %if.then77
  %.sink = phi i8 [ %conv79, %if.then77 ], [ 15, %do.end84 ]
  %29 = getelementptr %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18, i32 0
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink, ptr %29, align 1
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %32)
  %cmp75.1 = icmp ult i32 %32, 64
  br i1 %cmp75.1, label %if.then77.1, label %do.end84.1

do.end84.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef 1, i32 noundef %32) #10
  br label %for.inc.1

if.then77.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %conv79.1 = trunc i32 %32 to i8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then77.1, %do.end84.1
  %.sink17 = phi i8 [ %conv79.1, %if.then77.1 ], [ 8, %do.end84.1 ]
  %33 = getelementptr %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink17, ptr %33, align 1
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %36)
  %cmp75.2 = icmp ult i32 %36, 64
  br i1 %cmp75.2, label %if.then77.2, label %do.end84.2

do.end84.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef 2, i32 noundef %36) #10
  br label %for.inc.2

if.then77.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %conv79.2 = trunc i32 %36 to i8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then77.2, %do.end84.2
  %.sink18 = phi i8 [ %conv79.2, %if.then77.2 ], [ 4, %do.end84.2 ]
  %37 = getelementptr %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.sink18, ptr %37, align 1
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %40)
  %cmp75.3 = icmp ult i32 %40, 64
  br i1 %cmp75.3, label %if.then77.3, label %do.end84.3

do.end84.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef 3, i32 noundef %40) #10
  br label %if.end103

if.then77.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %conv79.3 = trunc i32 %40 to i8
  br label %if.end103

if.end103:                                        ; preds = %if.then77.3, %do.end84.3, %for.body95.preheader
  %.sink21 = phi i8 [ 1, %for.body95.preheader ], [ %conv79.3, %if.then77.3 ], [ 1, %do.end84.3 ]
  %arrayidx99.3 = getelementptr %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18, i32 3
  %41 = ptrtoint ptr %arrayidx99.3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.sink21, ptr %arrayidx99.3, align 1
  %call.i9 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool105.not = icmp eq i32 %call.i9, 0
  br i1 %tobool105.not, label %if.then106, label %if.end103.if.end131_crit_edge

if.end103.if.end131_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.then106:                                       ; preds = %if.end103
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %switch.lookup, label %do.end124

do.end124:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.75, i32 noundef %43) #10
  br label %if.end131

switch.lookup:                                    ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #9
  %switch.idx.cast = trunc i32 %43 to i8
  %switch.shiftamt = shl i32 %43, 3
  %switch.downshift = lshr i32 -1436932086, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %if.end131

if.end131:                                        ; preds = %switch.lookup, %do.end124, %if.end103.if.end131_crit_edge
  %.sink23 = phi i8 [ 2, %do.end124 ], [ 2, %if.end103.if.end131_crit_edge ], [ %switch.idx.cast, %switch.lookup ]
  %.sink22 = phi i8 [ 90, %do.end124 ], [ 90, %if.end103.if.end131_crit_edge ], [ %switch.masked, %switch.lookup ]
  %hs_bias_ramp_rate = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 19
  %45 = ptrtoint ptr %hs_bias_ramp_rate to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink23, ptr %hs_bias_ramp_rate, align 1
  %hs_bias_ramp_time = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 20
  %46 = ptrtoint ptr %hs_bias_ramp_time to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.sink22, ptr %hs_bias_ramp_time, align 4
  %47 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cs42l42, align 4
  %conv134 = zext i8 %.sink23 to i32
  %call.i10 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 7171, i32 noundef 3, i32 noundef %conv134, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i11 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.77) #7
  %not.call.i11 = xor i1 %call.i11, true
  %.sink20 = zext i1 %not.call.i11 to i8
  %49 = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 21
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink20, ptr %49, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %thresholds) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs42l42_setup_hs_type_detect(ptr nocapture noundef %cs42l42) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !310
  %hs_type = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 12
  %1 = ptrtoint ptr %hs_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %hs_type, align 1
  %2 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cs42l42, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 7028, i32 noundef 24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cs42l42, align 4
  %bias_thresholds = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18
  %6 = ptrtoint ptr %bias_thresholds to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bias_thresholds, align 1
  %8 = or i8 %7, -128
  %or = zext i8 %8 to i32
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 7029, i32 noundef 255, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %9 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cs42l42, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 4393, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cs42l42, align 4
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 4371, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %13 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cs42l42, align 4
  %ts_inv = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 13
  %15 = ptrtoint ptr %ts_inv to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ts_inv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  %or10 = select i1 %tobool.not, i32 226, i32 194
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 7027, i32 noundef 227, i32 noundef %or10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cs42l42, align 4
  %call13 = call i32 @regmap_read(ptr noundef %18, i32 noundef 4879, ptr noundef nonnull %reg) #7
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  %21 = trunc i32 %20 to i8
  %22 = lshr i8 %21, 2
  %conv16 = and i8 %22, 3
  %plug_state = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 11
  %23 = ptrtoint ptr %plug_state to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv16, ptr %plug_state, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs42l42_set_interrupt_masks(ptr nocapture noundef readonly %cs42l42) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs42l42, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4886, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %2 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cs42l42, align 4
  %call.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 4887, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cs42l42, align 4
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4888, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cs42l42, align 4
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 4889, i32 noundef 31, i32 noundef 31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %8 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cs42l42, align 4
  %call.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 4890, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %10 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cs42l42, align 4
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 4891, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cs42l42, align 4
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 4892, i32 noundef 101, i32 noundef 101, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %14 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cs42l42, align 4
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 7033, i32 noundef 224, i32 noundef 224, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %16 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cs42l42, align 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 7034, i32 noundef 199, i32 noundef 199, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %18 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cs42l42, align 4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 4894, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cs42l42, align 4
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4895, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %22 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cs42l42, align 4
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 4896, i32 noundef 15, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs42l42_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 4097, label %entry.return_crit_edge1
    i32 4098, label %entry.return_crit_edge2
    i32 4099, label %entry.return_crit_edge3
    i32 4100, label %entry.return_crit_edge4
    i32 4101, label %entry.return_crit_edge5
    i32 4102, label %entry.return_crit_edge6
    i32 4103, label %entry.return_crit_edge7
    i32 4104, label %entry.return_crit_edge8
    i32 4105, label %entry.return_crit_edge9
    i32 4106, label %entry.return_crit_edge10
    i32 4107, label %entry.return_crit_edge11
    i32 4110, label %entry.return_crit_edge12
    i32 4111, label %entry.return_crit_edge13
    i32 4112, label %entry.return_crit_edge14
    i32 4353, label %entry.return_crit_edge15
    i32 4354, label %entry.return_crit_edge16
    i32 4355, label %entry.return_crit_edge17
    i32 4356, label %entry.return_crit_edge18
    i32 4357, label %entry.return_crit_edge19
    i32 4359, label %entry.return_crit_edge20
    i32 4361, label %entry.return_crit_edge21
    i32 4370, label %entry.return_crit_edge22
    i32 4371, label %entry.return_crit_edge23
    i32 4372, label %entry.return_crit_edge24
    i32 4373, label %entry.return_crit_edge25
    i32 4383, label %entry.return_crit_edge26
    i32 4384, label %entry.return_crit_edge27
    i32 4385, label %entry.return_crit_edge28
    i32 4388, label %entry.return_crit_edge29
    i32 4393, label %entry.return_crit_edge30
    i32 4609, label %entry.return_crit_edge31
    i32 4610, label %entry.return_crit_edge32
    i32 4611, label %entry.return_crit_edge33
    i32 4612, label %entry.return_crit_edge34
    i32 4613, label %entry.return_crit_edge35
    i32 4614, label %entry.return_crit_edge36
    i32 4615, label %entry.return_crit_edge37
    i32 4616, label %entry.return_crit_edge38
    i32 4617, label %entry.return_crit_edge39
    i32 4618, label %entry.return_crit_edge40
    i32 4619, label %entry.return_crit_edge41
    i32 4620, label %entry.return_crit_edge42
    i32 4865, label %entry.return_crit_edge43
    i32 4866, label %entry.return_crit_edge44
    i32 4867, label %entry.return_crit_edge45
    i32 4868, label %entry.return_crit_edge46
    i32 4869, label %entry.return_crit_edge47
    i32 4872, label %entry.return_crit_edge48
    i32 4873, label %entry.return_crit_edge49
    i32 4874, label %entry.return_crit_edge50
    i32 4875, label %entry.return_crit_edge51
    i32 4877, label %entry.return_crit_edge52
    i32 4878, label %entry.return_crit_edge53
    i32 4879, label %entry.return_crit_edge54
    i32 4886, label %entry.return_crit_edge55
    i32 4887, label %entry.return_crit_edge56
    i32 4888, label %entry.return_crit_edge57
    i32 4889, label %entry.return_crit_edge58
    i32 4890, label %entry.return_crit_edge59
    i32 4891, label %entry.return_crit_edge60
    i32 4892, label %entry.return_crit_edge61
    i32 4894, label %entry.return_crit_edge62
    i32 4895, label %entry.return_crit_edge63
    i32 4896, label %entry.return_crit_edge64
    i32 5377, label %entry.return_crit_edge65
    i32 5378, label %entry.return_crit_edge66
    i32 5379, label %entry.return_crit_edge67
    i32 5380, label %entry.return_crit_edge68
    i32 5381, label %entry.return_crit_edge69
    i32 5384, label %entry.return_crit_edge70
    i32 5386, label %entry.return_crit_edge71
    i32 5403, label %entry.return_crit_edge72
    i32 6437, label %entry.return_crit_edge73
    i32 6438, label %entry.return_crit_edge74
    i32 6439, label %entry.return_crit_edge75
    i32 7024, label %entry.return_crit_edge76
    i32 7025, label %entry.return_crit_edge77
    i32 7026, label %entry.return_crit_edge78
    i32 7027, label %entry.return_crit_edge79
    i32 7028, label %entry.return_crit_edge80
    i32 7029, label %entry.return_crit_edge81
    i32 7030, label %entry.return_crit_edge82
    i32 7031, label %entry.return_crit_edge83
    i32 7032, label %entry.return_crit_edge84
    i32 7033, label %entry.return_crit_edge85
    i32 7034, label %entry.return_crit_edge86
    i32 7171, label %entry.return_crit_edge87
    i32 7425, label %entry.return_crit_edge88
    i32 7427, label %entry.return_crit_edge89
    i32 7428, label %entry.return_crit_edge90
    i32 7937, label %entry.return_crit_edge91
    i32 7942, label %entry.return_crit_edge92
    i32 8193, label %entry.return_crit_edge93
    i32 8449, label %entry.return_crit_edge94
    i32 8961, label %entry.return_crit_edge95
    i32 8962, label %entry.return_crit_edge96
    i32 8963, label %entry.return_crit_edge97
    i32 9217, label %entry.return_crit_edge98
    i32 9218, label %entry.return_crit_edge99
    i32 9219, label %entry.return_crit_edge100
    i32 9220, label %entry.return_crit_edge101
    i32 9222, label %entry.return_crit_edge102
    i32 9223, label %entry.return_crit_edge103
    i32 9224, label %entry.return_crit_edge104
    i32 9225, label %entry.return_crit_edge105
    i32 9226, label %entry.return_crit_edge106
    i32 9227, label %entry.return_crit_edge107
    i32 9228, label %entry.return_crit_edge108
    i32 9230, label %entry.return_crit_edge109
    i32 9473, label %entry.return_crit_edge110
    i32 9474, label %entry.return_crit_edge111
    i32 9475, label %entry.return_crit_edge112
    i32 9476, label %entry.return_crit_edge113
    i32 9477, label %entry.return_crit_edge114
    i32 9478, label %entry.return_crit_edge115
    i32 9479, label %entry.return_crit_edge116
    i32 9729, label %entry.return_crit_edge117
    i32 9737, label %entry.return_crit_edge118
    i32 10241, label %entry.return_crit_edge119
    i32 10242, label %entry.return_crit_edge120
    i32 10243, label %entry.return_crit_edge121
    i32 10244, label %entry.return_crit_edge122
    i32 10497, label %entry.return_crit_edge123
    i32 10498, label %entry.return_crit_edge124
    i32 10499, label %entry.return_crit_edge125
    i32 10500, label %entry.return_crit_edge126
    i32 10501, label %entry.return_crit_edge127
    i32 10502, label %entry.return_crit_edge128
    i32 10506, label %entry.return_crit_edge129
    i32 10507, label %entry.return_crit_edge130
    i32 10753, label %entry.return_crit_edge131
    i32 10754, label %entry.return_crit_edge132
    i32 10755, label %entry.return_crit_edge133
    i32 10756, label %entry.return_crit_edge134
    i32 10757, label %entry.return_crit_edge135
    i32 10758, label %entry.return_crit_edge136
    i32 10759, label %entry.return_crit_edge137
    i32 10760, label %entry.return_crit_edge138
    i32 10761, label %entry.return_crit_edge139
    i32 10762, label %entry.return_crit_edge140
    i32 10763, label %entry.return_crit_edge141
    i32 10764, label %entry.return_crit_edge142
    i32 10765, label %entry.return_crit_edge143
    i32 10766, label %entry.return_crit_edge144
    i32 10767, label %entry.return_crit_edge145
    i32 10768, label %entry.return_crit_edge146
    i32 10769, label %entry.return_crit_edge147
    i32 10770, label %entry.return_crit_edge148
    i32 10771, label %entry.return_crit_edge149
    i32 12308, label %entry.return_crit_edge150
  ]

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs42l42_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %reg, label %sw.default [
    i32 4097, label %entry.return_crit_edge
    i32 4098, label %entry.return_crit_edge1
    i32 4099, label %entry.return_crit_edge2
    i32 4104, label %entry.return_crit_edge3
    i32 4361, label %entry.return_crit_edge4
    i32 4373, label %entry.return_crit_edge5
    i32 4388, label %entry.return_crit_edge6
    i32 4865, label %entry.return_crit_edge7
    i32 4866, label %entry.return_crit_edge8
    i32 4867, label %entry.return_crit_edge9
    i32 4868, label %entry.return_crit_edge10
    i32 4869, label %entry.return_crit_edge11
    i32 4872, label %entry.return_crit_edge12
    i32 4873, label %entry.return_crit_edge13
    i32 4874, label %entry.return_crit_edge14
    i32 4875, label %entry.return_crit_edge15
    i32 4877, label %entry.return_crit_edge16
    i32 4878, label %entry.return_crit_edge17
    i32 4879, label %entry.return_crit_edge18
    i32 6437, label %entry.return_crit_edge19
    i32 6438, label %entry.return_crit_edge20
    i32 7031, label %entry.return_crit_edge21
    i32 7032, label %entry.return_crit_edge22
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
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs42l42_process_hs_type_detect(ptr noundef %cs42l42) unnamed_addr #2 align 64 {
entry:
  %hs_det_status.i = alloca i32, align 4
  %hs_det_status = alloca i32, align 4
  %int_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hs_det_status) #7
  %0 = ptrtoint ptr %hs_det_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hs_det_status, align 4, !annotation !310
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_status) #7
  %1 = ptrtoint ptr %int_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %int_status, align 4, !annotation !310
  %2 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cs42l42, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 4388, ptr noundef nonnull %hs_det_status) #7
  %4 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cs42l42, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4891, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %hs_det_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hs_det_status, align 4
  %8 = trunc i32 %7 to i8
  %conv = and i8 %8, 3
  %hs_type = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 12
  %9 = ptrtoint ptr %hs_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %hs_type, align 1
  %10 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cs42l42, align 4
  %call.i75 = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 4384, i32 noundef 251, i32 noundef 163, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = ptrtoint ptr %hs_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hs_type, align 1
  %14 = and i8 %13, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %switch = icmp eq i8 %14, 2
  br i1 %switch, label %do.body, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l42_process_hs_type_detect.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l42_process_hs_type_detect, %if.then15)) #7
          to label %do.end [label %if.then15], !srcloc !311

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l42_process_hs_type_detect.__UNIQUE_ID_ddebug294, ptr noundef %16, ptr noundef nonnull @.str.44) #7
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hs_det_status.i) #7
  %17 = ptrtoint ptr %hs_det_status.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %hs_det_status.i, align 4, !annotation !310
  %18 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cs42l42, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 4384, i32 noundef 251, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cs42l42, align 4
  %call.i52.i = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4383, i32 noundef 255, i32 noundef 44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %22 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cs42l42, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 4385, i32 noundef 166) #7
  call void @msleep(i32 noundef 100) #7
  %24 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cs42l42, align 4
  %call6.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 4388, ptr noundef nonnull %hs_det_status.i) #7
  %26 = ptrtoint ptr %hs_det_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hs_det_status.i, align 4
  %and.i = lshr i32 %27, 6
  %shr.i = and i32 %and.i, 1
  %28 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cs42l42, align 4
  %call10.i = call i32 @regmap_write(ptr noundef %29, i32 noundef 4385, i32 noundef 89) #7
  call void @msleep(i32 noundef 100) #7
  %30 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cs42l42, align 4
  %call12.i = call i32 @regmap_read(ptr noundef %31, i32 noundef 4388, ptr noundef nonnull %hs_det_status.i) #7
  %32 = ptrtoint ptr %hs_det_status.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hs_det_status.i, align 4
  %34 = lshr i32 %33, 5
  %shl.i = and i32 %34, 2
  %or.i = or i32 %shl.i, %shr.i
  %35 = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %or.i, label %sw.default.i [
    i32 1, label %do.end.cs42l42_manual_hs_type_detect.exit_crit_edge
    i32 2, label %sw.bb19.i
  ]

do.end.cs42l42_manual_hs_type_detect.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs42l42_manual_hs_type_detect.exit

sw.bb19.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs42l42_manual_hs_type_detect.exit

sw.default.i:                                     ; preds = %do.end
  %and7.i = lshr i32 %27, 7
  %shr8.i = and i32 %and7.i, 1
  %36 = lshr i32 %33, 6
  %shl17.i = and i32 %36, 2
  %or18.i = or i32 %shl17.i, %shr8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or18.i)
  %.not = icmp eq i32 %or18.i, 3
  br i1 %.not, label %sw.default.i.cs42l42_manual_hs_type_detect.exit_crit_edge, label %switch.lookup

sw.default.i.cs42l42_manual_hs_type_detect.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs42l42_manual_hs_type_detect.exit

switch.lookup:                                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.cast = trunc i32 %or18.i to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 65538, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.idx.mult = mul nsw i32 %or18.i, -77
  %switch.offset = add nsw i32 %switch.idx.mult, 243
  br label %cs42l42_manual_hs_type_detect.exit

cs42l42_manual_hs_type_detect.exit:               ; preds = %switch.lookup, %sw.default.i.cs42l42_manual_hs_type_detect.exit_crit_edge, %sw.bb19.i, %do.end.cs42l42_manual_hs_type_detect.exit_crit_edge
  %.sink.i = phi i8 [ 1, %sw.bb19.i ], [ 0, %do.end.cs42l42_manual_hs_type_detect.exit_crit_edge ], [ %switch.masked, %switch.lookup ], [ 3, %sw.default.i.cs42l42_manual_hs_type_detect.exit_crit_edge ]
  %hs_det_sw.0.i = phi i32 [ 89, %sw.bb19.i ], [ 166, %do.end.cs42l42_manual_hs_type_detect.exit_crit_edge ], [ %switch.offset, %switch.lookup ], [ 166, %sw.default.i.cs42l42_manual_hs_type_detect.exit_crit_edge ]
  %37 = ptrtoint ptr %hs_type to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.sink.i, ptr %hs_type, align 1
  %38 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cs42l42, align 4
  %call31.i = call i32 @regmap_write(ptr noundef %39, i32 noundef 4385, i32 noundef %hs_det_sw.0.i) #7
  %40 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cs42l42, align 4
  %call.i53.i = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 4384, i32 noundef 251, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %42 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cs42l42, align 4
  %call.i54.i = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 4383, i32 noundef 255, i32 noundef 119, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hs_det_status.i) #7
  %44 = ptrtoint ptr %hs_type to i32
  call void @__asan_load1_noabort(i32 %44)
  %.pr = load i8, ptr %hs_type, align 1
  br label %if.end16

if.end16:                                         ; preds = %cs42l42_manual_hs_type_detect.exit, %entry.if.end16_crit_edge
  %45 = phi i8 [ %13, %entry.if.end16_crit_edge ], [ %.pr, %cs42l42_manual_hs_type_detect.exit ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %switch74 = icmp ult i8 %45, 2
  %46 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cs42l42, align 4
  br i1 %switch74, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call.i76 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 7024, i32 noundef 231, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %48 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cs42l42, align 4
  %bias_thresholds = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18
  %50 = ptrtoint ptr %bias_thresholds to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bias_thresholds, align 1
  %52 = or i8 %51, -128
  %or = zext i8 %52 to i32
  %call.i77 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 7029, i32 noundef 255, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %53 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cs42l42, align 4
  %hs_bias_sense_en = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 21
  %55 = ptrtoint ptr %hs_bias_sense_en to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %hs_bias_sense_en, align 1
  %conv33 = zext i8 %56 to i32
  %shl34 = shl nuw nsw i32 %conv33, 7
  %or37 = or i32 %shl34, 67
  %call.i78 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 7024, i32 noundef 231, i32 noundef %or37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %57 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cs42l42, align 4
  %call.i79 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 7028, i32 noundef 7, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %btn_det_init_dbnce = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 16
  %59 = ptrtoint ptr %btn_det_init_dbnce to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %btn_det_init_dbnce, align 1
  %conv41 = zext i8 %60 to i32
  call void @msleep(i32 noundef %conv41) #7
  %61 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cs42l42, align 4
  %call43 = call i32 @regmap_read(ptr noundef %62, i32 noundef 4874, ptr noundef nonnull %int_status) #7
  %63 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cs42l42, align 4
  %call.i80 = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 7034, i32 noundef 199, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end48

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call.i81 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 7028, i32 noundef 7, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then26
  %65 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cs42l42, align 4
  %call.i82 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 7942, i32 noundef 255, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %67 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cs42l42, align 4
  %call.i83 = call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 4896, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_status) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hs_det_status) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs42l42_handle_button_press(ptr nocapture noundef readonly %cs42l42) unnamed_addr #2 align 64 {
entry:
  %detect_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %detect_status) #7
  %0 = ptrtoint ptr %detect_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %detect_status, align 4, !annotation !310
  %1 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cs42l42, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 7034, i32 noundef 199, i32 noundef 199, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %btn_det_event_dbnce = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 17
  %3 = ptrtoint ptr %btn_det_event_dbnce to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %btn_det_event_dbnce, align 2
  %conv = zext i8 %4 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %mul3 = mul nuw nsw i32 %conv, 2000
  tail call void @usleep_range_state(i32 noundef %mul, i32 noundef %mul3, i32 noundef 2) #7
  %5 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cs42l42, align 4
  %arrayidx = getelementptr %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = or i8 %8, -128
  %or = zext i8 %9 to i32
  %call.i107 = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 7029, i32 noundef 255, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %10 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cs42l42, align 4
  %call8 = call i32 @regmap_read(ptr noundef %11, i32 noundef 7032, ptr noundef nonnull %detect_status) #7
  %12 = ptrtoint ptr %detect_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %detect_status, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb, label %land.rhs

land.rhs:                                         ; preds = %entry
  %14 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cs42l42, align 4
  %arrayidx.1 = getelementptr %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18, i32 2
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.1, align 1
  %18 = or i8 %17, -128
  %or.1 = zext i8 %18 to i32
  %call.i107.1 = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 7029, i32 noundef 255, i32 noundef %or.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %19 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cs42l42, align 4
  %call8.1 = call i32 @regmap_read(ptr noundef %20, i32 noundef 7032, ptr noundef nonnull %detect_status) #7
  %21 = ptrtoint ptr %detect_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %detect_status, align 4
  %and.1 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %sw.bb17, label %land.rhs.1

land.rhs.1:                                       ; preds = %land.rhs
  %23 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cs42l42, align 4
  %arrayidx.2 = getelementptr %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18, i32 3
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2, align 1
  %27 = or i8 %26, -128
  %or.2 = zext i8 %27 to i32
  %call.i107.2 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 7029, i32 noundef 255, i32 noundef %or.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %28 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cs42l42, align 4
  %call8.2 = call i32 @regmap_read(ptr noundef %29, i32 noundef 7032, ptr noundef nonnull %detect_status) #7
  %30 = ptrtoint ptr %detect_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %detect_status, align 4
  %and.2 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %sw.bb35, label %land.rhs.2

land.rhs.2:                                       ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l42_handle_button_press.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l42_handle_button_press, %if.then66)) #7
          to label %sw.epilog [label %if.then66], !srcloc !311

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l42_handle_button_press.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l42_handle_button_press, %if.then)) #7
          to label %sw.epilog [label %if.then], !srcloc !311

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 1
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l42_handle_button_press.__UNIQUE_ID_ddebug295, ptr noundef %33, ptr noundef nonnull @.str.46) #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l42_handle_button_press.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l42_handle_button_press, %if.then30)) #7
          to label %sw.epilog [label %if.then30], !srcloc !311

if.then30:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %dev31 = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 1
  %34 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev31, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l42_handle_button_press.__UNIQUE_ID_ddebug296, ptr noundef %35, ptr noundef nonnull @.str.47) #7
  br label %sw.epilog

sw.bb35:                                          ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs42l42_handle_button_press.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs42l42_handle_button_press, %if.then48)) #7
          to label %sw.epilog [label %if.then48], !srcloc !311

if.then48:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  %dev49 = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 1
  %36 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev49, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l42_handle_button_press.__UNIQUE_ID_ddebug297, ptr noundef %37, ptr noundef nonnull @.str.48) #7
  br label %sw.epilog

if.then66:                                        ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #9
  %dev67 = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 1
  %38 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev67, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs42l42_handle_button_press.__UNIQUE_ID_ddebug298, ptr noundef %39, ptr noundef nonnull @.str.49) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then66, %if.then48, %sw.bb35, %if.then30, %sw.bb17, %if.then, %sw.bb, %land.rhs.2
  %bias_level.2 = phi i32 [ 16384, %if.then66 ], [ 2048, %if.then48 ], [ 8192, %if.then30 ], [ 4096, %if.then ], [ 4096, %sw.bb ], [ 8192, %sw.bb17 ], [ 2048, %sw.bb35 ], [ 16384, %land.rhs.2 ]
  %bias_thresholds = getelementptr inbounds %struct.cs42l42_private, ptr %cs42l42, i32 0, i32 18
  %40 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cs42l42, align 4
  %42 = ptrtoint ptr %bias_thresholds to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bias_thresholds, align 1
  %44 = or i8 %43, -128
  %or76 = zext i8 %44 to i32
  %call.i108 = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 7029, i32 noundef 255, i32 noundef %or76, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %45 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cs42l42, align 4
  %call79 = call i32 @regmap_read(ptr noundef %46, i32 noundef 4874, ptr noundef nonnull %detect_status) #7
  %47 = ptrtoint ptr %cs42l42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cs42l42, align 4
  %call.i109 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 7034, i32 noundef 199, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %detect_status) #7
  ret i32 %bias_level.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l42_set_jack(ptr nocapture noundef readonly %component, ptr noundef %jk, ptr nocapture noundef readnone %d) #2 align 64 {
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
  %jack_detect_mutex = getelementptr inbounds %struct.cs42l42_private, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %jack_detect_mutex, i32 noundef 0) #7
  %jack = getelementptr inbounds %struct.cs42l42_private, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %jack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %jk, ptr %jack, align 4
  %tobool.not = icmp eq ptr %jk, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %hs_type = getelementptr inbounds %struct.cs42l42_private, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %hs_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hs_type, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %6, label %if.then.if.end_crit_edge [
    i8 0, label %if.then.sw.bb_crit_edge
    i8 1, label %if.then.sw.bb_crit_edge9
    i8 2, label %sw.bb1
  ]

if.then.sw.bb_crit_edge9:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge9
  tail call void @snd_soc_jack_report(ptr noundef nonnull %jk, i32 noundef 3, i32 noundef 3) #7
  br label %if.end

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_soc_jack_report(ptr noundef nonnull %jk, i32 noundef 1, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %sw.bb1, %sw.bb, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %jack_detect_mutex) #7
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
define internal i32 @cs42l42_slow_start_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 112, %sw.bb1 ], [ %3, %entry.sw.epilog_crit_edge ]
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4107, i32 noundef 112, i32 noundef %val.0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l42_hp_adc_ev(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hp_adc_up_pending = getelementptr inbounds %struct.cs42l42_private, ptr %5, i32 0, i32 23
  %7 = ptrtoint ptr %hp_adc_up_pending to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %hp_adc_up_pending, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %hp_adc_up_pending3 = getelementptr inbounds %struct.cs42l42_private, ptr %5, i32 0, i32 23
  %8 = ptrtoint ptr %hp_adc_up_pending3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hp_adc_up_pending3, align 1, !range !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 21000, i32 noundef 2) #7
  %10 = ptrtoint ptr %hp_adc_up_pending3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %hp_adc_up_pending3, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb2.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l42_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %freq, label %for.cond.17 [
    i32 0, label %if.then
    i32 1411200, label %entry.if.then5_crit_edge
    i32 1536000, label %entry.if.then5_crit_edge18
    i32 2304000, label %entry.if.then5_crit_edge19
    i32 2400000, label %entry.if.then5_crit_edge20
    i32 2822400, label %entry.if.then5_crit_edge21
    i32 3000000, label %entry.if.then5_crit_edge22
    i32 3072000, label %entry.if.then5_crit_edge23
    i32 4000000, label %entry.if.then5_crit_edge24
    i32 4096000, label %entry.if.then5_crit_edge25
    i32 5644800, label %entry.if.then5_crit_edge26
    i32 6000000, label %entry.if.then5_crit_edge27
    i32 6144000, label %entry.if.then5_crit_edge28
    i32 11289600, label %entry.if.then5_crit_edge29
    i32 12000000, label %entry.if.then5_crit_edge30
    i32 12288000, label %entry.if.then5_crit_edge31
    i32 22579200, label %entry.if.then5_crit_edge32
    i32 24000000, label %entry.if.then5_crit_edge33
    i32 24576000, label %entry.if.then5_crit_edge34
  ]

entry.if.then5_crit_edge34:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge33:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge32:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge31:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge30:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge29:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge28:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge27:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge26:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge25:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge24:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge23:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge22:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge21:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge20:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge19:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge18:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sclk = getelementptr inbounds %struct.cs42l42_private, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sclk, align 4
  br label %cleanup

for.cond.17:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.131, i32 noundef %freq) #10
  br label %cleanup

if.then5:                                         ; preds = %entry.if.then5_crit_edge, %entry.if.then5_crit_edge18, %entry.if.then5_crit_edge19, %entry.if.then5_crit_edge20, %entry.if.then5_crit_edge21, %entry.if.then5_crit_edge22, %entry.if.then5_crit_edge23, %entry.if.then5_crit_edge24, %entry.if.then5_crit_edge25, %entry.if.then5_crit_edge26, %entry.if.then5_crit_edge27, %entry.if.then5_crit_edge28, %entry.if.then5_crit_edge29, %entry.if.then5_crit_edge30, %entry.if.then5_crit_edge31, %entry.if.then5_crit_edge32, %entry.if.then5_crit_edge33, %entry.if.then5_crit_edge34
  %sclk6 = getelementptr inbounds %struct.cs42l42_private, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %sclk6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %sclk6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %for.cond.17, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ -22, %for.cond.17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l42_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = trunc i32 %fmt to i16
  %trunc = and i16 %2, -4096
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.147)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 8192, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %asp_cfg_val.0 = phi i32 [ 0, %sw.bb2 ], [ 16, %entry.sw.epilog_crit_edge ]
  %and4 = and i32 %fmt, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4)
  %cond = icmp eq i32 %and4, 1
  br i1 %cond, label %sw.bb5, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5:                                           ; preds = %sw.epilog
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4616, i32 noundef 31, i32 noundef 10) #7
  %and8 = and i32 %fmt, 3840
  %4 = zext i32 %and8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %and8, label %sw.bb5.sw.epilog16_crit_edge [
    i32 0, label %sw.bb9
    i32 512, label %sw.bb11
    i32 1024, label %sw.bb14
  ]

sw.bb5.sw.epilog16_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog16

sw.bb9:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %or10 = or i32 %asp_cfg_val.0, 12
  br label %sw.epilog16

sw.bb11:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %or13 = or i32 %asp_cfg_val.0, 15
  br label %sw.epilog16

sw.bb14:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %or15 = or i32 %asp_cfg_val.0, 3
  br label %sw.epilog16

sw.epilog16:                                      ; preds = %sw.bb14, %sw.bb11, %sw.bb9, %sw.bb5.sw.epilog16_crit_edge
  %asp_cfg_val.1 = phi i32 [ %asp_cfg_val.0, %sw.bb5.sw.epilog16_crit_edge ], [ %or15, %sw.bb14 ], [ %or13, %sw.bb11 ], [ %or10, %sw.bb9 ]
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4615, i32 noundef 31, i32 noundef %asp_cfg_val.1) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog16, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l42_mute_stream(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %stream) #2 align 64 {
entry:
  %regval = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %6 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %regval, align 4, !annotation !310
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp = icmp eq i32 %stream, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 8193, i32 noundef 12, i32 noundef 12) #7
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %shl = shl nuw i32 1, %stream
  %stream_use = getelementptr inbounds %struct.cs42l42_private, ptr %5, i32 0, i32 22
  %7 = ptrtoint ptr %stream_use to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stream_use, align 2
  %9 = trunc i32 %shl to i8
  %10 = xor i8 %9, -1
  %conv4 = and i8 %8, %10
  store i8 %conv4, ptr %stream_use, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %tobool6.not = icmp eq i8 %conv4, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end88_crit_edge

if.end.if.end88_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call8 = tail call i32 @regmap_multi_reg_write(ptr noundef %12, ptr noundef nonnull @cs42l42_to_osc_seq, i32 noundef 1) #7
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4609, i32 noundef 1, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5377, i32 noundef 1, i32 noundef 0) #7
  br label %if.end88

if.else:                                          ; preds = %entry
  %stream_use12 = getelementptr inbounds %struct.cs42l42_private, ptr %5, i32 0, i32 22
  %13 = ptrtoint ptr %stream_use12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %stream_use12, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool13.not = icmp eq i8 %14, 0
  br i1 %tobool13.not, label %if.then14, label %if.else.if.end78_crit_edge

if.else.if.end78_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then14:                                        ; preds = %if.else
  %pll_config = getelementptr inbounds %struct.cs42l42_private, ptr %5, i32 0, i32 7
  %15 = ptrtoint ptr %pll_config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll_config, align 4
  %17 = and i32 %16, 536870911
  %18 = add nsw i32 %17, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %tobool15.not = icmp ult i32 %18, 3
  br i1 %tobool15.not, label %if.then14.if.end75_crit_edge, label %if.then16

if.then14.if.end75_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then16:                                        ; preds = %if.then14
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5377, i32 noundef 1, i32 noundef 1) #7
  %19 = ptrtoint ptr %pll_config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pll_config, align 4
  %21 = and i32 %20, 536870908
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp21 = icmp eq i32 %21, 0
  br i1 %cmp21, label %if.then23, label %if.then16.if.end29_crit_edge

if.then16.if.end29_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then23:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 800, i32 noundef 1600, i32 noundef 2) #7
  %22 = ptrtoint ptr %pll_config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pll_config, align 4
  %pll_divout = getelementptr [18 x %struct.cs42l42_pll_params], ptr @pll_ratio_table, i32 0, i32 %23, i32 6
  %24 = ptrtoint ptr %pll_divout to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pll_divout, align 1
  %conv26 = zext i8 %25 to i32
  %26 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv26, ptr %regval, align 4
  %call28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5384, i32 noundef 255, i32 noundef %conv26) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.then16.if.end29_crit_edge
  %call30 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call30, 1250000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1035) #7
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %call43128 = call i32 @regmap_read(ptr noundef %28, i32 noundef 4878, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43128)
  %tobool44.not129 = icmp eq i32 %call43128, 0
  br i1 %tobool44.not129, label %if.end29.lor.lhs.false_crit_edge, label %if.end29.lor.end_crit_edge

if.end29.lor.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

if.end29.lor.lhs.false_crit_edge:                 ; preds = %if.end29
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then59.lor.lhs.false_crit_edge, %if.end29.lor.lhs.false_crit_edge
  %29 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regval, align 4
  %and45 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call50 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call50, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call50, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then59

if.then59:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 63, i32 noundef 250, i32 noundef 2) #7
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 4
  %call43 = call i32 @regmap_read(ptr noundef %32, i32 noundef 4878, ptr noundef nonnull %regval) #7
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then59.lor.lhs.false_crit_edge, label %if.then59.lor.end_crit_edge

if.then59.lor.end_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

if.then59.lor.lhs.false_crit_edge:                ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %call56 = call i32 @regmap_read(ptr noundef %34, i32 noundef 4878, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool61.not = icmp eq i32 %call56, 0
  br i1 %tobool61.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %35 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %regval, align 4
  %and62 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %lor.rhs.do.end72_crit_edge, label %lor.rhs.if.end73_crit_edge

lor.rhs.if.end73_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

lor.rhs.do.end72_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %if.then59.lor.end_crit_edge, %if.end29.lor.end_crit_edge
  %tobool61.not121 = phi i32 [ %call56, %for.end.lor.end_crit_edge ], [ %call43128, %if.end29.lor.end_crit_edge ], [ %call43, %if.then59.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool61.not121)
  %cmp67 = icmp slt i32 %tobool61.not121, 0
  br i1 %cmp67, label %lor.end.do.end72_crit_edge, label %lor.end.if.end73_crit_edge

lor.end.if.end73_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

lor.end.do.end72_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

do.end72:                                         ; preds = %lor.end.do.end72_crit_edge, %lor.rhs.do.end72_crit_edge
  %tobool61.not121132 = phi i32 [ %tobool61.not121, %lor.end.do.end72_crit_edge ], [ -110, %lor.rhs.do.end72_crit_edge ]
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.133, i32 noundef %tobool61.not121132) #10
  br label %if.end73

if.end73:                                         ; preds = %do.end72, %lor.end.if.end73_crit_edge, %lor.rhs.if.end73_crit_edge
  %call74 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4609, i32 noundef 1, i32 noundef 1) #7
  br label %if.end75

if.end75:                                         ; preds = %if.end73, %if.then14.if.end75_crit_edge
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %call77 = call i32 @regmap_multi_reg_write(ptr noundef %40, ptr noundef nonnull @cs42l42_to_sclk_seq, i32 noundef 1) #7
  br label %if.end78

if.end78:                                         ; preds = %if.end75, %if.else.if.end78_crit_edge
  %shl79 = shl nuw i32 1, %stream
  %41 = ptrtoint ptr %stream_use12 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %stream_use12, align 2
  %43 = trunc i32 %shl79 to i8
  %conv82 = or i8 %42, %43
  store i8 %conv82, ptr %stream_use12, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp83 = icmp eq i32 %stream, 0
  br i1 %cmp83, label %if.then85, label %if.end78.if.end88_crit_edge

if.end78.if.end88_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then85:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %call86 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 8193, i32 noundef 12, i32 noundef 0) #7
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end78.if.end88_crit_edge, %if.then7, %if.end.if.end88_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l42_dai_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %sclk = getelementptr inbounds %struct.cs42l42_private, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %call2 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %9, i32 noundef 11, i32 noundef 44100, i32 noundef 96000) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs42l42_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %entry.if.then.i.i.i_crit_edge ], [ %12, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !313
  %add.i.i.i = or i32 %10, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i.i = icmp eq i32 %12, 0
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
  %div = sdiv i32 %call1.i, 8
  %sub = add nsw i32 %div, -1
  %arrayidx.i.i61 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i61 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i61, align 4
  %srate = getelementptr inbounds %struct.cs42l42_private, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %srate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %srate, align 4
  %call5 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #7
  %bclk = getelementptr inbounds %struct.cs42l42_private, ptr %5, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %mul = zext i1 %cmp to i32
  %spec.select = shl i32 %call5, %mul
  %16 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %bclk, align 4
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i63 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i63, label %for.inc.i.i.i70, label %params_width.exit.if.then.i.i.i67_crit_edge

params_width.exit.if.then.i.i.i67_crit_edge:      ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i67

if.then.i.i.i67:                                  ; preds = %for.inc.i.i.i70.if.then.i.i.i67_crit_edge, %params_width.exit.if.then.i.i.i67_crit_edge
  %i.09.lcssa.i.i.i64 = phi i32 [ 0, %params_width.exit.if.then.i.i.i67_crit_edge ], [ 32, %for.inc.i.i.i70.if.then.i.i.i67_crit_edge ]
  %.lcssa.i.i.i65 = phi i32 [ %18, %params_width.exit.if.then.i.i.i67_crit_edge ], [ %21, %for.inc.i.i.i70.if.then.i.i.i67_crit_edge ]
  %19 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i65, i1 true) #7, !range !313
  %add.i.i.i66 = or i32 %19, %i.09.lcssa.i.i.i64
  br label %params_width.exit73

for.inc.i.i.i70:                                  ; preds = %params_width.exit
  %arrayidx.1.i.i.i68 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1.i.i.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.1.i.i.i69 = icmp eq i32 %21, 0
  br i1 %tobool.not.1.i.i.i69, label %for.inc.i.i.i70.params_width.exit73_crit_edge, label %for.inc.i.i.i70.if.then.i.i.i67_crit_edge

for.inc.i.i.i70.if.then.i.i.i67_crit_edge:        ; preds = %for.inc.i.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i67

for.inc.i.i.i70.params_width.exit73_crit_edge:    ; preds = %for.inc.i.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit73

params_width.exit73:                              ; preds = %for.inc.i.i.i70.params_width.exit73_crit_edge, %if.then.i.i.i67
  %retval.0.i.i.i71 = phi i32 [ %add.i.i.i66, %if.then.i.i.i67 ], [ 0, %for.inc.i.i.i70.params_width.exit73_crit_edge ]
  %call1.i72 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i71) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call1.i72)
  %cmp8 = icmp eq i32 %call1.i72, 24
  br i1 %cmp8, label %if.then9, label %params_width.exit73.if.end14_crit_edge

params_width.exit73.if.end14_crit_edge:           ; preds = %params_width.exit73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %params_width.exit73
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bclk, align 4
  %div11 = sdiv i32 %23, 3
  %mul12 = shl i32 %div11, 2
  store i32 %mul12, ptr %bclk, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %params_width.exit73.if.end14_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %24 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %25, label %if.end14.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb18
  ]

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nsw i32 %sub, 2
  %or = or i32 %sub, %shl
  %or16 = or i32 %or, 64
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 10499, i32 noundef 207, i32 noundef %or16) #7
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 10754, i32 noundef 67, i32 noundef %sub) #7
  %or22 = or i32 %sub, 64
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 10757, i32 noundef 67, i32 noundef %or22) #7
  %sub24 = shl i32 %7, 2
  %shl25 = add i32 %sub24, -4
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 9473, i32 noundef 12, i32 noundef %shl25) #7
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 10753, i32 noundef 60, i32 noundef 12) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb, %if.end14.sw.epilog_crit_edge
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i.i, align 4
  %sclk.i = getelementptr inbounds %struct.cs42l42_private, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %sclk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.epilog.if.end.i_crit_edge

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %bclk.i = getelementptr inbounds %struct.cs42l42_private, ptr %30, i32 0, i32 8
  %33 = ptrtoint ptr %bclk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bclk.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.if.end.i_crit_edge
  %clk.0.i = phi i32 [ %34, %if.then.i ], [ %32, %sw.epilog.if.end.i_crit_edge ]
  %stream_use.i = getelementptr inbounds %struct.cs42l42_private, ptr %30, i32 0, i32 22
  %35 = ptrtoint ptr %stream_use.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %stream_use.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool2.not.i = icmp eq i8 %36, 0
  br i1 %tobool2.not.i, label %for.body.preheader.i, label %if.then3.i

for.body.preheader.i:                             ; preds = %if.end.i
  %37 = zext i32 %clk.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %clk.0.i, label %for.body.preheader.i.cleanup_crit_edge [
    i32 1411200, label %for.body.preheader.i.if.then12.i_crit_edge
    i32 1536000, label %if.then12.fold.split.i
    i32 2304000, label %if.then12.fold.split145.i
    i32 2400000, label %if.then12.fold.split146.i
    i32 2822400, label %if.then12.fold.split147.i
    i32 3000000, label %if.then12.fold.split148.i
    i32 3072000, label %if.then12.fold.split149.i
    i32 4000000, label %if.then12.fold.split150.i
    i32 4096000, label %if.then12.fold.split151.i
    i32 5644800, label %if.then12.fold.split152.i
    i32 6000000, label %if.then12.fold.split153.i
    i32 6144000, label %if.then12.fold.split154.i
    i32 11289600, label %if.then12.fold.split155.i
    i32 12000000, label %if.then12.fold.split156.i
    i32 12288000, label %if.then12.fold.split157.i
    i32 22579200, label %if.then12.fold.split158.i
    i32 24000000, label %if.then12.fold.split159.i
    i32 24576000, label %if.then12.fold.split160.i
  ]

for.body.preheader.i.if.then12.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

for.body.preheader.i.cleanup_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  %pll_config.i = getelementptr inbounds %struct.cs42l42_private, ptr %30, i32 0, i32 7
  %38 = ptrtoint ptr %pll_config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pll_config.i, align 4
  %arrayidx.i = getelementptr [18 x %struct.cs42l42_pll_params], ptr @pll_ratio_table, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %clk.0.i)
  %cmp.i = icmp eq i32 %41, %clk.0.i
  br i1 %cmp.i, label %if.then3.i.if.end30_crit_edge, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i.if.end30_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then12.fold.split.i:                           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split145.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split146.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split147.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split148.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split149.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split150.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split151.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split152.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split153.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split154.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split155.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split156.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split157.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split158.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split159.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.fold.split160.i:                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

if.then12.i:                                      ; preds = %if.then12.fold.split160.i, %if.then12.fold.split159.i, %if.then12.fold.split158.i, %if.then12.fold.split157.i, %if.then12.fold.split156.i, %if.then12.fold.split155.i, %if.then12.fold.split154.i, %if.then12.fold.split153.i, %if.then12.fold.split152.i, %if.then12.fold.split151.i, %if.then12.fold.split150.i, %if.then12.fold.split149.i, %if.then12.fold.split148.i, %if.then12.fold.split147.i, %if.then12.fold.split146.i, %if.then12.fold.split145.i, %if.then12.fold.split.i, %for.body.preheader.i.if.then12.i_crit_edge
  %i.0143.lcssa.i = phi i32 [ 0, %for.body.preheader.i.if.then12.i_crit_edge ], [ 1, %if.then12.fold.split.i ], [ 2, %if.then12.fold.split145.i ], [ 3, %if.then12.fold.split146.i ], [ 4, %if.then12.fold.split147.i ], [ 5, %if.then12.fold.split148.i ], [ 6, %if.then12.fold.split149.i ], [ 7, %if.then12.fold.split150.i ], [ 8, %if.then12.fold.split151.i ], [ 9, %if.then12.fold.split152.i ], [ 10, %if.then12.fold.split153.i ], [ 11, %if.then12.fold.split154.i ], [ 12, %if.then12.fold.split155.i ], [ 13, %if.then12.fold.split156.i ], [ 14, %if.then12.fold.split157.i ], [ 15, %if.then12.fold.split158.i ], [ 16, %if.then12.fold.split159.i ], [ 17, %if.then12.fold.split160.i ]
  %pll_config13.i = getelementptr inbounds %struct.cs42l42_private, ptr %30, i32 0, i32 7
  %42 = ptrtoint ptr %pll_config13.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %i.0143.lcssa.i, ptr %pll_config13.i, align 4
  %43 = lshr i32 77290, %i.0143.lcssa.i
  %44 = shl nuw nsw i32 %43, 1
  %45 = and i32 %44, 2
  %46 = xor i32 %45, 2
  %call19.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4105, i32 noundef 2, i32 noundef %46) #7
  %srate.i = getelementptr inbounds %struct.cs42l42_private, ptr %30, i32 0, i32 10
  %47 = ptrtoint ptr %srate.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %srate.i, align 4
  %div.i = udiv i32 %clk.0.i, %48
  %mul.i = mul i32 %div.i, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %clk.0.i)
  %cmp21.not.i = icmp eq i32 %mul.i, %clk.0.i
  %rem.i = and i32 %div.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp22.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = and i1 %cmp21.not.i, %cmp22.not.i
  br i1 %or.cond.i, label %if.end25.i, label %do.end.i

do.end.i:                                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.136, i32 noundef %clk.0.i, i32 noundef %48) #10
  br label %cleanup

if.end25.i:                                       ; preds = %if.then12.i
  %sub.i = add nsw i32 %div.i, -1
  %and.i = and i32 %sub.i, 255
  %call27.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4613, i32 noundef 255, i32 noundef %and.i) #7
  %and29.i = lshr i32 %sub.i, 8
  %shr.i = and i32 %and29.i, 255
  %call31.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4614, i32 noundef 255, i32 noundef %shr.i) #7
  %div32141.i = lshr i32 %div.i, 1
  %sub33.i = add nsw i32 %div32141.i, -1
  %and34.i = and i32 %sub33.i, 255
  %call36.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4611, i32 noundef 255, i32 noundef %and34.i) #7
  %and38.i = lshr i32 %sub33.i, 8
  %shr39.i = and i32 %and38.i, 255
  %call41.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4612, i32 noundef 255, i32 noundef %shr39.i) #7
  %51 = add nsw i32 %i.0143.lcssa.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp43.i = icmp ult i32 %51, 3
  br i1 %cmp43.i, label %if.then45.i, label %if.else47.i

if.then45.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %call46.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5377, i32 noundef 1, i32 noundef 0) #7
  br label %if.end30

if.else47.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %sclk_prediv.i = getelementptr [18 x %struct.cs42l42_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.0143.lcssa.i, i32 2
  %52 = ptrtoint ptr %sclk_prediv.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sclk_prediv.i, align 1
  %conv49.i = zext i8 %53 to i32
  %call51.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4620, i32 noundef 3, i32 noundef %conv49.i) #7
  %pll_div_int.i = getelementptr [18 x %struct.cs42l42_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.0143.lcssa.i, i32 3
  %54 = ptrtoint ptr %pll_div_int.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pll_div_int.i, align 2
  %conv53.i = zext i8 %55 to i32
  %call55.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5381, i32 noundef 255, i32 noundef %conv53.i) #7
  %pll_div_frac.i = getelementptr [18 x %struct.cs42l42_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.0143.lcssa.i, i32 4
  %56 = ptrtoint ptr %pll_div_frac.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pll_div_frac.i, align 4
  %and57.i = and i32 %57, 255
  %call59.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5378, i32 noundef 255, i32 noundef %and57.i) #7
  %and62.i = lshr i32 %57, 8
  %shr63.i = and i32 %and62.i, 255
  %call65.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5379, i32 noundef 255, i32 noundef %shr63.i) #7
  %and68.i = lshr i32 %57, 16
  %shr69.i = and i32 %and68.i, 255
  %call71.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5380, i32 noundef 255, i32 noundef %shr69.i) #7
  %pll_mode.i = getelementptr [18 x %struct.cs42l42_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.0143.lcssa.i, i32 5
  %58 = ptrtoint ptr %pll_mode.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pll_mode.i, align 4
  %conv73.i = zext i8 %59 to i32
  %call75.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5403, i32 noundef 3, i32 noundef %conv73.i) #7
  %pll_divout.i = getelementptr [18 x %struct.cs42l42_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.0143.lcssa.i, i32 6
  %60 = ptrtoint ptr %pll_divout.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pll_divout.i, align 1
  %conv77.i = zext i8 %61 to i32
  %n.i = getelementptr [18 x %struct.cs42l42_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.0143.lcssa.i, i32 9
  %62 = ptrtoint ptr %n.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %n.i, align 1
  %conv79.i = zext i8 %63 to i32
  %mul80.i = mul nuw nsw i32 %conv79.i, %conv77.i
  %call82.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5384, i32 noundef 255, i32 noundef %mul80.i) #7
  %pll_cal_ratio.i = getelementptr [18 x %struct.cs42l42_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.0143.lcssa.i, i32 8
  %64 = ptrtoint ptr %pll_cal_ratio.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %pll_cal_ratio.i, align 4
  %conv84.i = zext i8 %65 to i32
  %call86.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5386, i32 noundef 255, i32 noundef %conv84.i) #7
  br label %if.end30

if.end30:                                         ; preds = %if.else47.i, %if.then45.i, %if.then3.i.if.end30_crit_edge
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i76 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %driver_data.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i.i.i76, align 4
  %stream_use.i77 = getelementptr inbounds %struct.cs42l42_private, ptr %69, i32 0, i32 22
  %70 = ptrtoint ptr %stream_use.i77 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %stream_use.i77, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i78 = icmp eq i8 %71, 0
  br i1 %tobool.not.i78, label %if.end.i81, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i81:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %arrayidx.i.i61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %73)
  %cmp.i79 = icmp ugt i32 %73, 48000
  %..i80 = zext i1 %cmp.i79 to i32
  %call3.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4617, i32 noundef 15, i32 noundef 3) #7
  %call4.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4618, i32 noundef 1, i32 noundef %..i80) #7
  %call6.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4619, i32 noundef 1, i32 noundef %..i80) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i81, %if.end30.cleanup_crit_edge, %do.end.i, %if.then3.i.cleanup_crit_edge, %for.body.preheader.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.i ], [ -16, %if.then3.i.cleanup_crit_edge ], [ -22, %for.body.preheader.i.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ 0, %if.end.i81 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !99, !100, !102, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !121, !122, !124, !126, !127, !128, !129, !131, !133, !134, !135, !137, !139, !140, !141, !143, !145, !146, !147, !149, !151, !152, !153, !155, !157, !158, !159, !161, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !278, !279, !280, !282, !284, !285, !286, !287, !288, !290, !292, !294, !295, !296, !297, !299}
!llvm.module.flags = !{!301, !302, !303, !304, !305, !306, !307, !308}
!llvm.ident = !{!309}

!0 = !{ptr @__initcall__kmod_snd_soc_cs42l42__303_2247_cs42l42_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_cs42l42__303_2247_cs42l42_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cs42l42.c", i32 2247, i32 1}
!2 = !{ptr @__exitcall_cs42l42_i2c_driver_exit, !1, !"__exitcall_cs42l42_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description304, !4, !"__UNIQUE_ID_description304", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/cs42l42.c", i32 2249, i32 1}
!5 = !{ptr @__UNIQUE_ID_author305, !6, !"__UNIQUE_ID_author305", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/cs42l42.c", i32 2250, i32 1}
!7 = !{ptr @__UNIQUE_ID_author306, !8, !"__UNIQUE_ID_author306", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/cs42l42.c", i32 2251, i32 1}
!9 = !{ptr @__UNIQUE_ID_author307, !10, !"__UNIQUE_ID_author307", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/cs42l42.c", i32 2252, i32 1}
!11 = !{ptr @__UNIQUE_ID_author308, !12, !"__UNIQUE_ID_author308", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/cs42l42.c", i32 2253, i32 1}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/cs42l42.c", i32 2254, i32 1}
!15 = !{ptr @__UNIQUE_ID_author310, !16, !"__UNIQUE_ID_author310", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/cs42l42.c", i32 2255, i32 1}
!17 = !{ptr @__UNIQUE_ID_file311, !18, !"__UNIQUE_ID_file311", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/cs42l42.c", i32 2256, i32 1}
!19 = !{ptr @__UNIQUE_ID_license312, !18, !"__UNIQUE_ID_license312", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/cs42l42.c", i32 2238, i32 11}
!22 = !{ptr @cs42l42_i2c_driver, !23, !"cs42l42_i2c_driver", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/cs42l42.c", i32 2236, i32 26}
!24 = !{ptr @cs42l42_i2c_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/cs42l42.c", i32 2057, i32 2}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cs42l42_i2c_probe._key, !28, !"_key", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/cs42l42.c", i32 2059, i32 20}
!29 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/cs42l42.c", i32 2062, i32 3}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cs42l42_i2c_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @cs42l42_i2c_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/cs42l42.c", i32 2073, i32 3}
!40 = !{ptr @cs42l42_i2c_probe._entry.8, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cs42l42_i2c_probe._entry_ptr.10, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/cs42l42.c", i32 2081, i32 3}
!44 = !{ptr @cs42l42_i2c_probe._entry.11, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cs42l42_i2c_probe._entry_ptr.13, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/cs42l42.c", i32 2088, i32 3}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/cs42l42.c", i32 2095, i32 3}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cs42l42_i2c_probe.__UNIQUE_ID_ddebug302, !49, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/cs42l42.c", i32 2109, i32 4}
!54 = !{ptr @cs42l42_i2c_probe._entry.17, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cs42l42_i2c_probe._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/cs42l42.c", i32 2119, i32 3}
!58 = !{ptr @cs42l42_i2c_probe._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cs42l42_i2c_probe._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/cs42l42.c", i32 2125, i32 3}
!62 = !{ptr @cs42l42_i2c_probe._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cs42l42_i2c_probe._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/cs42l42.c", i32 2133, i32 3}
!66 = !{ptr @cs42l42_i2c_probe._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cs42l42_i2c_probe._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/cs42l42.c", i32 2137, i32 2}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cs42l42_i2c_probe._entry.29, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @cs42l42_i2c_probe._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @cs42l42_regmap, !74, !"cs42l42_regmap", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/cs42l42.c", i32 370, i32 35}
!75 = !{ptr @cs42l42_reg_defaults, !76, !"cs42l42_reg_defaults", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/cs42l42.c", i32 40, i32 33}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/cs42l42.c", i32 360, i32 10}
!79 = !{ptr @cs42l42_page_range, !80, !"cs42l42_page_range", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/cs42l42.c", i32 359, i32 38}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/cs42l42.h", i32 831, i32 2}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/cs42l42.h", i32 832, i32 2}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/cs42l42.h", i32 833, i32 2}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/cs42l42.h", i32 834, i32 2}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/cs42l42.h", i32 835, i32 2}
!91 = distinct !{null, !92, !"cs42l42_supply_names", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/cs42l42.h", i32 830, i32 26}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/cs42l42.c", i32 1657, i32 4}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @cs42l42_irq_thread.__UNIQUE_ID_ddebug299, !94, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/cs42l42.c", i32 1681, i32 5}
!99 = !{ptr @cs42l42_irq_thread.__UNIQUE_ID_ddebug300, !98, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/cs42l42.c", i32 1697, i32 5}
!102 = !{ptr @cs42l42_irq_thread.__UNIQUE_ID_ddebug301, !101, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!103 = !{ptr @irq_params_table, !104, !"irq_params_table", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/cs42l42.c", i32 1579, i32 40}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/cs42l42.c", i32 1242, i32 3}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @cs42l42_process_hs_type_detect.__UNIQUE_ID_ddebug294, !106, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/cs42l42.c", i32 1523, i32 3}
!111 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @cs42l42_handle_button_press.__UNIQUE_ID_ddebug295, !110, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/cs42l42.c", i32 1527, i32 3}
!115 = !{ptr @cs42l42_handle_button_press.__UNIQUE_ID_ddebug296, !114, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/cs42l42.c", i32 1531, i32 3}
!118 = !{ptr @cs42l42_handle_button_press.__UNIQUE_ID_ddebug297, !117, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/cs42l42.c", i32 1535, i32 3}
!121 = !{ptr @cs42l42_handle_button_press.__UNIQUE_ID_ddebug298, !120, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/cs42l42.c", i32 1877, i32 38}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/cs42l42.c", i32 1885, i32 4}
!126 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cs42l42_handle_device_data._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @cs42l42_handle_device_data._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/cs42l42.c", i32 1894, i32 38}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/cs42l42.c", i32 1908, i32 4}
!133 = !{ptr @cs42l42_handle_device_data._entry.54, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @cs42l42_handle_device_data._entry_ptr.56, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/cs42l42.c", i32 1922, i32 38}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/cs42l42.c", i32 1936, i32 4}
!139 = !{ptr @cs42l42_handle_device_data._entry.58, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @cs42l42_handle_device_data._entry_ptr.60, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/cs42l42.c", i32 1950, i32 38}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/cs42l42.c", i32 1955, i32 4}
!145 = !{ptr @cs42l42_handle_device_data._entry.62, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @cs42l42_handle_device_data._entry_ptr.64, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/cs42l42.c", i32 1966, i32 38}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/cs42l42.c", i32 1971, i32 4}
!151 = !{ptr @cs42l42_handle_device_data._entry.66, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @cs42l42_handle_device_data._entry_ptr.68, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/cs42l42.c", i32 1981, i32 44}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/cs42l42.c", i32 1988, i32 5}
!157 = !{ptr @cs42l42_handle_device_data._entry.70, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @cs42l42_handle_device_data._entry_ptr.72, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/cs42l42.c", i32 1999, i32 38}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/cs42l42.c", i32 2019, i32 4}
!163 = !{ptr @cs42l42_handle_device_data._entry.74, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cs42l42_handle_device_data._entry_ptr.76, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/cs42l42.c", i32 2035, i32 37}
!167 = distinct !{null, !168, !"threshold_defaults", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/cs42l42.c", i32 1862, i32 27}
!169 = !{ptr @soc_component_dev_cs42l42, !170, !"soc_component_dev_cs42l42", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/cs42l42.c", i32 574, i32 46}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/cs42l42.c", i32 433, i32 2}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/cs42l42.c", i32 435, i32 2}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/cs42l42.c", i32 437, i32 2}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/cs42l42.c", i32 439, i32 2}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/cs42l42.c", i32 441, i32 2}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/cs42l42.c", i32 442, i32 2}
!183 = !{ptr @.str.89, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/cs42l42.c", i32 444, i32 2}
!185 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/cs42l42.c", i32 446, i32 2}
!187 = !{ptr @.str.92, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/cs42l42.c", i32 447, i32 2}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/cs42l42.c", i32 450, i32 2}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/cs42l42.c", i32 452, i32 2}
!193 = !{ptr @.str.97, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/cs42l42.c", i32 454, i32 2}
!195 = !{ptr @.str.99, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/cs42l42.c", i32 456, i32 2}
!197 = !{ptr @.str.101, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/cs42l42.c", i32 460, i32 2}
!199 = !{ptr @cs42l42_snd_controls, !200, !"cs42l42_snd_controls", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/cs42l42.c", i32 431, i32 38}
!201 = !{ptr @adc_tlv, !202, !"adc_tlv", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/cs42l42.c", i32 389, i32 8}
!203 = !{ptr @cs42l42_hpf_freq_enum, !204, !"cs42l42_hpf_freq_enum", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/cs42l42.c", i32 418, i32 8}
!205 = !{ptr @.str.103, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/cs42l42.c", i32 415, i32 2}
!207 = !{ptr @.str.104, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/cs42l42.c", i32 415, i32 12}
!209 = !{ptr @.str.105, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/cs42l42.c", i32 415, i32 21}
!211 = !{ptr @.str.106, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/cs42l42.c", i32 415, i32 30}
!213 = !{ptr @cs42l42_hpf_freq_text, !214, !"cs42l42_hpf_freq_text", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/cs42l42.c", i32 414, i32 27}
!215 = !{ptr @cs42l42_wnf3_freq_enum, !216, !"cs42l42_wnf3_freq_enum", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/cs42l42.c", i32 427, i32 8}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/cs42l42.c", i32 423, i32 2}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/cs42l42.c", i32 423, i32 11}
!221 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/cs42l42.c", i32 423, i32 20}
!223 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/cs42l42.c", i32 423, i32 29}
!225 = !{ptr @.str.111, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/cs42l42.c", i32 424, i32 2}
!227 = !{ptr @.str.112, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/cs42l42.c", i32 424, i32 11}
!229 = !{ptr @.str.113, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/cs42l42.c", i32 424, i32 20}
!231 = !{ptr @.str.114, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/cs42l42.c", i32 424, i32 29}
!233 = !{ptr @cs42l42_wnf3_freq_text, !234, !"cs42l42_wnf3_freq_text", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/cs42l42.c", i32 422, i32 27}
!235 = !{ptr @mixer_tlv, !236, !"mixer_tlv", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/cs42l42.c", i32 390, i32 8}
!237 = !{ptr @.str.115, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/cs42l42.c", i32 492, i32 2}
!239 = !{ptr @.str.116, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/cs42l42.c", i32 493, i32 2}
!241 = !{ptr @.str.117, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/cs42l42.c", i32 495, i32 2}
!243 = !{ptr @.str.118, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/cs42l42.c", i32 496, i32 2}
!245 = !{ptr @.str.119, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/cs42l42.c", i32 497, i32 2}
!247 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/cs42l42.c", i32 500, i32 2}
!249 = !{ptr @.str.121, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/cs42l42.c", i32 503, i32 2}
!251 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/cs42l42.c", i32 504, i32 2}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/cs42l42.c", i32 506, i32 2}
!255 = !{ptr @.str.124, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/cs42l42.c", i32 507, i32 2}
!257 = !{ptr @.str.125, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/cs42l42.c", i32 510, i32 2}
!259 = !{ptr @.str.126, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/cs42l42.c", i32 511, i32 2}
!261 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/cs42l42.c", i32 514, i32 2}
!263 = !{ptr @cs42l42_dapm_widgets, !264, !"cs42l42_dapm_widgets", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/cs42l42.c", i32 490, i32 41}
!265 = !{ptr @.str.129, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/cs42l42.c", i32 523, i32 18}
!267 = !{ptr @.str.130, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/cs42l42.c", i32 536, i32 4}
!269 = !{ptr @cs42l42_audio_map, !270, !"cs42l42_audio_map", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/cs42l42.c", i32 517, i32 40}
!271 = !{ptr @cs42l42_dai, !272, !"cs42l42_dai", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/cs42l42.c", i32 1076, i32 34}
!273 = !{ptr @cs42l42_ops, !274, !"cs42l42_ops", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/cs42l42.c", i32 1068, i32 37}
!275 = !{ptr @.str.131, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/cs42l42.c", i32 972, i32 2}
!277 = !{ptr @.str.132, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @cs42l42_set_sysclk._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @cs42l42_set_sysclk._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @pll_ratio_table, !281, !"pll_ratio_table", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/cs42l42.c", i32 622, i32 40}
!282 = !{ptr @.str.133, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/cs42l42.c", i32 1037, i32 6}
!284 = !{ptr @.str.134, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.135, !283, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @cs42l42_mute_stream._entry, !283, !"_entry", i1 false, i1 false}
!287 = !{ptr @cs42l42_mute_stream._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @cs42l42_to_osc_seq, !289, !"cs42l42_to_osc_seq", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/cs42l42.c", i32 597, i32 34}
!290 = !{ptr @cs42l42_to_sclk_seq, !291, !"cs42l42_to_sclk_seq", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/cs42l42.c", i32 588, i32 34}
!292 = !{ptr @.str.136, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/cs42l42.c", i32 680, i32 5}
!294 = !{ptr @.str.137, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @cs42l42_pll_config._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @cs42l42_pll_config._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @cs42l42_of_match, !298, !"cs42l42_of_match", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/cs42l42.c", i32 2214, i32 34}
!299 = !{ptr @cs42l42_id, !300, !"cs42l42_id", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/cs42l42.c", i32 2229, i32 35}
!301 = !{i32 1, !"wchar_size", i32 2}
!302 = !{i32 1, !"min_enum_size", i32 4}
!303 = !{i32 8, !"branch-target-enforcement", i32 0}
!304 = !{i32 8, !"sign-return-address", i32 0}
!305 = !{i32 8, !"sign-return-address-all", i32 0}
!306 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!307 = !{i32 7, !"uwtable", i32 1}
!308 = !{i32 7, !"frame-pointer", i32 2}
!309 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!310 = !{!"auto-init"}
!311 = !{i64 2149019939, i64 2149019944, i64 2149019957, i64 2149020001, i64 2149020035, i64 2149020056}
!312 = !{i8 0, i8 2}
!313 = !{i32 0, i32 33}
