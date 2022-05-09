; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cs43130.c_pt.bc'
source_filename = "../sound/soc/codecs/cs43130.c"
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
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.reg_sequences = type { ptr, i32, i32 }
%struct.cs43130_pll_params = type { i32, i8, i8, i32, i8, i8, i32, i8 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.cs43130_rate_map = type { i32, i32 }
%struct.cs43130_bitwidth_map = type { i32, i8, i8 }
%struct.cs43130_clk_gen = type { i32, i32, i16, i16 }
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
%struct.cs43130_private = type { ptr, ptr, [5 x %struct.regulator_bulk_data], ptr, i32, i32, %struct.mutex, i32, i8, %struct.completion, %struct.completion, i32, i32, i32, [4 x %struct.cs43130_dai], i8, i8, i8, %struct.completion, i32, [2 x i16], [2 x i16], [10 x i16], [10 x [2 x i16]], ptr, %struct.work_struct, %struct.snd_soc_jack }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.cs43130_dai = type { i32, i32, i32 }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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

@__initcall__kmod_snd_soc_cs43130__316_2709_cs43130_i2c_driver_init6 = internal global ptr @cs43130_i2c_driver_init, section ".initcall6.init", align 4
@cs43130_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cs43130_i2c_probe, ptr @cs43130_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cs43130_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs43130_runtime_pm, ptr null, ptr null }, ptr @cs43130_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cs43130_i2c_driver_exit = internal global ptr @cs43130_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author317 = internal constant [48 x i8] c"snd_soc_cs43130.author=Li Xu <li.xu@cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description318 = internal constant [71 x i8] c"snd_soc_cs43130.description=Cirrus Logic CS43130 ALSA SoC Codec Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file319 = internal constant [54 x i8] c"snd_soc_cs43130.file=sound/soc/codecs/snd-soc-cs43130\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [28 x i8] c"snd_soc_cs43130.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cs43130\00", [24 x i8] zeroinitializer }, align 32
@cs43130_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs43130\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs4399\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs43131\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs43198\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@cs43130_runtime_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs43130_runtime_suspend, ptr @cs43130_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cs43130_i2c_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cs43130\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"cs4399\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"cs43131\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"cs43198\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cs43130_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 24, i32 0, i32 8, i32 8, ptr null, ptr @cs43130_readable_register, ptr @cs43130_volatile_register, ptr @cs43130_precious_register, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1638400, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs43130_reg_defaults, i32 68, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cs43130:2435:(&cs43130_regmap)->lock\00", [59 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2453, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs43130_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/cs43130.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._entry_ptr = internal global ptr @cs43130_i2c_probe._entry, section ".printk_index", align 4
@cs43130_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 2459, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._entry_ptr.9 = internal global ptr @cs43130_i2c_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 2477, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read device ID: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._entry_ptr.13 = internal global ptr @cs43130_i2c_probe._entry.11, section ".printk_index", align 4
@cs43130_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 2491, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CS43130 Device ID %X. Expected ID %X, %X, %X or %X\0A\00", [44 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._entry_ptr.16 = internal global ptr @cs43130_i2c_probe._entry.14, section ".printk_index", align 4
@cs43130_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 2499, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Get Revision ID failed\0A\00", [40 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._entry_ptr.19 = internal global ptr @cs43130_i2c_probe._entry.17, section ".printk_index", align 4
@cs43130_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 2505, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cirrus Logic CS43130 (%x), Revision: %02X\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._entry_ptr.23 = internal global ptr @cs43130_i2c_probe._entry.20, section ".printk_index", align 4
@cs43130_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&cs43130->clk_mutex\00", [44 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 2518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._entry_ptr.27 = internal global ptr @cs43130_i2c_probe._entry.25, section ".printk_index", align 4
@all_hp_widgets = internal global { [9 x %struct.snd_soc_dapm_widget], [396 x i8] } zeroinitializer, align 32
@all_hp_routes = internal global { [13 x %struct.snd_soc_dapm_route], [188 x i8] } zeroinitializer, align 32
@digital_hp_routes = internal constant { [11 x %struct.snd_soc_dapm_route], [132 x i8] } { [11 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }], [132 x i8] zeroinitializer }, align 32
@analog_hp_routes = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@soc_component_dev_cs43130 = internal global { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @cs43130_snd_controls, i32 9, ptr null, i32 0, ptr null, i32 0, ptr @cs43130_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs43130_component_set_sysclk, ptr @cs43130_set_pll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cs43130_dai = internal global { [4 x %struct.snd_soc_dai_driver], [160 x i8] } { [4 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.157, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs43130_pcm_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.81, i64 1093, i32 -2147483648, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.158, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs43130_dop_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.82, i64 2814749767106624, i32 -2147483648, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.159, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs43130_dop_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.83, i64 2814749767106624, i32 -2147483648, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.160, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @cs43130_dsd_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.84, i64 2814749767106624, i32 -2147483648, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [160 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 2568, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"snd_soc_register_component failed with ret = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cs43130_i2c_probe._entry_ptr.30 = internal global ptr @cs43130_i2c_probe._entry.28, section ".printk_index", align 4
@cs43130_reg_defaults = internal constant { [68 x %struct.reg_default], [128 x i8] } { [68 x %struct.reg_default] [%struct.reg_default { i32 65542, i32 6 }, %struct.reg_default { i32 65547, i32 1 }, %struct.reg_default { i32 65548, i32 5 }, %struct.reg_default { i32 65549, i32 3 }, %struct.reg_default { i32 131072, i32 254 }, %struct.reg_default { i32 131154, i32 4 }, %struct.reg_default { i32 196609, i32 0 }, %struct.reg_default { i32 196610, i32 0 }, %struct.reg_default { i32 196611, i32 0 }, %struct.reg_default { i32 196612, i32 0 }, %struct.reg_default { i32 196613, i32 64 }, %struct.reg_default { i32 196616, i32 16 }, %struct.reg_default { i32 196618, i32 128 }, %struct.reg_default { i32 196635, i32 3 }, %struct.reg_default { i32 262146, i32 2 }, %struct.reg_default { i32 262147, i32 2 }, %struct.reg_default { i32 262148, i32 0 }, %struct.reg_default { i32 262160, i32 1 }, %struct.reg_default { i32 262161, i32 0 }, %struct.reg_default { i32 262162, i32 8 }, %struct.reg_default { i32 262163, i32 0 }, %struct.reg_default { i32 262164, i32 31 }, %struct.reg_default { i32 262165, i32 0 }, %struct.reg_default { i32 262166, i32 63 }, %struct.reg_default { i32 262167, i32 0 }, %struct.reg_default { i32 262168, i32 12 }, %struct.reg_default { i32 262169, i32 10 }, %struct.reg_default { i32 262176, i32 1 }, %struct.reg_default { i32 262177, i32 0 }, %struct.reg_default { i32 262178, i32 2 }, %struct.reg_default { i32 262179, i32 0 }, %struct.reg_default { i32 262180, i32 31 }, %struct.reg_default { i32 262181, i32 0 }, %struct.reg_default { i32 262182, i32 63 }, %struct.reg_default { i32 262183, i32 0 }, %struct.reg_default { i32 262184, i32 12 }, %struct.reg_default { i32 262185, i32 10 }, %struct.reg_default { i32 327680, i32 0 }, %struct.reg_default { i32 327681, i32 0 }, %struct.reg_default { i32 327690, i32 6 }, %struct.reg_default { i32 327691, i32 14 }, %struct.reg_default { i32 393216, i32 0 }, %struct.reg_default { i32 393217, i32 0 }, %struct.reg_default { i32 393226, i32 6 }, %struct.reg_default { i32 393227, i32 14 }, %struct.reg_default { i32 458752, i32 120 }, %struct.reg_default { i32 458753, i32 120 }, %struct.reg_default { i32 458754, i32 168 }, %struct.reg_default { i32 458755, i32 0 }, %struct.reg_default { i32 458756, i32 2 }, %struct.reg_default { i32 458757, i32 0 }, %struct.reg_default { i32 458758, i32 64 }, %struct.reg_default { i32 524288, i32 48 }, %struct.reg_default { i32 589824, i32 2 }, %struct.reg_default { i32 589825, i32 120 }, %struct.reg_default { i32 589826, i32 120 }, %struct.reg_default { i32 589827, i32 168 }, %struct.reg_default { i32 589828, i32 0 }, %struct.reg_default { i32 720896, i32 30 }, %struct.reg_default { i32 851968, i32 4 }, %struct.reg_default { i32 917504, i32 0 }, %struct.reg_default { i32 917507, i32 0 }, %struct.reg_default { i32 917508, i32 0 }, %struct.reg_default { i32 983056, i32 255 }, %struct.reg_default { i32 983057, i32 255 }, %struct.reg_default { i32 983058, i32 255 }, %struct.reg_default { i32 983059, i32 255 }, %struct.reg_default { i32 983060, i32 255 }], [128 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cirrus,xtal-ibias\00", [46 x i8] zeroinitializer }, align 32
@cs43130_handle_device_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 2398, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid cirrus,xtal-ibias value: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cs43130_handle_device_data\00", [37 x i8] zeroinitializer }, align 32
@cs43130_handle_device_data._entry_ptr = internal global ptr @cs43130_handle_device_data._entry, section ".printk_index", align 4
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cirrus,dc-measure\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cirrus,ac-measure\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cirrus,ac-freq\00", [17 x i8] zeroinitializer }, align 32
@cs43130_ac_freq = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 24, i16 43, i16 93, i16 200, i16 431, i16 928, i16 2000, i16 4309, i16 9283, i16 20000], [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cirrus,dc-threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VA\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VP\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCP\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VD\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VL\00", [29 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cs43130_irq_thread.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 2, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_cs43130\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs43130_irq_thread\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"number of interrupts occurred (%u)\0A\00", [60 x i8] zeroinitializer }, align 32
@cs43130_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 2208, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DC load has not completed before AC load (%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@cs43130_irq_thread._entry_ptr = internal global ptr @cs43130_irq_thread._entry, section ".printk_index", align 4
@cs43130_irq_thread._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.4, i32 2216, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HP unplugged during measurement (%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@cs43130_irq_thread._entry_ptr.50 = internal global ptr @cs43130_irq_thread._entry.48, section ".printk_index", align 4
@cs43130_irq_thread._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.45, ptr @.str.4, i32 2224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HP load out of range (%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@cs43130_irq_thread._entry_ptr.53 = internal global ptr @cs43130_irq_thread._entry.51, section ".printk_index", align 4
@cs43130_irq_thread.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.54, i8 2, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HP AC load measurement done (%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@cs43130_irq_thread.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.55, i8 2, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HP DC load measurement done (%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@cs43130_irq_thread.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.56, i8 2, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HP load state machine on done (%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@cs43130_irq_thread.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.57, i8 2, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HP load state machine off done (%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@cs43130_irq_thread._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str.4, i32 2262, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Crystal err: clock is not running\0A\00", [61 x i8] zeroinitializer }, align 32
@cs43130_irq_thread._entry_ptr.60 = internal global ptr @cs43130_irq_thread._entry.58, section ".printk_index", align 4
@cs43130_irq_thread.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.61, i8 2, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HP unplugged\0A\00", [18 x i8] zeroinitializer }, align 32
@cs43130_irq_thread.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.62, i8 2, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HP load queue work\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTA\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTB\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASPIN PCM\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASPIN DoP\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"XSPIN DoP\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"XSPIN DSD\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DSD\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HiFi DAC\00", [23 x i8] zeroinitializer }, align 32
@digital_hp_widgets = internal constant { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [352 x i8] } { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131072, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 7, ptr @cs43130_pcm_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131072, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 7, ptr @cs43130_dsd_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131072, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 7, ptr @cs43130_dsd_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131072, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 7, ptr @cs43130_dsd_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 458756, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 131072, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @cs43130_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [352 x i8] zeroinitializer }, align 32
@pcm_seq = internal constant { [9 x %struct.reg_sequence], [52 x i8] } { [9 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 65573, i32 1, i32 0 }, %struct.reg_sequence { i32 65582, i32 0, i32 0 }, %struct.reg_sequence { i32 786438, i32 1, i32 0 }, %struct.reg_sequence { i32 786434, i32 18, i32 0 }, %struct.reg_sequence { i32 786441, i32 0, i32 0 }, %struct.reg_sequence { i32 786435, i32 40, i32 0 }, %struct.reg_sequence { i32 786437, i32 40, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }], [52 x i8] zeroinitializer }, align 32
@unmute_seq = internal constant { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 786434, i32 16, i32 0 }, %struct.reg_sequence { i32 786446, i32 0, i32 0 }, %struct.reg_sequence { i32 786441, i32 22, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }], [36 x i8] zeroinitializer }, align 32
@mute_seq = internal constant { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 786434, i32 18, i32 0 }, %struct.reg_sequence { i32 786446, i32 2, i32 0 }, %struct.reg_sequence { i32 786441, i32 18, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }], [36 x i8] zeroinitializer }, align 32
@cs43130_pcm_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 1250, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid event = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs43130_pcm_event\00", [46 x i8] zeroinitializer }, align 32
@cs43130_pcm_event._entry_ptr = internal global ptr @cs43130_pcm_event._entry, section ".printk_index", align 4
@dsd_seq = internal constant { [9 x %struct.reg_sequence], [52 x i8] } { [9 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 65573, i32 1, i32 0 }, %struct.reg_sequence { i32 65582, i32 0, i32 0 }, %struct.reg_sequence { i32 786438, i32 1, i32 0 }, %struct.reg_sequence { i32 786434, i32 18, i32 0 }, %struct.reg_sequence { i32 786441, i32 0, i32 0 }, %struct.reg_sequence { i32 786435, i32 30, i32 0 }, %struct.reg_sequence { i32 786437, i32 32, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }], [52 x i8] zeroinitializer }, align 32
@cs43130_dsd_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.74, ptr @.str.4, i32 1193, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs43130_dsd_event\00", [46 x i8] zeroinitializer }, align 32
@cs43130_dsd_event._entry_ptr = internal global ptr @cs43130_dsd_event._entry, section ".printk_index", align 4
@pop_free_seq = internal constant { [3 x %struct.reg_sequence], [60 x i8] } { [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 65580, i32 10, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }], [60 x i8] zeroinitializer }, align 32
@pop_free_seq2 = internal constant { [3 x %struct.reg_sequence], [60 x i8] } { [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 524338, i32 32, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }], [60 x i8] zeroinitializer }, align 32
@dac_postpmu_seq = internal constant { [3 x %struct.reg_sequence], [60 x i8] } { [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 786438, i32 12, i32 0 }, %struct.reg_sequence { i32 786434, i32 16, i32 0 }, %struct.reg_sequence { i32 786441, i32 32, i32 0 }], [60 x i8] zeroinitializer }, align 32
@dac_postpmd_seq = internal constant { [3 x %struct.reg_sequence], [60 x i8] } { [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 589975, i32 1, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }], [60 x i8] zeroinitializer }, align 32
@cs43130_dac_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.4, i32 1326, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid DAC event = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs43130_dac_event\00", [46 x i8] zeroinitializer }, align 32
@cs43130_dac_event._entry_ptr = internal global ptr @cs43130_dac_event._entry, section ".printk_index", align 4
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Analog Playback\00", [16 x i8] zeroinitializer }, align 32
@analog_hp_widgets = internal constant { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [44 x i8] } { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 524288, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @cs43130_hpin_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [44 x i8] zeroinitializer }, align 32
@hpin_prepmd_seq = internal constant { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 720901, i32 100, i32 0 }, %struct.reg_sequence { i32 720902, i32 0, i32 0 }, %struct.reg_sequence { i32 131097, i32 0, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }], [36 x i8] zeroinitializer }, align 32
@hpin_postpmu_seq = internal constant { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 131097, i32 1, i32 0 }, %struct.reg_sequence { i32 720902, i32 220, i32 0 }, %struct.reg_sequence { i32 720901, i32 228, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }], [36 x i8] zeroinitializer }, align 32
@cs43130_hpin_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.4, i32 1364, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid HPIN event = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs43130_hpin_event\00", [45 x i8] zeroinitializer }, align 32
@cs43130_hpin_event._entry_ptr = internal global ptr @cs43130_hpin_event._entry, section ".printk_index", align 4
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASP PCM Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASP DoP Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"XSP DoP Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"XSP DSD Playback\00", [47 x i8] zeroinitializer }, align 32
@cs43130_snd_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @pcm_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @pcm_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @cs43130_pcm_ch_get, ptr @cs43130_pcm_ch_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @pcm_ch_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @pcm_spd_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dsd_enum to i32) }], [112 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@pcm_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 589826, i32 589825, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Master DSD Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 458753, i32 458752, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM Ch Select\00", [18 x i8] zeroinitializer }, align 32
@pcm_ch_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 589828, i8 0, i8 0, i32 4, i32 3, ptr @pcm_ch_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCM Filter Speed\00", [47 x i8] zeroinitializer }, align 32
@pcm_spd_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 589824, i8 7, i8 7, i32 2, i32 1, ptr @pcm_spd_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PCM Phase Compensation\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 589824, i32 589824, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCM Nonoversample Emulate\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 589824, i32 589824, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCM High-pass Filter\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 589824, i32 589824, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PCM De-emphasis Filter\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 589824, i32 589824, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSD Phase Modulation\00", [43 x i8] zeroinitializer }, align 32
@dsd_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 458755, i8 0, i8 0, i32 3, i32 3, ptr @dsd_texts, ptr @dsd_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@pcm_ch_en_seq = internal constant { [18 x %struct.reg_sequence], [40 x i8] } { [18 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 1572869, i32 140, i32 0 }, %struct.reg_sequence { i32 1572871, i32 171, i32 0 }, %struct.reg_sequence { i32 1572885, i32 49, i32 0 }, %struct.reg_sequence { i32 1572887, i32 178, i32 0 }, %struct.reg_sequence { i32 1572901, i32 48, i32 0 }, %struct.reg_sequence { i32 1572903, i32 132, i32 0 }, %struct.reg_sequence { i32 1572917, i32 156, i32 0 }, %struct.reg_sequence { i32 1572919, i32 174, i32 0 }, %struct.reg_sequence { i32 1572877, i32 36, i32 0 }, %struct.reg_sequence { i32 1572879, i32 163, i32 0 }, %struct.reg_sequence { i32 1572893, i32 5, i32 0 }, %struct.reg_sequence { i32 1572895, i32 212, i32 0 }, %struct.reg_sequence { i32 1572909, i32 11, i32 0 }, %struct.reg_sequence { i32 1572911, i32 199, i32 0 }, %struct.reg_sequence { i32 1572925, i32 113, i32 0 }, %struct.reg_sequence { i32 1572927, i32 231, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@pcm_ch_dis_seq = internal constant { [18 x %struct.reg_sequence], [40 x i8] } { [18 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 1572869, i32 36, i32 0 }, %struct.reg_sequence { i32 1572871, i32 163, i32 0 }, %struct.reg_sequence { i32 1572885, i32 5, i32 0 }, %struct.reg_sequence { i32 1572887, i32 212, i32 0 }, %struct.reg_sequence { i32 1572901, i32 11, i32 0 }, %struct.reg_sequence { i32 1572903, i32 199, i32 0 }, %struct.reg_sequence { i32 1572917, i32 113, i32 0 }, %struct.reg_sequence { i32 1572919, i32 231, i32 0 }, %struct.reg_sequence { i32 1572877, i32 140, i32 0 }, %struct.reg_sequence { i32 1572879, i32 171, i32 0 }, %struct.reg_sequence { i32 1572893, i32 49, i32 0 }, %struct.reg_sequence { i32 1572895, i32 178, i32 0 }, %struct.reg_sequence { i32 1572909, i32 48, i32 0 }, %struct.reg_sequence { i32 1572911, i32 132, i32 0 }, %struct.reg_sequence { i32 1572925, i32 156, i32 0 }, %struct.reg_sequence { i32 1572927, i32 174, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@pcm_ch_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left-Right Ch\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left-Left Ch\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right-Left Ch\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right-Right Ch\00", [17 x i8] zeroinitializer }, align 32
@pcm_spd_texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.103, ptr @.str.104], [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Fast\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Slow\00", [27 x i8] zeroinitializer }, align 32
@dsd_texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.105, ptr @.str.106, ptr @.str.107], [20 x i8] zeroinitializer }, align 32
@dsd_values = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 2, i32 3], [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BCKA Mode\00", [22 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BCKD Mode\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Headphone\00", [22 x i8] zeroinitializer }, align 32
@cs43130_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.4, i32 2308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot create jack\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs43130_probe\00", [18 x i8] zeroinitializer }, align 32
@cs43130_probe._entry_ptr = internal global ptr @cs43130_probe._entry, section ".printk_index", align 4
@hpload_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @hpload_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cs43130_hp\00", [21 x i8] zeroinitializer }, align 32
@cs43130_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.113 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&cs43130->work)\00", [62 x i8] zeroinitializer }, align 32
@hpload_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hpload_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@hpload_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_hpload_dc_l, ptr @dev_attr_hpload_dc_r, ptr @dev_attr_hpload_ac_l, ptr @dev_attr_hpload_ac_r], [16 x i8] zeroinitializer }, align 32
@dev_attr_hpload_dc_l = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpload_dc_l_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpload_dc_r = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpload_dc_r_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpload_ac_l = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpload_ac_l_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpload_ac_r = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpload_ac_r_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hpload_dc_l\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NO_HPLOAD\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hpload_dc_r\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hpload_ac_l\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hpload_ac_r\00", [20 x i8] zeroinitializer }, align 32
@hpload_seq1 = internal constant { [7 x %struct.reg_sequences], [44 x i8] } { [7 x %struct.reg_sequences] [%struct.reg_sequences { ptr @hp_en_cal_seq, i32 12, i32 1 }, %struct.reg_sequences { ptr @hp_dc_ch_l_seq, i32 7, i32 4 }, %struct.reg_sequences { ptr @hp_ac_ch_l_seq, i32 7, i32 8 }, %struct.reg_sequences { ptr @hp_dis_cal_seq, i32 5, i32 2 }, %struct.reg_sequences { ptr @hp_en_cal_seq, i32 12, i32 1 }, %struct.reg_sequences { ptr @hp_dc_ch_r_seq, i32 7, i32 4 }, %struct.reg_sequences { ptr @hp_ac_ch_r_seq, i32 7, i32 8 }], [44 x i8] zeroinitializer }, align 32
@hpload_seq2 = internal constant { [7 x %struct.reg_sequences], [44 x i8] } { [7 x %struct.reg_sequences] [%struct.reg_sequences { ptr @hp_en_cal_seq2, i32 5, i32 1 }, %struct.reg_sequences { ptr @hp_dc_ch_l_seq2, i32 2, i32 4 }, %struct.reg_sequences { ptr @hp_ac_ch_l_seq2, i32 2, i32 8 }, %struct.reg_sequences { ptr @hp_dis_cal_seq2, i32 2, i32 2 }, %struct.reg_sequences { ptr @hp_en_cal_seq2, i32 5, i32 1 }, %struct.reg_sequences { ptr @hp_dc_ch_r_seq2, i32 2, i32 4 }, %struct.reg_sequences { ptr @hp_ac_ch_r_seq2, i32 2, i32 8 }], [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid dev_id for meas: %d\00", [36 x i8] zeroinitializer }, align 32
@cs43130_imp_meas.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.121, ptr @.str.4, ptr @.str.122, i8 2, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cs43130_imp_meas\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Set HP output control. DC threshold\0A\00", [59 x i8] zeroinitializer }, align 32
@cs43130_imp_meas.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.121, ptr @.str.4, ptr @.str.123, i8 2, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DC threshold[%d]: %u.\0A\00", [41 x i8] zeroinitializer }, align 32
@hp_dis_cal_seq = internal global { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 917504, i32 128, i32 0 }, %struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 65580, i32 0, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }, %struct.reg_sequence { i32 917504, i32 0, i32 0 }], [36 x i8] zeroinitializer }, align 32
@hp_dis_cal_seq2 = internal global { [2 x %struct.reg_sequence], [40 x i8] } { [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 917504, i32 128, i32 0 }, %struct.reg_sequence { i32 917504, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@hp_cln_seq = internal global { [3 x %struct.reg_sequence], [60 x i8] } { [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 983059, i32 255, i32 0 }, %struct.reg_sequence { i32 917507, i32 0, i32 0 }, %struct.reg_sequence { i32 917508, i32 0, i32 0 }], [60 x i8] zeroinitializer }, align 32
@cs43130_change_clksrc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.4, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid MCLK INT freq: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs43130_change_clksrc\00", [42 x i8] zeroinitializer }, align 32
@cs43130_change_clksrc._entry_ptr = internal global ptr @cs43130_change_clksrc._entry, section ".printk_index", align 4
@cs43130_change_clksrc._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.4, i32 374, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Timeout waiting for XTAL_READY interrupt\0A\00", [54 x i8] zeroinitializer }, align 32
@cs43130_change_clksrc._entry_ptr.128 = internal global ptr @cs43130_change_clksrc._entry.126, section ".printk_index", align 4
@cs43130_change_clksrc._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.4, i32 410, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@cs43130_change_clksrc._entry_ptr.130 = internal global ptr @cs43130_change_clksrc._entry.129, section ".printk_index", align 4
@cs43130_change_clksrc._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.125, ptr @.str.4, i32 426, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Timeout waiting for PLL_READY interrupt\0A\00", [55 x i8] zeroinitializer }, align 32
@cs43130_change_clksrc._entry_ptr.133 = internal global ptr @cs43130_change_clksrc._entry.131, section ".printk_index", align 4
@cs43130_change_clksrc._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.125, ptr @.str.4, i32 457, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid MCLK source value\0A\00", [37 x i8] zeroinitializer }, align 32
@cs43130_change_clksrc._entry_ptr.136 = internal global ptr @cs43130_change_clksrc._entry.134, section ".printk_index", align 4
@hp_en_cal_seq = internal global { [12 x %struct.reg_sequence], [48 x i8] } { [12 x %struct.reg_sequence] [%struct.reg_sequence { i32 983059, i32 255, i32 0 }, %struct.reg_sequence { i32 917507, i32 0, i32 0 }, %struct.reg_sequence { i32 917508, i32 0, i32 0 }, %struct.reg_sequence { i32 983059, i32 0, i32 0 }, %struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 524324, i32 187, i32 0 }, %struct.reg_sequence { i32 65580, i32 1, i32 0 }, %struct.reg_sequence { i32 65574, i32 203, i32 0 }, %struct.reg_sequence { i32 65575, i32 149, i32 0 }, %struct.reg_sequence { i32 65576, i32 11, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }, %struct.reg_sequence { i32 917504, i32 128, i32 0 }], [48 x i8] zeroinitializer }, align 32
@hp_dc_ch_l_seq = internal global { [7 x %struct.reg_sequence], [44 x i8] } { [7 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 65574, i32 10, i32 0 }, %struct.reg_sequence { i32 65575, i32 147, i32 0 }, %struct.reg_sequence { i32 65576, i32 10, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }, %struct.reg_sequence { i32 917504, i32 128, i32 0 }, %struct.reg_sequence { i32 917504, i32 129, i32 0 }], [44 x i8] zeroinitializer }, align 32
@hp_ac_ch_l_seq = internal global { [7 x %struct.reg_sequence], [44 x i8] } { [7 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 65574, i32 10, i32 0 }, %struct.reg_sequence { i32 65575, i32 147, i32 0 }, %struct.reg_sequence { i32 65576, i32 10, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }, %struct.reg_sequence { i32 917504, i32 128, i32 0 }, %struct.reg_sequence { i32 917504, i32 130, i32 0 }], [44 x i8] zeroinitializer }, align 32
@hp_dc_ch_r_seq = internal global { [7 x %struct.reg_sequence], [44 x i8] } { [7 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 65574, i32 138, i32 0 }, %struct.reg_sequence { i32 65575, i32 21, i32 0 }, %struct.reg_sequence { i32 65576, i32 6, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }, %struct.reg_sequence { i32 917504, i32 144, i32 0 }, %struct.reg_sequence { i32 917504, i32 145, i32 0 }], [44 x i8] zeroinitializer }, align 32
@hp_ac_ch_r_seq = internal global { [7 x %struct.reg_sequence], [44 x i8] } { [7 x %struct.reg_sequence] [%struct.reg_sequence { i32 65552, i32 153, i32 0 }, %struct.reg_sequence { i32 65574, i32 138, i32 0 }, %struct.reg_sequence { i32 65575, i32 21, i32 0 }, %struct.reg_sequence { i32 65576, i32 6, i32 0 }, %struct.reg_sequence { i32 65552, i32 0, i32 0 }, %struct.reg_sequence { i32 917504, i32 144, i32 0 }, %struct.reg_sequence { i32 917504, i32 146, i32 0 }], [44 x i8] zeroinitializer }, align 32
@hp_en_cal_seq2 = internal global { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 983059, i32 255, i32 0 }, %struct.reg_sequence { i32 917507, i32 0, i32 0 }, %struct.reg_sequence { i32 917508, i32 0, i32 0 }, %struct.reg_sequence { i32 983059, i32 0, i32 0 }, %struct.reg_sequence { i32 917504, i32 128, i32 0 }], [36 x i8] zeroinitializer }, align 32
@hp_dc_ch_l_seq2 = internal global { [2 x %struct.reg_sequence], [40 x i8] } { [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 917504, i32 128, i32 0 }, %struct.reg_sequence { i32 917504, i32 129, i32 0 }], [40 x i8] zeroinitializer }, align 32
@hp_ac_ch_l_seq2 = internal global { [2 x %struct.reg_sequence], [40 x i8] } { [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 917504, i32 128, i32 0 }, %struct.reg_sequence { i32 917504, i32 130, i32 0 }], [40 x i8] zeroinitializer }, align 32
@hp_dc_ch_r_seq2 = internal global { [2 x %struct.reg_sequence], [40 x i8] } { [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 917504, i32 144, i32 0 }, %struct.reg_sequence { i32 917504, i32 145, i32 0 }], [40 x i8] zeroinitializer }, align 32
@hp_ac_ch_r_seq2 = internal global { [2 x %struct.reg_sequence], [40 x i8] } { [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 917504, i32 144, i32 0 }, %struct.reg_sequence { i32 917504, i32 146, i32 0 }], [40 x i8] zeroinitializer }, align 32
@cs43130_hpload_proc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.4, i32 2013, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timeout waiting for HPLOAD interrupt\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs43130_hpload_proc\00", [44 x i8] zeroinitializer }, align 32
@cs43130_hpload_proc._entry_ptr = internal global ptr @cs43130_hpload_proc._entry, section ".printk_index", align 4
@cs43130_hpload_proc.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.138, ptr @.str.4, ptr @.str.139, i8 1, i8 -8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HP load stat: %x, INT_MASK_4: %x\0A\00", [62 x i8] zeroinitializer }, align 32
@cs43130_hpload_proc.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.138, ptr @.str.4, ptr @.str.140, i8 1, i8 -7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HP load measure failed\0A\00", [40 x i8] zeroinitializer }, align 32
@cs43130_update_hpload.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.141, ptr @.str.4, ptr @.str.142, i8 1, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs43130_update_hpload\00", [42 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HP DC impedance (Ch %u): %u\0A\00", [35 x i8] zeroinitializer }, align 32
@cs43130_update_hpload.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.141, ptr @.str.4, ptr @.str.143, i8 1, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HP AC (%u Hz) impedance (Ch %u): %u\0A\00", [59 x i8] zeroinitializer }, align 32
@hv_seq = internal constant { [3 x [2 x %struct.reg_sequence]], [56 x i8] } { [3 x [2 x %struct.reg_sequence]] [[2 x %struct.reg_sequence] [%struct.reg_sequence { i32 720896, i32 28, i32 0 }, %struct.reg_sequence { i32 524288, i32 16, i32 0 }], [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 720896, i32 30, i32 0 }, %struct.reg_sequence { i32 524288, i32 32, i32 0 }], [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 720896, i32 30, i32 0 }, %struct.reg_sequence { i32 524288, i32 48, i32 0 }]], [56 x i8] zeroinitializer }, align 32
@cs43130_component_set_sysclk.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.144, ptr @.str.4, ptr @.str.145, i8 1, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cs43130_component_set_sysclk\00", [35 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"clk_id = %d, source = %d, freq = %d, dir = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@cs43130_component_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.144, ptr @.str.4, i32 1643, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@cs43130_component_set_sysclk._entry_ptr = internal global ptr @cs43130_component_set_sysclk._entry, section ".printk_index", align 4
@cs43130_component_set_sysclk._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.144, ptr @.str.4, i32 1650, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid MCLK source\0A\00", [43 x i8] zeroinitializer }, align 32
@cs43130_component_set_sysclk._entry_ptr.148 = internal global ptr @cs43130_component_set_sysclk._entry.146, section ".printk_index", align 4
@cs43130_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.4, i32 308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unsupported pll input reference clock:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cs43130_set_pll\00", [16 x i8] zeroinitializer }, align 32
@cs43130_set_pll._entry_ptr = internal global ptr @cs43130_set_pll._entry, section ".printk_index", align 4
@cs43130_set_pll._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.4, i32 321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unsupported pll output ref clock: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@cs43130_set_pll._entry_ptr.153 = internal global ptr @cs43130_set_pll._entry.151, section ".printk_index", align 4
@cs43130_set_pll.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.150, ptr @.str.4, ptr @.str.154, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cs43130->pll_bypass = %d\00", [39 x i8] zeroinitializer }, align 32
@cs43130_pll_config.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.155, ptr @.str.4, ptr @.str.156, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs43130_pll_config\00", [45 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cs43130->mclk = %u, cs43130->mclk_int = %u\0A\00", [52 x i8] zeroinitializer }, align 32
@pll_ratio_table = internal constant { [20 x %struct.cs43130_pll_params], [96 x i8] } { [20 x %struct.cs43130_pll_params] [%struct.cs43130_pll_params { i32 9600000, i8 2, i8 73, i32 8388608, i8 0, i8 8, i32 22579200, i8 -105 }, %struct.cs43130_pll_params { i32 9600000, i8 2, i8 80, i32 0, i8 0, i8 8, i32 24576000, i8 -92 }, %struct.cs43130_pll_params { i32 11289600, i8 2, i8 64, i32 0, i8 1, i8 8, i32 22579200, i8 -128 }, %struct.cs43130_pll_params { i32 11289600, i8 2, i8 68, i32 456448, i8 0, i8 8, i32 24576000, i8 -117 }, %struct.cs43130_pll_params { i32 12000000, i8 2, i8 73, i32 8388608, i8 0, i8 10, i32 22579200, i8 120 }, %struct.cs43130_pll_params { i32 12000000, i8 2, i8 64, i32 0, i8 0, i8 8, i32 24576000, i8 -125 }, %struct.cs43130_pll_params { i32 12288000, i8 2, i8 73, i32 8388608, i8 1, i8 10, i32 22579200, i8 118 }, %struct.cs43130_pll_params { i32 12288000, i8 2, i8 64, i32 0, i8 1, i8 8, i32 24576000, i8 -128 }, %struct.cs43130_pll_params { i32 13000000, i8 2, i8 69, i32 7960192, i8 1, i8 10, i32 22579200, i8 111 }, %struct.cs43130_pll_params { i32 13000000, i8 2, i8 60, i32 8300864, i8 1, i8 8, i32 24576000, i8 121 }, %struct.cs43130_pll_params { i32 19200000, i8 3, i8 73, i32 8388608, i8 0, i8 8, i32 22579200, i8 -105 }, %struct.cs43130_pll_params { i32 19200000, i8 3, i8 80, i32 0, i8 0, i8 8, i32 24576000, i8 -92 }, %struct.cs43130_pll_params { i32 22579200, i8 0, i8 0, i32 0, i8 0, i8 0, i32 22579200, i8 0 }, %struct.cs43130_pll_params { i32 22579200, i8 3, i8 68, i32 456448, i8 0, i8 8, i32 24576000, i8 -117 }, %struct.cs43130_pll_params { i32 24000000, i8 3, i8 73, i32 8388608, i8 0, i8 10, i32 22579200, i8 120 }, %struct.cs43130_pll_params { i32 24000000, i8 3, i8 64, i32 0, i8 0, i8 8, i32 24576000, i8 -125 }, %struct.cs43130_pll_params { i32 24576000, i8 3, i8 73, i32 8388608, i8 1, i8 10, i32 22579200, i8 118 }, %struct.cs43130_pll_params { i32 24576000, i8 0, i8 0, i32 0, i8 0, i8 0, i32 24576000, i8 0 }, %struct.cs43130_pll_params { i32 26000000, i8 3, i8 69, i32 7960192, i8 1, i8 10, i32 22579200, i8 111 }, %struct.cs43130_pll_params { i32 26000000, i8 3, i8 60, i32 8300864, i8 1, i8 8, i32 24576000, i8 121 }], [96 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cs43130-asp-pcm\00", [16 x i8] zeroinitializer }, align 32
@cs43130_pcm_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cs43130_set_sysclk, ptr null, ptr null, ptr null, ptr @cs43130_pcm_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs43130_pcm_startup, ptr null, ptr @cs43130_hw_params, ptr @cs43130_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cs43130-asp-dop\00", [16 x i8] zeroinitializer }, align 32
@cs43130_dop_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @cs43130_set_sysclk, ptr null, ptr null, ptr null, ptr @cs43130_pcm_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs43130_dop_startup, ptr null, ptr @cs43130_hw_params, ptr @cs43130_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cs43130-xsp-dop\00", [16 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cs43130-xsp-dsd\00", [16 x i8] zeroinitializer }, align 32
@cs43130_dsd_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @cs43130_dsd_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs43130_dop_startup, ptr null, ptr @cs43130_dsd_hw_params, ptr @cs43130_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@cs43130_set_sysclk.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.161, ptr @.str.4, ptr @.str.162, i8 1, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs43130_set_sysclk\00", [45 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dai_id = %d,  sclk = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@cs43130_pcm_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.4, i32 1483, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unsupported mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs43130_pcm_set_fmt\00", [44 x i8] zeroinitializer }, align 32
@cs43130_pcm_set_fmt._entry_ptr = internal global ptr @cs43130_pcm_set_fmt._entry, section ".printk_index", align 4
@cs43130_pcm_set_fmt._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.164, ptr @.str.4, i32 1502, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported audio format\0A\00", [38 x i8] zeroinitializer }, align 32
@cs43130_pcm_set_fmt._entry_ptr.167 = internal global ptr @cs43130_pcm_set_fmt._entry.165, section ".printk_index", align 4
@cs43130_pcm_set_fmt.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.164, ptr @.str.4, ptr @.str.168, i8 1, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"dai_id = %d,  dai_mode = %u, dai_format = %u\0A\00", [50 x i8] zeroinitializer }, align 32
@cs43130_asp_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @cs43130_asp_src_rates, i32 9, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cs43130_asp_src_rates = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000, i32 352800, i32 384000], [60 x i8] zeroinitializer }, align 32
@cs43130_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.4, i32 880, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Rate(%u) not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cs43130_hw_params\00", [46 x i8] zeroinitializer }, align 32
@cs43130_hw_params._entry_ptr = internal global ptr @cs43130_hw_params._entry, section ".printk_index", align 4
@cs43130_hw_params._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.170, ptr @.str.4, i32 896, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid DAI (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@cs43130_hw_params._entry_ptr.173 = internal global ptr @cs43130_hw_params._entry.171, section ".printk_index", align 4
@cs43130_hw_params._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.170, ptr @.str.4, i32 920, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCLK freq is not set\0A\00", [42 x i8] zeroinitializer }, align 32
@cs43130_hw_params._entry_ptr.176 = internal global ptr @cs43130_hw_params._entry.174, section ".printk_index", align 4
@cs43130_hw_params._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.170, ptr @.str.4, i32 926, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Format not supported: SCLK freq is too low\0A\00", [52 x i8] zeroinitializer }, align 32
@cs43130_hw_params._entry_ptr.179 = internal global ptr @cs43130_hw_params._entry.177, section ".printk_index", align 4
@cs43130_hw_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.170, ptr @.str.4, ptr @.str.180, i8 0, i8 -23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sclk = %u, fs = %d, bitwidth_dai = %u\0A\00", [57 x i8] zeroinitializer }, align 32
@cs43130_hw_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.170, ptr @.str.4, ptr @.str.181, i8 0, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bitwidth_sclk = %u, num_ch = %u\0A\00", [63 x i8] zeroinitializer }, align 32
@cs43130_rate_table = internal constant { [9 x %struct.cs43130_rate_map], [56 x i8] } { [9 x %struct.cs43130_rate_map] [%struct.cs43130_rate_map { i32 32000, i32 0 }, %struct.cs43130_rate_map { i32 44100, i32 1 }, %struct.cs43130_rate_map { i32 48000, i32 2 }, %struct.cs43130_rate_map { i32 88200, i32 3 }, %struct.cs43130_rate_map { i32 96000, i32 4 }, %struct.cs43130_rate_map { i32 176400, i32 5 }, %struct.cs43130_rate_map { i32 192000, i32 6 }, %struct.cs43130_rate_map { i32 352800, i32 7 }, %struct.cs43130_rate_map { i32 384000, i32 8 }], [56 x i8] zeroinitializer }, align 32
@cs43130_bitwidth_table = internal constant { [4 x %struct.cs43130_bitwidth_map], [32 x i8] } { [4 x %struct.cs43130_bitwidth_map] [%struct.cs43130_bitwidth_map { i32 8, i8 3, i8 0 }, %struct.cs43130_bitwidth_map { i32 16, i8 2, i8 1 }, %struct.cs43130_bitwidth_map { i32 24, i8 1, i8 2 }, %struct.cs43130_bitwidth_map { i32 32, i8 0, i8 3 }], [32 x i8] zeroinitializer }, align 32
@cs43130_16_clk_gen = internal constant { [18 x %struct.cs43130_clk_gen], [40 x i8] } { [18 x %struct.cs43130_clk_gen] [%struct.cs43130_clk_gen { i32 22579200, i32 32000, i16 441, i16 10 }, %struct.cs43130_clk_gen { i32 22579200, i32 44100, i16 32, i16 1 }, %struct.cs43130_clk_gen { i32 22579200, i32 48000, i16 147, i16 5 }, %struct.cs43130_clk_gen { i32 22579200, i32 88200, i16 16, i16 1 }, %struct.cs43130_clk_gen { i32 22579200, i32 96000, i16 147, i16 10 }, %struct.cs43130_clk_gen { i32 22579200, i32 176400, i16 8, i16 1 }, %struct.cs43130_clk_gen { i32 22579200, i32 192000, i16 147, i16 20 }, %struct.cs43130_clk_gen { i32 22579200, i32 352800, i16 4, i16 1 }, %struct.cs43130_clk_gen { i32 22579200, i32 384000, i16 147, i16 40 }, %struct.cs43130_clk_gen { i32 24576000, i32 32000, i16 48, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 44100, i16 5120, i16 147 }, %struct.cs43130_clk_gen { i32 24576000, i32 48000, i16 32, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 88200, i16 2560, i16 147 }, %struct.cs43130_clk_gen { i32 24576000, i32 96000, i16 16, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 176400, i16 1280, i16 147 }, %struct.cs43130_clk_gen { i32 24576000, i32 192000, i16 8, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 352800, i16 640, i16 147 }, %struct.cs43130_clk_gen { i32 24576000, i32 384000, i16 4, i16 1 }], [40 x i8] zeroinitializer }, align 32
@cs43130_32_clk_gen = internal constant { [18 x %struct.cs43130_clk_gen], [40 x i8] } { [18 x %struct.cs43130_clk_gen] [%struct.cs43130_clk_gen { i32 22579200, i32 32000, i16 441, i16 20 }, %struct.cs43130_clk_gen { i32 22579200, i32 44100, i16 16, i16 1 }, %struct.cs43130_clk_gen { i32 22579200, i32 48000, i16 147, i16 10 }, %struct.cs43130_clk_gen { i32 22579200, i32 88200, i16 8, i16 1 }, %struct.cs43130_clk_gen { i32 22579200, i32 96000, i16 147, i16 20 }, %struct.cs43130_clk_gen { i32 22579200, i32 176400, i16 4, i16 1 }, %struct.cs43130_clk_gen { i32 22579200, i32 192000, i16 147, i16 40 }, %struct.cs43130_clk_gen { i32 22579200, i32 352800, i16 2, i16 1 }, %struct.cs43130_clk_gen { i32 22579200, i32 384000, i16 147, i16 80 }, %struct.cs43130_clk_gen { i32 24576000, i32 32000, i16 24, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 44100, i16 2560, i16 147 }, %struct.cs43130_clk_gen { i32 24576000, i32 48000, i16 16, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 88200, i16 1280, i16 147 }, %struct.cs43130_clk_gen { i32 24576000, i32 96000, i16 8, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 176400, i16 640, i16 147 }, %struct.cs43130_clk_gen { i32 24576000, i32 192000, i16 4, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 352800, i16 320, i16 147 }, %struct.cs43130_clk_gen { i32 24576000, i32 384000, i16 2, i16 1 }], [40 x i8] zeroinitializer }, align 32
@cs43130_48_clk_gen = internal constant { [18 x %struct.cs43130_clk_gen], [40 x i8] } { [18 x %struct.cs43130_clk_gen] [%struct.cs43130_clk_gen { i32 22579200, i32 32000, i16 147, i16 100 }, %struct.cs43130_clk_gen { i32 22579200, i32 44100, i16 32, i16 3 }, %struct.cs43130_clk_gen { i32 22579200, i32 48000, i16 49, i16 5 }, %struct.cs43130_clk_gen { i32 22579200, i32 88200, i16 16, i16 3 }, %struct.cs43130_clk_gen { i32 22579200, i32 96000, i16 49, i16 10 }, %struct.cs43130_clk_gen { i32 22579200, i32 176400, i16 8, i16 3 }, %struct.cs43130_clk_gen { i32 22579200, i32 192000, i16 49, i16 20 }, %struct.cs43130_clk_gen { i32 22579200, i32 352800, i16 4, i16 3 }, %struct.cs43130_clk_gen { i32 22579200, i32 384000, i16 49, i16 40 }, %struct.cs43130_clk_gen { i32 24576000, i32 32000, i16 16, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 44100, i16 5120, i16 441 }, %struct.cs43130_clk_gen { i32 24576000, i32 48000, i16 32, i16 3 }, %struct.cs43130_clk_gen { i32 24576000, i32 88200, i16 2560, i16 441 }, %struct.cs43130_clk_gen { i32 24576000, i32 96000, i16 16, i16 3 }, %struct.cs43130_clk_gen { i32 24576000, i32 176400, i16 1280, i16 441 }, %struct.cs43130_clk_gen { i32 24576000, i32 192000, i16 8, i16 3 }, %struct.cs43130_clk_gen { i32 24576000, i32 352800, i16 640, i16 441 }, %struct.cs43130_clk_gen { i32 24576000, i32 384000, i16 4, i16 3 }], [40 x i8] zeroinitializer }, align 32
@cs43130_64_clk_gen = internal constant { [17 x %struct.cs43130_clk_gen], [52 x i8] } { [17 x %struct.cs43130_clk_gen] [%struct.cs43130_clk_gen { i32 22579200, i32 32000, i16 441, i16 40 }, %struct.cs43130_clk_gen { i32 22579200, i32 44100, i16 8, i16 1 }, %struct.cs43130_clk_gen { i32 22579200, i32 48000, i16 147, i16 20 }, %struct.cs43130_clk_gen { i32 22579200, i32 88200, i16 4, i16 1 }, %struct.cs43130_clk_gen { i32 22579200, i32 96000, i16 147, i16 40 }, %struct.cs43130_clk_gen { i32 22579200, i32 176400, i16 2, i16 1 }, %struct.cs43130_clk_gen { i32 22579200, i32 192000, i16 147, i16 80 }, %struct.cs43130_clk_gen { i32 22579200, i32 352800, i16 1, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 32000, i16 12, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 44100, i16 1280, i16 147 }, %struct.cs43130_clk_gen { i32 24576000, i32 48000, i16 8, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 88200, i16 640, i16 147 }, %struct.cs43130_clk_gen { i32 24576000, i32 96000, i16 4, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 176400, i16 320, i16 147 }, %struct.cs43130_clk_gen { i32 24576000, i32 192000, i16 2, i16 1 }, %struct.cs43130_clk_gen { i32 24576000, i32 352800, i16 160, i16 147 }, %struct.cs43130_clk_gen { i32 24576000, i32 384000, i16 1, i16 1 }], [52 x i8] zeroinitializer }, align 32
@cs43130_dop_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @cs43130_dop_src_rates, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cs43130_dop_src_rates = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 176400, i32 352800], [24 x i8] zeroinitializer }, align 32
@cs43130_dsd_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.4, i32 1527, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported DAI format.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs43130_dsd_set_fmt\00", [44 x i8] zeroinitializer }, align 32
@cs43130_dsd_set_fmt._entry_ptr = internal global ptr @cs43130_dsd_set_fmt._entry, section ".printk_index", align 4
@cs43130_dsd_set_fmt.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.183, ptr @.str.4, ptr @.str.184, i8 1, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dai_mode = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@cs43130_dsd_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.185, ptr @.str.4, i32 809, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs43130_dsd_hw_params\00", [42 x i8] zeroinitializer }, align 32
@cs43130_dsd_hw_params._entry_ptr = internal global ptr @cs43130_dsd_hw_params._entry, section ".printk_index", align 4
@cs43130_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.186, ptr @.str.4, i32 2645, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs43130_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@cs43130_runtime_resume._entry_ptr = internal global ptr @cs43130_runtime_resume._entry, section ".printk_index", align 4
@cs43130_runtime_resume._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.186, ptr @.str.4, i32 2657, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to restore register cache\0A\00", [62 x i8] zeroinitializer }, align 32
@cs43130_runtime_resume._entry_ptr.189 = internal global ptr @cs43130_runtime_resume._entry.187, section ".printk_index", align 4
@switch.table.cs43130_hw_params = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @cs43130_bitwidth_table, ptr getelementptr inbounds ([4 x %struct.cs43130_bitwidth_map], ptr @cs43130_bitwidth_table, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.cs43130_bitwidth_map], ptr @cs43130_bitwidth_table, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.cs43130_bitwidth_map], ptr @cs43130_bitwidth_table, i32 0, i32 3)], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 274736, i64 274737, i64 274840, i64 276880]
@__sancov_gen_cov_switch_values.190 = internal global [6 x i64] [i64 4, i64 32, i64 274736, i64 274737, i64 274840, i64 276880]
@__sancov_gen_cov_switch_values.191 = internal global [87 x i64] [i64 85, i64 32, i64 65536, i64 65537, i64 65538, i64 65539, i64 65540, i64 65541, i64 65542, i64 65547, i64 65548, i64 65549, i64 131072, i64 131154, i64 196609, i64 196610, i64 196611, i64 196612, i64 196613, i64 196616, i64 196618, i64 196635, i64 262146, i64 262147, i64 262148, i64 262160, i64 262161, i64 262162, i64 262163, i64 262164, i64 262165, i64 262166, i64 262167, i64 262168, i64 262169, i64 262176, i64 262177, i64 262178, i64 262179, i64 262180, i64 262181, i64 262182, i64 262183, i64 262184, i64 262185, i64 327680, i64 327681, i64 327690, i64 327691, i64 393216, i64 393217, i64 393226, i64 393227, i64 458752, i64 458753, i64 458754, i64 458755, i64 458756, i64 458757, i64 458758, i64 524288, i64 589824, i64 589825, i64 589826, i64 589827, i64 589828, i64 720896, i64 851968, i64 851969, i64 917504, i64 917507, i64 917508, i64 917517, i64 917518, i64 917520, i64 917521, i64 917530, i64 983040, i64 983041, i64 983042, i64 983043, i64 983044, i64 983056, i64 983057, i64 983058, i64 983059, i64 983060]
@__sancov_gen_cov_switch_values.192 = internal global [11 x i64] [i64 9, i64 32, i64 917517, i64 917518, i64 917520, i64 917521, i64 983040, i64 983041, i64 983042, i64 983043, i64 983044]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 274736, i64 276880]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 32, i64 274736, i64 276880]
@__sancov_gen_cov_switch_values.196 = internal global [6 x i64] [i64 4, i64 32, i64 274736, i64 274737, i64 274840, i64 276880]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 274736, i64 276880]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 32, i64 274736, i64 276880]
@__sancov_gen_cov_switch_values.200 = internal global [6 x i64] [i64 4, i64 32, i64 274736, i64 274737, i64 274840, i64 276880]
@__sancov_gen_cov_switch_values.201 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.202 = internal global [6 x i64] [i64 4, i64 32, i64 274736, i64 274737, i64 274840, i64 276880]
@__sancov_gen_cov_switch_values.203 = internal global [6 x i64] [i64 4, i64 32, i64 274736, i64 274737, i64 274840, i64 276880]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 274736, i64 276880]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 22579200, i64 24576000]
@__sancov_gen_cov_switch_values.207 = internal global [12 x i64] [i64 10, i64 32, i64 9600000, i64 11289600, i64 12000000, i64 12288000, i64 13000000, i64 19200000, i64 22579200, i64 24000000, i64 24576000, i64 26000000]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 22579200, i64 24576000]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 274737, i64 274840]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 32, i64 274736, i64 274737]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 274736, i64 274737]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 32, i64 22579200, i64 24576000]
@__sancov_gen_cov_switch_values.213 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.215 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 17]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.217 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.218 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.219 = internal global [4 x i64] [i64 2, i64 32, i64 176400, i64 352800]
@__sancov_gen_cov_switch_values.220 = internal global [11 x i64] [i64 9, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000, i64 352800, i64 384000]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.222 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.223 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.224 = internal global [4 x i64] [i64 2, i64 32, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.225 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.226 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.227 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.228 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.229 = internal global [4 x i64] [i64 2, i64 32, i64 176400, i64 352800]
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c"cs43130_i2c_driver\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2698, i32 26 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2700, i32 12 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"cs43130_of_match\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2678, i32 34 }
@___asan_gen_.239 = private unnamed_addr constant [19 x i8] c"cs43130_runtime_pm\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2673, i32 32 }
@___asan_gen_.242 = private unnamed_addr constant [15 x i8] c"cs43130_i2c_id\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2688, i32 35 }
@___asan_gen_.245 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [15 x i8] c"cs43130_regmap\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2351, i32 35 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2435, i32 20 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2453, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2459, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2464, i32 13 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2477, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2488, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2499, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2503, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2507, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2518, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [15 x i8] c"all_hp_widgets\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1409, i32 35 }
@___asan_gen_.323 = private unnamed_addr constant [14 x i8] c"all_hp_routes\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1432, i32 34 }
@___asan_gen_.326 = private unnamed_addr constant [18 x i8] c"digital_hp_routes\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1413, i32 40 }
@___asan_gen_.329 = private unnamed_addr constant [17 x i8] c"analog_hp_routes\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1427, i32 40 }
@___asan_gen_.332 = private unnamed_addr constant [26 x i8] c"soc_component_dev_cs43130\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2339, i32 40 }
@___asan_gen_.335 = private unnamed_addr constant [12 x i8] c"cs43130_dai\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1573, i32 34 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2567, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [21 x i8] c"cs43130_reg_defaults\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 41, i32 33 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2380, i32 31 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2397, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2402, i32 47 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2403, i32 47 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2405, i32 37 }
@___asan_gen_.368 = private unnamed_addr constant [16 x i8] c"cs43130_ac_freq\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1687, i32 18 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2411, i32 37 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 486, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 487, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 488, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 489, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 490, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 87, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2188, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2206, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2215, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2223, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2231, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2239, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2247, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2255, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2262, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2267, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2276, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1371, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1372, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1374, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1379, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1384, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1389, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1394, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1397, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [19 x i8] c"digital_hp_widgets\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1370, i32 41 }
@___asan_gen_.473 = private unnamed_addr constant [8 x i8] c"pcm_seq\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1090, i32 34 }
@___asan_gen_.476 = private unnamed_addr constant [11 x i8] c"unmute_seq\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1134, i32 34 }
@___asan_gen_.479 = private unnamed_addr constant [9 x i8] c"mute_seq\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1126, i32 34 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1250, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant [8 x i8] c"dsd_seq\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1102, i32 34 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1193, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant [13 x i8] c"pop_free_seq\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1114, i32 34 }
@___asan_gen_.503 = private unnamed_addr constant [14 x i8] c"pop_free_seq2\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1120, i32 34 }
@___asan_gen_.506 = private unnamed_addr constant [16 x i8] c"dac_postpmu_seq\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1256, i32 34 }
@___asan_gen_.509 = private unnamed_addr constant [16 x i8] c"dac_postpmd_seq\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1262, i32 34 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1326, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1404, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant [18 x i8] c"analog_hp_widgets\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1403, i32 41 }
@___asan_gen_.527 = private unnamed_addr constant [16 x i8] c"hpin_prepmd_seq\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1332, i32 34 }
@___asan_gen_.530 = private unnamed_addr constant [17 x i8] c"hpin_postpmu_seq\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1340, i32 34 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1364, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1414, i32 22 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1415, i32 22 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1416, i32 22 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1417, i32 22 }
@___asan_gen_.554 = private unnamed_addr constant [21 x i8] c"cs43130_snd_controls\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1073, i32 38 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1074, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant [12 x i8] c"pcm_vol_tlv\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 962, i32 14 }
@___asan_gen_.563 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1077, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1080, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant [12 x i8] c"pcm_ch_enum\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1047, i32 8 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1082, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [13 x i8] c"pcm_spd_enum\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1055, i32 8 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1083, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1084, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1085, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1086, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1087, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant [9 x i8] c"dsd_enum\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1070, i32 8 }
@___asan_gen_.602 = private unnamed_addr constant [14 x i8] c"pcm_ch_en_seq\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 971, i32 34 }
@___asan_gen_.605 = private unnamed_addr constant [15 x i8] c"pcm_ch_dis_seq\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 992, i32 34 }
@___asan_gen_.608 = private unnamed_addr constant [12 x i8] c"pcm_ch_text\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 964, i32 27 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 965, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 966, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 967, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 968, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant [14 x i8] c"pcm_spd_texts\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1050, i32 27 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1051, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1052, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant [10 x i8] c"dsd_texts\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1058, i32 27 }
@___asan_gen_.635 = private unnamed_addr constant [11 x i8] c"dsd_values\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1064, i32 27 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1059, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1060, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1061, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2305, i32 36 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2308, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant [14 x i8] c"hpload_groups\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2318, i32 17 }
@___asan_gen_.668 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2323, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant [13 x i8] c"hpload_group\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1745, i32 1 }
@___asan_gen_.677 = private unnamed_addr constant [13 x i8] c"hpload_attrs\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1739, i32 26 }
@___asan_gen_.680 = private unnamed_addr constant [21 x i8] c"dev_attr_hpload_dc_l\00", align 1
@___asan_gen_.683 = private unnamed_addr constant [21 x i8] c"dev_attr_hpload_dc_r\00", align 1
@___asan_gen_.686 = private unnamed_addr constant [21 x i8] c"dev_attr_hpload_ac_l\00", align 1
@___asan_gen_.689 = private unnamed_addr constant [21 x i8] c"dev_attr_hpload_ac_r\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1734, i32 8 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1669, i32 36 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1671, i32 36 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1735, i32 8 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1736, i32 8 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1737, i32 8 }
@___asan_gen_.710 = private unnamed_addr constant [12 x i8] c"hpload_seq1\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1855, i32 29 }
@___asan_gen_.713 = private unnamed_addr constant [12 x i8] c"hpload_seq2\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1893, i32 29 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2101, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2134, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2136, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant [15 x i8] c"hp_dis_cal_seq\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1770, i32 28 }
@___asan_gen_.731 = private unnamed_addr constant [16 x i8] c"hp_dis_cal_seq2\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1778, i32 28 }
@___asan_gen_.734 = private unnamed_addr constant [11 x i8] c"hp_cln_seq\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1843, i32 28 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 350, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 374, i32 5 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 410, i32 5 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 426, i32 4 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 457, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant [14 x i8] c"hp_en_cal_seq\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1747, i32 28 }
@___asan_gen_.770 = private unnamed_addr constant [15 x i8] c"hp_dc_ch_l_seq\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1783, i32 28 }
@___asan_gen_.773 = private unnamed_addr constant [15 x i8] c"hp_ac_ch_l_seq\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1813, i32 28 }
@___asan_gen_.776 = private unnamed_addr constant [15 x i8] c"hp_dc_ch_r_seq\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1798, i32 28 }
@___asan_gen_.779 = private unnamed_addr constant [15 x i8] c"hp_ac_ch_r_seq\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1828, i32 28 }
@___asan_gen_.782 = private unnamed_addr constant [15 x i8] c"hp_en_cal_seq2\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1762, i32 28 }
@___asan_gen_.785 = private unnamed_addr constant [16 x i8] c"hp_dc_ch_l_seq2\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1793, i32 28 }
@___asan_gen_.788 = private unnamed_addr constant [16 x i8] c"hp_ac_ch_l_seq2\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1823, i32 28 }
@___asan_gen_.791 = private unnamed_addr constant [16 x i8] c"hp_dc_ch_r_seq2\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1808, i32 28 }
@___asan_gen_.794 = private unnamed_addr constant [16 x i8] c"hp_ac_ch_r_seq2\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1838, i32 28 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2013, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2017, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2023, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1968, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1976, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant [7 x i8] c"hv_seq\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2030, i32 34 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1634, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1643, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1650, i32 3 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 307, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 320, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 326, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 242, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant [16 x i8] c"pll_ratio_table\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 191, i32 40 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1575, i32 11 }
@___asan_gen_.869 = private unnamed_addr constant [16 x i8] c"cs43130_pcm_ops\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1550, i32 37 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1588, i32 11 }
@___asan_gen_.875 = private unnamed_addr constant [16 x i8] c"cs43130_dop_ops\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1558, i32 37 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1601, i32 11 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1614, i32 11 }
@___asan_gen_.884 = private unnamed_addr constant [16 x i8] c"cs43130_dsd_ops\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1566, i32 37 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1544, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1483, i32 3 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1501, i32 3 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1506, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant [24 x i8] c"cs43130_asp_constraints\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1440, i32 48 }
@___asan_gen_.914 = private unnamed_addr constant [22 x i8] c"cs43130_asp_src_rates\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1436, i32 27 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 879, i32 4 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 896, i32 3 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 920, i32 3 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 926, i32 3 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 930, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 934, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant [19 x i8] c"cs43130_rate_table\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 519, i32 38 }
@___asan_gen_.953 = private unnamed_addr constant [23 x i8] c"cs43130_bitwidth_table\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 464, i32 42 }
@___asan_gen_.956 = private unnamed_addr constant [19 x i8] c"cs43130_16_clk_gen\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 382, i32 37 }
@___asan_gen_.959 = private unnamed_addr constant [19 x i8] c"cs43130_32_clk_gen\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 404, i32 37 }
@___asan_gen_.962 = private unnamed_addr constant [19 x i8] c"cs43130_48_clk_gen\00", align 1
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 426, i32 37 }
@___asan_gen_.965 = private unnamed_addr constant [19 x i8] c"cs43130_64_clk_gen\00", align 1
@___asan_gen_.966 = private unnamed_addr constant [30 x i8] c"../sound/soc/codecs/cs43130.h\00", align 1
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.966, i32 448, i32 37 }
@___asan_gen_.968 = private unnamed_addr constant [24 x i8] c"cs43130_dop_constraints\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1457, i32 48 }
@___asan_gen_.971 = private unnamed_addr constant [22 x i8] c"cs43130_dop_src_rates\00", align 1
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1453, i32 27 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1527, i32 3 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 1531, i32 2 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 808, i32 3 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2645, i32 3 }
@___asan_gen_.998 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1002 = private constant [30 x i8] c"../sound/soc/codecs/cs43130.c\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 2657, i32 3 }
@___asan_gen_.1004 = private unnamed_addr constant [31 x i8] c"switch.table.cs43130_hw_params\00", align 1
@llvm.compiler.used = appending global [308 x ptr] [ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description318, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_license320, ptr @__exitcall_cs43130_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_cs43130__316_2709_cs43130_i2c_driver_init6, ptr @cs43130_change_clksrc._entry, ptr @cs43130_change_clksrc._entry.126, ptr @cs43130_change_clksrc._entry.129, ptr @cs43130_change_clksrc._entry.131, ptr @cs43130_change_clksrc._entry.134, ptr @cs43130_change_clksrc._entry_ptr, ptr @cs43130_change_clksrc._entry_ptr.128, ptr @cs43130_change_clksrc._entry_ptr.130, ptr @cs43130_change_clksrc._entry_ptr.133, ptr @cs43130_change_clksrc._entry_ptr.136, ptr @cs43130_component_set_sysclk._entry, ptr @cs43130_component_set_sysclk._entry.146, ptr @cs43130_component_set_sysclk._entry_ptr, ptr @cs43130_component_set_sysclk._entry_ptr.148, ptr @cs43130_dac_event._entry, ptr @cs43130_dac_event._entry_ptr, ptr @cs43130_dsd_event._entry, ptr @cs43130_dsd_event._entry_ptr, ptr @cs43130_dsd_hw_params._entry, ptr @cs43130_dsd_hw_params._entry_ptr, ptr @cs43130_dsd_set_fmt._entry, ptr @cs43130_dsd_set_fmt._entry_ptr, ptr @cs43130_handle_device_data._entry, ptr @cs43130_handle_device_data._entry_ptr, ptr @cs43130_hpin_event._entry, ptr @cs43130_hpin_event._entry_ptr, ptr @cs43130_hpload_proc._entry, ptr @cs43130_hpload_proc._entry_ptr, ptr @cs43130_hw_params._entry, ptr @cs43130_hw_params._entry.171, ptr @cs43130_hw_params._entry.174, ptr @cs43130_hw_params._entry.177, ptr @cs43130_hw_params._entry_ptr, ptr @cs43130_hw_params._entry_ptr.173, ptr @cs43130_hw_params._entry_ptr.176, ptr @cs43130_hw_params._entry_ptr.179, ptr @cs43130_i2c_driver_exit, ptr @cs43130_i2c_probe._entry, ptr @cs43130_i2c_probe._entry.11, ptr @cs43130_i2c_probe._entry.14, ptr @cs43130_i2c_probe._entry.17, ptr @cs43130_i2c_probe._entry.20, ptr @cs43130_i2c_probe._entry.25, ptr @cs43130_i2c_probe._entry.28, ptr @cs43130_i2c_probe._entry.7, ptr @cs43130_i2c_probe._entry_ptr, ptr @cs43130_i2c_probe._entry_ptr.13, ptr @cs43130_i2c_probe._entry_ptr.16, ptr @cs43130_i2c_probe._entry_ptr.19, ptr @cs43130_i2c_probe._entry_ptr.23, ptr @cs43130_i2c_probe._entry_ptr.27, ptr @cs43130_i2c_probe._entry_ptr.30, ptr @cs43130_i2c_probe._entry_ptr.9, ptr @cs43130_irq_thread._entry, ptr @cs43130_irq_thread._entry.48, ptr @cs43130_irq_thread._entry.51, ptr @cs43130_irq_thread._entry.58, ptr @cs43130_irq_thread._entry_ptr, ptr @cs43130_irq_thread._entry_ptr.50, ptr @cs43130_irq_thread._entry_ptr.53, ptr @cs43130_irq_thread._entry_ptr.60, ptr @cs43130_pcm_event._entry, ptr @cs43130_pcm_event._entry_ptr, ptr @cs43130_pcm_set_fmt._entry, ptr @cs43130_pcm_set_fmt._entry.165, ptr @cs43130_pcm_set_fmt._entry_ptr, ptr @cs43130_pcm_set_fmt._entry_ptr.167, ptr @cs43130_probe._entry, ptr @cs43130_probe._entry_ptr, ptr @cs43130_runtime_resume._entry, ptr @cs43130_runtime_resume._entry.187, ptr @cs43130_runtime_resume._entry_ptr, ptr @cs43130_runtime_resume._entry_ptr.189, ptr @cs43130_set_pll._entry, ptr @cs43130_set_pll._entry.151, ptr @cs43130_set_pll._entry_ptr, ptr @cs43130_set_pll._entry_ptr.153, ptr @cs43130_i2c_driver, ptr @.str, ptr @cs43130_of_match, ptr @cs43130_runtime_pm, ptr @cs43130_i2c_id, ptr @cs43130_i2c_probe._key, ptr @cs43130_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @cs43130_i2c_probe.__key, ptr @.str.24, ptr @.str.26, ptr @all_hp_widgets, ptr @all_hp_routes, ptr @digital_hp_routes, ptr @analog_hp_routes, ptr @soc_component_dev_cs43130, ptr @cs43130_dai, ptr @.str.29, ptr @cs43130_reg_defaults, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @cs43130_ac_freq, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @init_completion.__key, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @digital_hp_widgets, ptr @pcm_seq, ptr @unmute_seq, ptr @mute_seq, ptr @.str.72, ptr @.str.73, ptr @dsd_seq, ptr @.str.74, ptr @pop_free_seq, ptr @pop_free_seq2, ptr @dac_postpmu_seq, ptr @dac_postpmd_seq, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @analog_hp_widgets, ptr @hpin_prepmd_seq, ptr @hpin_postpmu_seq, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @cs43130_snd_controls, ptr @.str.85, ptr @pcm_vol_tlv, ptr @.compoundliteral, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @pcm_ch_enum, ptr @.str.89, ptr @pcm_spd_enum, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @dsd_enum, ptr @pcm_ch_en_seq, ptr @pcm_ch_dis_seq, ptr @pcm_ch_text, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @pcm_spd_texts, ptr @.str.103, ptr @.str.104, ptr @dsd_texts, ptr @dsd_values, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @hpload_groups, ptr @.str.111, ptr @.str.112, ptr @cs43130_probe.__key, ptr @.str.113, ptr @hpload_group, ptr @hpload_attrs, ptr @dev_attr_hpload_dc_l, ptr @dev_attr_hpload_dc_r, ptr @dev_attr_hpload_ac_l, ptr @dev_attr_hpload_ac_r, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @hpload_seq1, ptr @hpload_seq2, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @hp_dis_cal_seq, ptr @hp_dis_cal_seq2, ptr @hp_cln_seq, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.132, ptr @.str.135, ptr @hp_en_cal_seq, ptr @hp_dc_ch_l_seq, ptr @hp_ac_ch_l_seq, ptr @hp_dc_ch_r_seq, ptr @hp_ac_ch_r_seq, ptr @hp_en_cal_seq2, ptr @hp_dc_ch_l_seq2, ptr @hp_ac_ch_l_seq2, ptr @hp_dc_ch_r_seq2, ptr @hp_ac_ch_r_seq2, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @hv_seq, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @pll_ratio_table, ptr @.str.157, ptr @cs43130_pcm_ops, ptr @.str.158, ptr @cs43130_dop_ops, ptr @.str.159, ptr @.str.160, ptr @cs43130_dsd_ops, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @cs43130_asp_constraints, ptr @cs43130_asp_src_rates, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @cs43130_rate_table, ptr @cs43130_bitwidth_table, ptr @cs43130_16_clk_gen, ptr @cs43130_32_clk_gen, ptr @cs43130_48_clk_gen, ptr @cs43130_64_clk_gen, ptr @cs43130_dop_constraints, ptr @cs43130_dop_src_rates, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.188, ptr @switch.table.cs43130_hw_params], section "llvm.metadata"
@0 = internal global [263 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_runtime_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_i2c_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @all_hp_widgets to i32), i32 1620, i32 2016, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @all_hp_routes to i32), i32 676, i32 864, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_hp_routes to i32), i32 572, i32 704, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_hp_routes to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_cs43130 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_dai to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_i2c_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_reg_defaults to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_handle_device_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_ac_freq to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_irq_thread._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_irq_thread._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_irq_thread._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_hp_widgets to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_seq to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unmute_seq to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mute_seq to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_pcm_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsd_seq to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_dsd_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pop_free_seq to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pop_free_seq2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_postpmu_seq to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_postpmd_seq to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_dac_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_hp_widgets to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpin_prepmd_seq to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpin_postpmu_seq to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_hpin_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_snd_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_ch_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_spd_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsd_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_ch_en_seq to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_ch_dis_seq to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_ch_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_spd_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsd_texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsd_values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpload_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpload_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpload_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpload_dc_l to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpload_dc_r to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpload_ac_l to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpload_ac_r to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpload_seq1 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpload_seq2 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_dis_cal_seq to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_dis_cal_seq2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_cln_seq to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_change_clksrc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_change_clksrc._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_change_clksrc._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_change_clksrc._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_change_clksrc._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_en_cal_seq to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_dc_ch_l_seq to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_ac_ch_l_seq to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_dc_ch_r_seq to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_ac_ch_r_seq to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_en_cal_seq2 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_dc_ch_l_seq2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_ac_ch_l_seq2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_dc_ch_r_seq2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_ac_ch_r_seq2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_hpload_proc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv_seq to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_component_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_component_set_sysclk._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_set_pll._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_ratio_table to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_pcm_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_dop_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_dsd_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_pcm_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_pcm_set_fmt._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_asp_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_asp_src_rates to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_hw_params._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_hw_params._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_hw_params._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_rate_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_bitwidth_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_16_clk_gen to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_32_clk_gen to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_48_clk_gen to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_64_clk_gen to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_dop_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_dop_src_rates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_dsd_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_dsd_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs43130_runtime_resume._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cs43130_hw_params to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cs43130_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs43130_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @cs43130_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !525
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 752, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @cs43130_regmap, ptr noundef nonnull @cs43130_i2c_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end7.if.end14_crit_edge, label %if.then10

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !525
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.31, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i181 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i181, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %xtal_ibias.i = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %xtal_ibias.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %xtal_ibias.i, align 4
  br label %cs43130_handle_device_data.exit.thread

if.end.i:                                         ; preds = %if.then10
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %switch.tableidx = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 3
  br i1 %10, label %switch.lookup, label %cs43130_handle_device_data.exit

switch.lookup:                                    ; preds = %if.end.i
  %switch.idx.mult = mul i32 %switch.tableidx, -2
  %switch.offset = add i32 %switch.idx.mult, 6
  %xtal_ibias5.i = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %xtal_ibias5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %switch.offset, ptr %xtal_ibias5.i, align 4
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.34, ptr noundef null) #8
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %dc_meas.i = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 15
  %frombool.i = zext i1 %tobool.i.i to i8
  %12 = ptrtoint ptr %dc_meas.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool.i, ptr %dc_meas.i, align 4
  %call.i54.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.35, ptr noundef null) #8
  %tobool.i55.i = icmp ne ptr %call.i54.i, null
  %ac_meas.i = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 16
  %frombool9.i = zext i1 %tobool.i55.i to i8
  %13 = ptrtoint ptr %ac_meas.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool9.i, ptr %ac_meas.i, align 1
  %ac_freq.i = getelementptr %struct.cs43130_private, ptr %call.i, i32 0, i32 22
  %call.i56.i = call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.36, ptr noundef %ac_freq.i, i32 noundef 10, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %cmp11.i = icmp slt i32 %call.i56.i, 0
  br i1 %cmp11.i, label %for.body.preheader.i, label %switch.lookup.if.end16.i_crit_edge

switch.lookup.if.end16.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

for.body.preheader.i:                             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %14 = call ptr @memcpy(ptr %ac_freq.i, ptr @cs43130_ac_freq, i32 20)
  br label %if.end16.i

if.end16.i:                                       ; preds = %for.body.preheader.i, %switch.lookup.if.end16.i_crit_edge
  %dc_threshold.i = getelementptr %struct.cs43130_private, ptr %call.i, i32 0, i32 21
  %call.i57.i = call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.37, ptr noundef %dc_threshold.i, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %cmp19.i = icmp slt i32 %call.i57.i, 0
  br i1 %cmp19.i, label %for.body23.preheader.i, label %if.end16.i.cs43130_handle_device_data.exit.thread_crit_edge

if.end16.i.cs43130_handle_device_data.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs43130_handle_device_data.exit.thread

for.body23.preheader.i:                           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dc_threshold.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 3276920, ptr %dc_threshold.i, align 2
  br label %cs43130_handle_device_data.exit.thread

cs43130_handle_device_data.exit.thread:           ; preds = %for.body23.preheader.i, %if.end16.i.cs43130_handle_device_data.exit.thread_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.end14

cs43130_handle_device_data.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

if.end14:                                         ; preds = %cs43130_handle_device_data.exit.thread, %if.end7.if.end14_crit_edge
  %arrayidx16 = getelementptr %struct.cs43130_private, ptr %call.i, i32 0, i32 2, i32 0
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.38, ptr %arrayidx16, align 4
  %arrayidx16.1 = getelementptr %struct.cs43130_private, ptr %call.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.39, ptr %arrayidx16.1, align 4
  %arrayidx16.2 = getelementptr %struct.cs43130_private, ptr %call.i, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.40, ptr %arrayidx16.2, align 4
  %arrayidx16.3 = getelementptr %struct.cs43130_private, ptr %call.i, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.41, ptr %arrayidx16.3, align 4
  %arrayidx16.4 = getelementptr %struct.cs43130_private, ptr %call.i, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.42, ptr %arrayidx16.4, align 4
  %call19 = call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 5, ptr noundef %arrayidx16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end23, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call19) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %call26 = call i32 @regulator_bulk_enable(i32 noundef 5, ptr noundef %arrayidx16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call26) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %call35 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 3) #8
  %reset_gpio = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call35, ptr %reset_gpio, align 4
  %cmp.i182 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call35 to i32
  br label %err_supplies

if.end41:                                         ; preds = %if.end33
  call void @gpiod_set_value_cansleep(ptr noundef %call35, i32 noundef 1) #8
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2050, i32 noundef 2) #8
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call44 = call fastcc i32 @cirrus_read_device_id(ptr noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call44) #11
  br label %err

if.end51:                                         ; preds = %if.end41
  %25 = zext i32 %call44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call44, label %do.end54 [
    i32 274736, label %if.end51.sw.epilog_crit_edge
    i32 276880, label %if.end51.sw.epilog_crit_edge192
    i32 274737, label %if.end51.sw.epilog_crit_edge193
    i32 274840, label %if.end51.sw.epilog_crit_edge194
  ]

if.end51.sw.epilog_crit_edge194:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end51.sw.epilog_crit_edge193:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end51.sw.epilog_crit_edge192:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end51.sw.epilog_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end54:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call44, i32 noundef 274736, i32 noundef 276880, i32 noundef 274737, i32 noundef 274840) #11
  br label %err

sw.epilog:                                        ; preds = %if.end51.sw.epilog_crit_edge, %if.end51.sw.epilog_crit_edge192, %if.end51.sw.epilog_crit_edge193, %if.end51.sw.epilog_crit_edge194
  %dev_id = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call44, ptr %dev_id, align 4
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call57 = call i32 @regmap_read(ptr noundef %28, i32 noundef 65540, ptr noundef nonnull %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end62, label %do.end67

do.end62:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %err

do.end67:                                         ; preds = %sw.epilog
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg, align 4
  %and = and i32 %30, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call44, i32 noundef %and) #11
  %clk_mutex = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %clk_mutex, ptr noundef nonnull @.str.24, ptr noundef nonnull @cs43130_i2c_probe.__key) #8
  %xtal_rdy = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 9
  %31 = ptrtoint ptr %xtal_rdy to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %xtal_rdy, align 4
  %wait.i = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 9, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @init_completion.__key) #8
  %pll_rdy = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 10
  %32 = ptrtoint ptr %pll_rdy to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %pll_rdy, align 4
  %wait.i183 = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 10, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i183, ptr noundef nonnull @.str.43, ptr noundef nonnull @init_completion.__key) #8
  %hpload_evt = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 18
  %33 = ptrtoint ptr %hpload_evt to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %hpload_evt, align 4
  %wait.i184 = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 18, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i184, ptr noundef nonnull @.str.43, ptr noundef nonnull @init_completion.__key) #8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %call73 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %35, ptr noundef null, ptr noundef nonnull @cs43130_irq_thread, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74.not = icmp eq i32 %call73, 0
  br i1 %cmp74.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call73) #11
  br label %err

if.end80:                                         ; preds = %do.end67
  %mclk_int_src = getelementptr inbounds %struct.cs43130_private, ptr %call.i, i32 0, i32 13
  %36 = ptrtoint ptr %mclk_int_src to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %mclk_int_src, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 100) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i185 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %37 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dev_id, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %38, label %if.end80.sw.epilog89_crit_edge [
    i32 274736, label %if.end80.sw.bb87_crit_edge
    i32 274737, label %if.end80.sw.bb87_crit_edge195
    i32 274840, label %if.end80.sw.epilog89.sink.split_crit_edge
    i32 276880, label %if.end80.sw.epilog89.sink.split_crit_edge196
  ]

if.end80.sw.epilog89.sink.split_crit_edge196:     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog89.sink.split

if.end80.sw.epilog89.sink.split_crit_edge:        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog89.sink.split

if.end80.sw.bb87_crit_edge195:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb87

if.end80.sw.bb87_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb87

if.end80.sw.epilog89_crit_edge:                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog89

sw.bb87:                                          ; preds = %if.end80.sw.bb87_crit_edge, %if.end80.sw.bb87_crit_edge195
  %40 = call ptr @memcpy(ptr @all_hp_widgets, ptr @digital_hp_widgets, i32 1440)
  %41 = call ptr @memcpy(ptr getelementptr inbounds ([9 x %struct.snd_soc_dapm_widget], ptr @all_hp_widgets, i32 0, i32 8), ptr @analog_hp_widgets, i32 180)
  %42 = call ptr @memcpy(ptr @all_hp_routes, ptr @digital_hp_routes, i32 572)
  %43 = call ptr @memcpy(ptr getelementptr inbounds ([13 x %struct.snd_soc_dapm_route], ptr @all_hp_routes, i32 0, i32 11), ptr @analog_hp_routes, i32 104)
  br label %sw.epilog89.sink.split

sw.epilog89.sink.split:                           ; preds = %sw.bb87, %if.end80.sw.epilog89.sink.split_crit_edge, %if.end80.sw.epilog89.sink.split_crit_edge196
  %digital_hp_widgets.sink = phi ptr [ @all_hp_widgets, %sw.bb87 ], [ @digital_hp_widgets, %if.end80.sw.epilog89.sink.split_crit_edge ], [ @digital_hp_widgets, %if.end80.sw.epilog89.sink.split_crit_edge196 ]
  %.sink191 = phi i32 [ 9, %sw.bb87 ], [ 8, %if.end80.sw.epilog89.sink.split_crit_edge ], [ 8, %if.end80.sw.epilog89.sink.split_crit_edge196 ]
  %digital_hp_routes.sink = phi ptr [ @all_hp_routes, %sw.bb87 ], [ @digital_hp_routes, %if.end80.sw.epilog89.sink.split_crit_edge ], [ @digital_hp_routes, %if.end80.sw.epilog89.sink.split_crit_edge196 ]
  %.sink = phi i32 [ 13, %sw.bb87 ], [ 11, %if.end80.sw.epilog89.sink.split_crit_edge ], [ 11, %if.end80.sw.epilog89.sink.split_crit_edge196 ]
  store ptr %digital_hp_widgets.sink, ptr getelementptr inbounds (%struct.snd_soc_component_driver, ptr @soc_component_dev_cs43130, i32 0, i32 3), align 4
  store i32 %.sink191, ptr getelementptr inbounds (%struct.snd_soc_component_driver, ptr @soc_component_dev_cs43130, i32 0, i32 4), align 4
  store ptr %digital_hp_routes.sink, ptr getelementptr inbounds (%struct.snd_soc_component_driver, ptr @soc_component_dev_cs43130, i32 0, i32 5), align 4
  store i32 %.sink, ptr getelementptr inbounds (%struct.snd_soc_component_driver, ptr @soc_component_dev_cs43130, i32 0, i32 6), align 4
  br label %sw.epilog89

sw.epilog89:                                      ; preds = %sw.epilog89.sink.split, %if.end80.sw.epilog89_crit_edge
  %call91 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_cs43130, ptr noundef nonnull @cs43130_dai, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %do.end96, label %if.end98

do.end96:                                         ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call91) #11
  br label %err

if.end98:                                         ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call.i186 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 65549, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call.i187 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 65549, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

err:                                              ; preds = %do.end96, %do.end78, %do.end62, %do.end54, %if.then46
  %ret.0 = phi i32 [ %call44, %if.then46 ], [ -19, %do.end54 ], [ %call57, %do.end62 ], [ %call73, %do.end78 ], [ %call91, %do.end96 ]
  %48 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %49, i32 noundef 0) #8
  br label %err_supplies

err_supplies:                                     ; preds = %err, %if.then38
  %ret.1 = phi i32 [ %22, %if.then38 ], [ %ret.0, %err ]
  %call106 = call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %arrayidx16) #8
  br label %cleanup

cleanup:                                          ; preds = %err_supplies, %if.end98, %do.end31, %do.end, %cs43130_handle_device_data.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ %call19, %do.end ], [ %call26, %do.end31 ], [ %ret.1, %err_supplies ], [ 0, %if.end98 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %cs43130_handle_device_data.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_i2c_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xtal_ibias = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %xtal_ibias to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xtal_ibias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 983056, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap2 = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap2, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 983056, i32 noundef 96, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %dc_meas = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %dc_meas to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dc_meas, align 4, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %work = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 25
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #8
  %wq = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq, align 4
  tail call void @flush_workqueue(ptr noundef %11) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_hpload_dc_l) #8
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_hpload_dc_r) #8
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_hpload_ac_l) #8
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_hpload_ac_r) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %reset_gpio = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 0) #8
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev10, i1 noundef zeroext true) #8
  %supplies = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 2
  %call11 = tail call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %supplies) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cirrus_read_device_id(ptr noundef %regmap) unnamed_addr #5 align 64 {
entry:
  %devid = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %devid) #8
  %0 = ptrtoint ptr %devid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %devid, align 1, !annotation !525
  %1 = getelementptr inbounds [3 x i8], ptr %devid, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !525
  %3 = getelementptr inbounds [3 x i8], ptr %devid, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !525
  %call = call i32 @regmap_bulk_read(ptr noundef %regmap, i32 noundef 65536, ptr noundef nonnull %devid, i32 noundef 3) #8
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
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %stickies = alloca [5 x i32], align 4
  %masks = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stickies) #8
  %2 = getelementptr inbounds [5 x i32], ptr %stickies, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i32], ptr %stickies, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i32], ptr %stickies, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i32], ptr %stickies, i32 0, i32 4
  %6 = call ptr @memset(ptr %stickies, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %masks) #8
  %7 = getelementptr inbounds [5 x i32], ptr %masks, i32 0, i32 1
  %8 = getelementptr inbounds [5 x i32], ptr %masks, i32 0, i32 2
  %9 = getelementptr inbounds [5 x i32], ptr %masks, i32 0, i32 3
  %10 = getelementptr inbounds [5 x i32], ptr %masks, i32 0, i32 4
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 1
  %11 = call ptr @memset(ptr %masks, i32 255, i32 20)
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %13, i32 noundef 983040, ptr noundef nonnull %stickies) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_read(ptr noundef %15, i32 noundef 983056, ptr noundef nonnull %masks) #8
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.1 = call i32 @regmap_read(ptr noundef %17, i32 noundef 983041, ptr noundef %2) #8
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call5.1 = call i32 @regmap_read(ptr noundef %19, i32 noundef 983057, ptr noundef %7) #8
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.2 = call i32 @regmap_read(ptr noundef %21, i32 noundef 983042, ptr noundef %3) #8
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call5.2 = call i32 @regmap_read(ptr noundef %23, i32 noundef 983058, ptr noundef %8) #8
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.3 = call i32 @regmap_read(ptr noundef %25, i32 noundef 983043, ptr noundef %4) #8
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call5.3 = call i32 @regmap_read(ptr noundef %27, i32 noundef 983059, ptr noundef %9) #8
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.4 = call i32 @regmap_read(ptr noundef %29, i32 noundef 983044, ptr noundef %5) #8
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call5.4 = call i32 @regmap_read(ptr noundef %31, i32 noundef 983060, ptr noundef %10) #8
  %32 = ptrtoint ptr %stickies to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stickies, align 4
  %34 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %masks, align 4
  %neg = xor i32 %35, -1
  %and = and i32 %33, %neg
  store i32 %and, ptr %stickies, align 4
  %and16 = and i32 %and, 1
  %shr.1 = lshr i32 %and, 1
  %and16.1 = and i32 %shr.1, 1
  %add17.1 = add nuw nsw i32 %and16.1, %and16
  %shr.2 = lshr i32 %and, 2
  %and16.2 = and i32 %shr.2, 1
  %add17.2 = add nuw nsw i32 %and16.2, %add17.1
  %shr.3 = lshr i32 %and, 3
  %and16.3 = and i32 %shr.3, 1
  %add17.3 = add nuw nsw i32 %and16.3, %add17.2
  %shr.4 = lshr i32 %and, 4
  %and16.4 = and i32 %shr.4, 1
  %add17.4 = add nuw nsw i32 %and16.4, %add17.3
  %shr.5 = lshr i32 %and, 5
  %and16.5 = and i32 %shr.5, 1
  %add17.5 = add nuw nsw i32 %and16.5, %add17.4
  %shr.6 = lshr i32 %and, 6
  %and16.6 = and i32 %shr.6, 1
  %add17.6 = add nuw nsw i32 %and16.6, %add17.5
  %shr.7 = lshr i32 %and, 7
  %and16.7 = and i32 %shr.7, 1
  %add17.7 = add nuw nsw i32 %and16.7, %add17.6
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %7, align 4
  %neg.1 = xor i32 %39, -1
  %and.1 = and i32 %37, %neg.1
  store i32 %and.1, ptr %2, align 4
  %and16.1339 = and i32 %and.1, 1
  %add17.1340 = add nuw nsw i32 %and16.1339, %add17.7
  %shr.1.1 = lshr i32 %and.1, 1
  %and16.1.1 = and i32 %shr.1.1, 1
  %add17.1.1 = add nuw nsw i32 %and16.1.1, %add17.1340
  %shr.2.1 = lshr i32 %and.1, 2
  %and16.2.1 = and i32 %shr.2.1, 1
  %add17.2.1 = add nuw nsw i32 %and16.2.1, %add17.1.1
  %shr.3.1 = lshr i32 %and.1, 3
  %and16.3.1 = and i32 %shr.3.1, 1
  %add17.3.1 = add nuw nsw i32 %and16.3.1, %add17.2.1
  %shr.4.1 = lshr i32 %and.1, 4
  %and16.4.1 = and i32 %shr.4.1, 1
  %add17.4.1 = add nuw nsw i32 %and16.4.1, %add17.3.1
  %shr.5.1 = lshr i32 %and.1, 5
  %and16.5.1 = and i32 %shr.5.1, 1
  %add17.5.1 = add nuw nsw i32 %and16.5.1, %add17.4.1
  %shr.6.1 = lshr i32 %and.1, 6
  %and16.6.1 = and i32 %shr.6.1, 1
  %add17.6.1 = add nuw nsw i32 %and16.6.1, %add17.5.1
  %shr.7.1 = lshr i32 %and.1, 7
  %and16.7.1 = and i32 %shr.7.1, 1
  %add17.7.1 = add nuw nsw i32 %and16.7.1, %add17.6.1
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %8, align 4
  %neg.2 = xor i32 %43, -1
  %and.2 = and i32 %41, %neg.2
  store i32 %and.2, ptr %3, align 4
  %and16.2341 = and i32 %and.2, 1
  %add17.2342 = add nuw nsw i32 %and16.2341, %add17.7.1
  %shr.1.2 = lshr i32 %and.2, 1
  %and16.1.2 = and i32 %shr.1.2, 1
  %add17.1.2 = add nuw nsw i32 %and16.1.2, %add17.2342
  %shr.2.2 = lshr i32 %and.2, 2
  %and16.2.2 = and i32 %shr.2.2, 1
  %add17.2.2 = add nuw nsw i32 %and16.2.2, %add17.1.2
  %shr.3.2 = lshr i32 %and.2, 3
  %and16.3.2 = and i32 %shr.3.2, 1
  %add17.3.2 = add nuw nsw i32 %and16.3.2, %add17.2.2
  %shr.4.2 = lshr i32 %and.2, 4
  %and16.4.2 = and i32 %shr.4.2, 1
  %add17.4.2 = add nuw nsw i32 %and16.4.2, %add17.3.2
  %shr.5.2 = lshr i32 %and.2, 5
  %and16.5.2 = and i32 %shr.5.2, 1
  %add17.5.2 = add nuw nsw i32 %and16.5.2, %add17.4.2
  %shr.6.2 = lshr i32 %and.2, 6
  %and16.6.2 = and i32 %shr.6.2, 1
  %add17.6.2 = add nuw nsw i32 %and16.6.2, %add17.5.2
  %shr.7.2 = lshr i32 %and.2, 7
  %and16.7.2 = and i32 %shr.7.2, 1
  %add17.7.2 = add nuw nsw i32 %and16.7.2, %add17.6.2
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %4, align 4
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %9, align 4
  %neg.3 = xor i32 %47, -1
  %and.3 = and i32 %45, %neg.3
  store i32 %and.3, ptr %4, align 4
  %and16.3343 = and i32 %and.3, 1
  %add17.3344 = add nuw nsw i32 %and16.3343, %add17.7.2
  %shr.1.3 = lshr i32 %and.3, 1
  %and16.1.3 = and i32 %shr.1.3, 1
  %add17.1.3 = add nuw nsw i32 %and16.1.3, %add17.3344
  %shr.2.3 = lshr i32 %and.3, 2
  %and16.2.3 = and i32 %shr.2.3, 1
  %add17.2.3 = add nuw nsw i32 %and16.2.3, %add17.1.3
  %shr.3.3 = lshr i32 %and.3, 3
  %and16.3.3 = and i32 %shr.3.3, 1
  %add17.3.3 = add nuw nsw i32 %and16.3.3, %add17.2.3
  %shr.4.3 = lshr i32 %and.3, 4
  %and16.4.3 = and i32 %shr.4.3, 1
  %add17.4.3 = add nuw nsw i32 %and16.4.3, %add17.3.3
  %shr.5.3 = lshr i32 %and.3, 5
  %and16.5.3 = and i32 %shr.5.3, 1
  %add17.5.3 = add nuw nsw i32 %and16.5.3, %add17.4.3
  %shr.6.3 = lshr i32 %and.3, 6
  %and16.6.3 = and i32 %shr.6.3, 1
  %add17.6.3 = add nuw nsw i32 %and16.6.3, %add17.5.3
  %shr.7.3 = lshr i32 %and.3, 7
  %and16.7.3 = and i32 %shr.7.3, 1
  %add17.7.3 = add nuw nsw i32 %and16.7.3, %add17.6.3
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %5, align 4
  %50 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %10, align 4
  %neg.4 = xor i32 %51, -1
  %and.4 = and i32 %49, %neg.4
  store i32 %and.4, ptr %5, align 4
  %and16.4345 = and i32 %and.4, 1
  %add17.4346 = add nuw nsw i32 %and16.4345, %add17.7.3
  %shr.1.4 = lshr i32 %and.4, 1
  %and16.1.4 = and i32 %shr.1.4, 1
  %add17.1.4 = add nuw nsw i32 %and16.1.4, %add17.4346
  %shr.2.4 = lshr i32 %and.4, 2
  %and16.2.4 = and i32 %shr.2.4, 1
  %add17.2.4 = add nuw nsw i32 %and16.2.4, %add17.1.4
  %shr.3.4 = lshr i32 %and.4, 3
  %and16.3.4 = and i32 %shr.3.4, 1
  %add17.3.4 = add nuw nsw i32 %and16.3.4, %add17.2.4
  %shr.4.4 = lshr i32 %and.4, 4
  %and16.4.4 = and i32 %shr.4.4, 1
  %add17.4.4 = add nuw nsw i32 %and16.4.4, %add17.3.4
  %shr.5.4 = lshr i32 %and.4, 5
  %and16.5.4 = and i32 %shr.5.4, 1
  %add17.5.4 = add nuw nsw i32 %and16.5.4, %add17.4.4
  %shr.6.4 = lshr i32 %and.4, 6
  %and16.6.4 = and i32 %shr.6.4, 1
  %add17.6.4 = add nuw nsw i32 %and16.6.4, %add17.5.4
  %shr.7.4 = lshr i32 %and.4, 7
  %and16.7.4 = and i32 %shr.7.4, 1
  %add17.7.4 = add nuw nsw i32 %and16.7.4, %add17.6.4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_irq_thread, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !527

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_irq_thread.__UNIQUE_ID_ddebug309, ptr noundef %53, ptr noundef nonnull @.str.46, i32 noundef %add17.7.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17.7.4)
  %tobool27.not = icmp eq i32 %add17.7.4, 0
  br i1 %tobool27.not, label %do.end.cleanup_crit_edge, label %if.end29

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %do.end
  %54 = ptrtoint ptr %stickies to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %stickies, align 4
  %and31 = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %xtal_rdy = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 9
  call void @complete(ptr noundef %xtal_rdy) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %and36 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %pll_rdy = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 10
  call void @complete(ptr noundef %pll_rdy) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %4, align 4
  %and41 = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end50, label %if.then43

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %hpload_stat = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 19
  %58 = ptrtoint ptr %hpload_stat to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %hpload_stat, align 4
  %dev48 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %59 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev48, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.47, i32 noundef %57) #11
  %hpload_evt = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 18
  call void @complete(ptr noundef %hpload_evt) #8
  br label %cleanup

if.end50:                                         ; preds = %if.end39
  %and52 = and i32 %57, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end63, label %if.then54

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %hpload_stat56 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 19
  %61 = ptrtoint ptr %hpload_stat56 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %57, ptr %hpload_stat56, align 4
  %dev60 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev60, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.49, i32 noundef %57) #11
  %hpload_evt62 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 18
  call void @complete(ptr noundef %hpload_evt62) #8
  br label %cleanup

if.end63:                                         ; preds = %if.end50
  %and65 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end76, label %if.then67

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %hpload_stat69 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 19
  %64 = ptrtoint ptr %hpload_stat69 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %57, ptr %hpload_stat69, align 4
  %dev73 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev73, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.52, i32 noundef %57) #11
  %hpload_evt75 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 18
  call void @complete(ptr noundef %hpload_evt75) #8
  br label %cleanup

if.end76:                                         ; preds = %if.end63
  %and78 = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end102, label %if.then80

if.then80:                                        ; preds = %if.end76
  %hpload_stat82 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 19
  %67 = ptrtoint ptr %hpload_stat82 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %57, ptr %hpload_stat82, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_irq_thread, %if.then95)) #8
          to label %do.end100 [label %if.then95], !srcloc !527

if.then95:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %dev96 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev96, align 4
  %70 = ptrtoint ptr %hpload_stat82 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hpload_stat82, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_irq_thread.__UNIQUE_ID_ddebug310, ptr noundef %69, ptr noundef nonnull @.str.54, i32 noundef %71) #8
  br label %do.end100

do.end100:                                        ; preds = %if.then95, %if.then80
  %hpload_evt101 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 18
  call void @complete(ptr noundef %hpload_evt101) #8
  br label %cleanup

if.end102:                                        ; preds = %if.end76
  %and104 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end128, label %if.then106

if.then106:                                       ; preds = %if.end102
  %hpload_stat108 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 19
  %72 = ptrtoint ptr %hpload_stat108 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %57, ptr %hpload_stat108, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_irq_thread, %if.then121)) #8
          to label %do.end126 [label %if.then121], !srcloc !527

if.then121:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  %dev122 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %73 = ptrtoint ptr %dev122 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev122, align 4
  %75 = ptrtoint ptr %hpload_stat108 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hpload_stat108, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_irq_thread.__UNIQUE_ID_ddebug311, ptr noundef %74, ptr noundef nonnull @.str.55, i32 noundef %76) #8
  br label %do.end126

do.end126:                                        ; preds = %if.then121, %if.then106
  %hpload_evt127 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 18
  call void @complete(ptr noundef %hpload_evt127) #8
  br label %cleanup

if.end128:                                        ; preds = %if.end102
  %and130 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end154, label %if.then132

if.then132:                                       ; preds = %if.end128
  %hpload_stat134 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 19
  %77 = ptrtoint ptr %hpload_stat134 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %57, ptr %hpload_stat134, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_irq_thread, %if.then147)) #8
          to label %do.end152 [label %if.then147], !srcloc !527

if.then147:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  %dev148 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %78 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev148, align 4
  %80 = ptrtoint ptr %hpload_stat134 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hpload_stat134, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_irq_thread.__UNIQUE_ID_ddebug312, ptr noundef %79, ptr noundef nonnull @.str.56, i32 noundef %81) #8
  br label %do.end152

do.end152:                                        ; preds = %if.then147, %if.then132
  %hpload_evt153 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 18
  call void @complete(ptr noundef %hpload_evt153) #8
  br label %cleanup

if.end154:                                        ; preds = %if.end128
  %and156 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end180, label %if.then158

if.then158:                                       ; preds = %if.end154
  %hpload_stat160 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 19
  %82 = ptrtoint ptr %hpload_stat160 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %57, ptr %hpload_stat160, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_irq_thread, %if.then173)) #8
          to label %do.end178 [label %if.then173], !srcloc !527

if.then173:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  %dev174 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %dev174 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev174, align 4
  %85 = ptrtoint ptr %hpload_stat160 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hpload_stat160, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_irq_thread.__UNIQUE_ID_ddebug313, ptr noundef %84, ptr noundef nonnull @.str.57, i32 noundef %86) #8
  br label %do.end178

do.end178:                                        ; preds = %if.then173, %if.then158
  %hpload_evt179 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 18
  call void @complete(ptr noundef %hpload_evt179) #8
  br label %cleanup

if.end180:                                        ; preds = %if.end154
  %and182 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end189, label %do.end187

do.end187:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  %dev188 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %87 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev188, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.59) #11
  br label %cleanup

if.end189:                                        ; preds = %if.end180
  %and191 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.end211, label %do.body194

do.body194:                                       ; preds = %if.end189
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_irq_thread, %if.then206)) #8
          to label %do.end210 [label %if.then206], !srcloc !527

if.then206:                                       ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #10
  %dev207 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %89 = ptrtoint ptr %dev207 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev207, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_irq_thread.__UNIQUE_ID_ddebug314, ptr noundef %90, ptr noundef nonnull @.str.61) #8
  br label %do.end210

do.end210:                                        ; preds = %if.then206, %do.body194
  %hpload_done = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 17
  %91 = ptrtoint ptr %hpload_done to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %hpload_done, align 2
  %jack = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 26
  call void @snd_soc_jack_report(ptr noundef %jack, i32 noundef 0, i32 noundef 13) #8
  br label %cleanup

if.end211:                                        ; preds = %if.end189
  %and213 = and i32 %55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %if.end211.cleanup_crit_edge, label %if.then215

if.end211.cleanup_crit_edge:                      ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then215:                                       ; preds = %if.end211
  %dc_meas = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 15
  %92 = ptrtoint ptr %dc_meas to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %dc_meas, align 4, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool216.not = icmp eq i8 %93, 0
  br i1 %tobool216.not, label %if.then215.if.end242_crit_edge, label %land.lhs.true

if.then215.if.end242_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end242

land.lhs.true:                                    ; preds = %if.then215
  %hpload_done217 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 17
  %94 = ptrtoint ptr %hpload_done217 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %hpload_done217, align 2, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool218.not = icmp eq i8 %95, 0
  br i1 %tobool218.not, label %land.lhs.true219, label %land.lhs.true.if.end242_crit_edge

land.lhs.true.if.end242_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end242

land.lhs.true219:                                 ; preds = %land.lhs.true
  %work = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 25
  %call220 = call i32 @work_busy(ptr noundef %work) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %do.body223, label %land.lhs.true219.if.end242_crit_edge

land.lhs.true219.if.end242_crit_edge:             ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end242

do.body223:                                       ; preds = %land.lhs.true219
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_irq_thread, %if.then235)) #8
          to label %do.end239 [label %if.then235], !srcloc !527

if.then235:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #10
  %dev236 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %dev236 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev236, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_irq_thread.__UNIQUE_ID_ddebug315, ptr noundef %97, ptr noundef nonnull @.str.62) #8
  br label %do.end239

do.end239:                                        ; preds = %if.then235, %do.body223
  %wq = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 24
  %98 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wq, align 4
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %99, ptr noundef %work) #8
  br label %if.end242

if.end242:                                        ; preds = %do.end239, %land.lhs.true219.if.end242_crit_edge, %land.lhs.true.if.end242_crit_edge, %if.then215.if.end242_crit_edge
  %jack243 = getelementptr inbounds %struct.cs43130_private, ptr %data, i32 0, i32 26
  call void @snd_soc_jack_report(ptr noundef %jack243, i32 noundef 8, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end242, %if.end211.cleanup_crit_edge, %do.end210, %do.end187, %do.end178, %do.end152, %do.end126, %do.end100, %if.then67, %if.then54, %if.then43, %if.then38, %if.then33, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then33 ], [ 1, %if.then38 ], [ 1, %if.then43 ], [ 1, %if.then54 ], [ 1, %if.then67 ], [ 1, %do.end100 ], [ 1, %do.end126 ], [ 1, %do.end152 ], [ 1, %do.end178 ], [ 1, %do.end187 ], [ 1, %do.end210 ], [ 1, %if.end242 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end211.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %masks) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stickies) #8
  ret i32 %retval.0
}

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
define internal zeroext i1 @cs43130_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %reg, label %sw.default [
    i32 131072, label %entry.return_crit_edge
    i32 131154, label %entry.return_crit_edge14
    i32 196616, label %entry.return_crit_edge15
    i32 196618, label %entry.return_crit_edge16
    i32 196635, label %entry.return_crit_edge17
    i32 262146, label %entry.return_crit_edge18
    i32 262147, label %entry.return_crit_edge19
    i32 262148, label %entry.return_crit_edge20
    i32 327680, label %entry.return_crit_edge21
    i32 327681, label %entry.return_crit_edge22
    i32 327690, label %entry.return_crit_edge23
    i32 327691, label %entry.return_crit_edge24
    i32 393216, label %entry.return_crit_edge25
    i32 393217, label %entry.return_crit_edge26
    i32 393226, label %entry.return_crit_edge27
    i32 393227, label %entry.return_crit_edge28
    i32 524288, label %entry.return_crit_edge29
    i32 720896, label %entry.return_crit_edge30
    i32 851968, label %entry.return_crit_edge31
    i32 851969, label %entry.return_crit_edge32
    i32 917504, label %entry.return_crit_edge33
    i32 917507, label %entry.return_crit_edge34
    i32 917508, label %entry.return_crit_edge35
    i32 917517, label %entry.return_crit_edge36
    i32 917518, label %entry.return_crit_edge37
    i32 917520, label %entry.return_crit_edge38
    i32 917521, label %entry.return_crit_edge39
    i32 917530, label %entry.return_crit_edge40
    i32 983056, label %entry.return_crit_edge41
    i32 983057, label %entry.return_crit_edge42
    i32 983058, label %entry.return_crit_edge43
    i32 983059, label %entry.return_crit_edge44
    i32 983060, label %entry.return_crit_edge45
    i32 983040, label %entry.return_crit_edge46
    i32 983041, label %entry.return_crit_edge47
    i32 983042, label %entry.return_crit_edge48
    i32 983043, label %entry.return_crit_edge49
    i32 983044, label %entry.return_crit_edge50
    i32 589824, label %entry.return_crit_edge51
    i32 589825, label %entry.return_crit_edge52
    i32 589826, label %entry.return_crit_edge53
    i32 589827, label %entry.return_crit_edge54
    i32 589828, label %entry.return_crit_edge55
    i32 458752, label %entry.return_crit_edge56
    i32 458753, label %entry.return_crit_edge57
    i32 458754, label %entry.return_crit_edge58
    i32 458755, label %entry.return_crit_edge59
    i32 458756, label %entry.return_crit_edge60
    i32 458757, label %entry.return_crit_edge61
    i32 458758, label %entry.return_crit_edge62
    i32 262176, label %entry.return_crit_edge63
    i32 262177, label %entry.return_crit_edge64
    i32 262178, label %entry.return_crit_edge65
    i32 262179, label %entry.return_crit_edge66
    i32 262180, label %entry.return_crit_edge67
    i32 262181, label %entry.return_crit_edge68
    i32 262182, label %entry.return_crit_edge69
    i32 262183, label %entry.return_crit_edge70
    i32 262184, label %entry.return_crit_edge71
    i32 262185, label %entry.return_crit_edge72
    i32 262160, label %entry.return_crit_edge73
    i32 262161, label %entry.return_crit_edge74
    i32 262162, label %entry.return_crit_edge75
    i32 262163, label %entry.return_crit_edge76
    i32 262164, label %entry.return_crit_edge77
    i32 262165, label %entry.return_crit_edge78
    i32 262166, label %entry.return_crit_edge79
    i32 262167, label %entry.return_crit_edge80
    i32 262168, label %entry.return_crit_edge81
    i32 262169, label %entry.return_crit_edge82
    i32 196609, label %entry.return_crit_edge83
    i32 196610, label %entry.return_crit_edge84
    i32 196611, label %entry.return_crit_edge85
    i32 196612, label %entry.return_crit_edge86
    i32 196613, label %entry.return_crit_edge87
    i32 65547, label %entry.return_crit_edge88
    i32 65548, label %entry.return_crit_edge89
    i32 65549, label %entry.return_crit_edge90
    i32 65536, label %entry.return_crit_edge91
    i32 65537, label %entry.return_crit_edge92
    i32 65538, label %entry.return_crit_edge93
    i32 65539, label %entry.return_crit_edge94
    i32 65540, label %entry.return_crit_edge95
    i32 65541, label %entry.return_crit_edge96
    i32 65542, label %entry.return_crit_edge97
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs43130_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %reg, label %sw.default [
    i32 917520, label %entry.return_crit_edge
    i32 917521, label %entry.return_crit_edge3
    i32 917517, label %entry.return_crit_edge4
    i32 917518, label %entry.return_crit_edge5
    i32 983040, label %entry.return_crit_edge6
    i32 983041, label %entry.return_crit_edge7
    i32 983042, label %entry.return_crit_edge8
    i32 983043, label %entry.return_crit_edge9
    i32 983044, label %entry.return_crit_edge10
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs43130_precious_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 5
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @work_busy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_pcm_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %event, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 4, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %dev_id = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %8, label %sw.bb.cleanup_crit_edge [
    i32 274736, label %sw.bb.sw.bb2_crit_edge
    i32 276880, label %sw.bb.sw.bb2_crit_edge37
  ]

sw.bb.sw.bb2_crit_edge37:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb.sw.bb2_crit_edge, %sw.bb.sw.bb2_crit_edge37
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_multi_reg_write(ptr noundef %11, ptr noundef nonnull @pcm_seq, i32 noundef 9) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %regmap5 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 589827, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %dev_id7 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %dev_id7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_id7, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %15, label %sw.bb4.cleanup_crit_edge [
    i32 274736, label %sw.bb4.sw.bb8_crit_edge
    i32 276880, label %sw.bb4.sw.bb8_crit_edge38
  ]

sw.bb4.sw.bb8_crit_edge38:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

sw.bb4.sw.bb8_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb4.sw.bb8_crit_edge, %sw.bb4.sw.bb8_crit_edge38
  %17 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap5, align 4
  %call10 = tail call i32 @regmap_multi_reg_write(ptr noundef %18, ptr noundef nonnull @unmute_seq, i32 noundef 5) #8
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %dev_id13 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %dev_id13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dev_id13, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %20, label %sw.bb12.cleanup_crit_edge [
    i32 274736, label %sw.bb12.sw.bb14_crit_edge
    i32 276880, label %sw.bb12.sw.bb14_crit_edge39
    i32 274737, label %sw.bb12.sw.bb19_crit_edge
    i32 274840, label %sw.bb12.sw.bb19_crit_edge40
  ]

sw.bb12.sw.bb19_crit_edge40:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

sw.bb12.sw.bb19_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

sw.bb12.sw.bb14_crit_edge39:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

sw.bb12.sw.bb14_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb12.sw.bb14_crit_edge, %sw.bb12.sw.bb14_crit_edge39
  %regmap15 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap15, align 4
  %call16 = tail call i32 @regmap_multi_reg_write(ptr noundef %23, ptr noundef nonnull @mute_seq, i32 noundef 5) #8
  %24 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap15, align 4
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 589827, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @msleep(i32 noundef 130) #8
  br label %cleanup

sw.bb19:                                          ; preds = %sw.bb12.sw.bb19_crit_edge, %sw.bb12.sw.bb19_crit_edge40
  %regmap20 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %26 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap20, align 4
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 589827, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.72, i32 noundef %event) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb19, %sw.bb14, %sw.bb12.cleanup_crit_edge, %sw.bb8, %sw.bb4.cleanup_crit_edge, %sw.bb2, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb14 ], [ 0, %sw.bb19 ], [ 0, %sw.bb12.cleanup_crit_edge ], [ 0, %sw.bb8 ], [ 0, %sw.bb4.cleanup_crit_edge ], [ 0, %sw.bb2 ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_dsd_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %event, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 4, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %dev_id = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %8, label %sw.bb.cleanup_crit_edge [
    i32 274736, label %sw.bb.sw.bb2_crit_edge
    i32 276880, label %sw.bb.sw.bb2_crit_edge37
  ]

sw.bb.sw.bb2_crit_edge37:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb.sw.bb2_crit_edge, %sw.bb.sw.bb2_crit_edge37
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_multi_reg_write(ptr noundef %11, ptr noundef nonnull @dsd_seq, i32 noundef 9) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %regmap5 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 458754, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %dev_id7 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %dev_id7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_id7, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %15, label %sw.bb4.cleanup_crit_edge [
    i32 274736, label %sw.bb4.sw.bb8_crit_edge
    i32 276880, label %sw.bb4.sw.bb8_crit_edge38
  ]

sw.bb4.sw.bb8_crit_edge38:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

sw.bb4.sw.bb8_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb4.sw.bb8_crit_edge, %sw.bb4.sw.bb8_crit_edge38
  %17 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap5, align 4
  %call10 = tail call i32 @regmap_multi_reg_write(ptr noundef %18, ptr noundef nonnull @unmute_seq, i32 noundef 5) #8
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %dev_id13 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %dev_id13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dev_id13, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %20, label %sw.bb12.cleanup_crit_edge [
    i32 274736, label %sw.bb12.sw.bb14_crit_edge
    i32 276880, label %sw.bb12.sw.bb14_crit_edge39
    i32 274737, label %sw.bb12.sw.bb19_crit_edge
    i32 274840, label %sw.bb12.sw.bb19_crit_edge40
  ]

sw.bb12.sw.bb19_crit_edge40:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

sw.bb12.sw.bb19_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

sw.bb12.sw.bb14_crit_edge39:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

sw.bb12.sw.bb14_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb12.sw.bb14_crit_edge, %sw.bb12.sw.bb14_crit_edge39
  %regmap15 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap15, align 4
  %call16 = tail call i32 @regmap_multi_reg_write(ptr noundef %23, ptr noundef nonnull @mute_seq, i32 noundef 5) #8
  %24 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap15, align 4
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 458754, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @msleep(i32 noundef 130) #8
  br label %cleanup

sw.bb19:                                          ; preds = %sw.bb12.sw.bb19_crit_edge, %sw.bb12.sw.bb19_crit_edge40
  %regmap20 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %26 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap20, align 4
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 458754, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.72, i32 noundef %event) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb19, %sw.bb14, %sw.bb12.cleanup_crit_edge, %sw.bb8, %sw.bb4.cleanup_crit_edge, %sw.bb2, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb14 ], [ 0, %sw.bb19 ], [ 0, %sw.bb12.cleanup_crit_edge ], [ 0, %sw.bb8 ], [ 0, %sw.bb4.cleanup_crit_edge ], [ 0, %sw.bb2 ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %event, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 8, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  %dev_id = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %8, label %sw.bb.cleanup_crit_edge [
    i32 274736, label %sw.bb.sw.bb2_crit_edge
    i32 276880, label %sw.bb.sw.bb2_crit_edge43
    i32 274737, label %sw.bb.sw.bb4_crit_edge
    i32 274840, label %sw.bb.sw.bb4_crit_edge44
  ]

sw.bb.sw.bb4_crit_edge44:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

sw.bb.sw.bb4_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

sw.bb.sw.bb2_crit_edge43:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb.sw.bb2_crit_edge, %sw.bb.sw.bb2_crit_edge43
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_multi_reg_write(ptr noundef %11, ptr noundef nonnull @pop_free_seq, i32 noundef 3) #8
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb.sw.bb4_crit_edge, %sw.bb.sw.bb4_crit_edge44
  %regmap5 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap5, align 4
  %call6 = tail call i32 @regmap_multi_reg_write(ptr noundef %13, ptr noundef nonnull @pop_free_seq2, i32 noundef 3) #8
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 10050, i32 noundef 2) #8
  %regmap8 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap8, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 65552, i32 noundef 153) #8
  %dev_id10 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %dev_id10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_id10, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %17, label %sw.bb7.sw.epilog19_crit_edge [
    i32 274736, label %sw.bb7.sw.bb11_crit_edge
    i32 276880, label %sw.bb7.sw.bb11_crit_edge45
    i32 274737, label %sw.bb7.sw.bb16_crit_edge
    i32 274840, label %sw.bb7.sw.bb16_crit_edge46
  ]

sw.bb7.sw.bb16_crit_edge46:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

sw.bb7.sw.bb16_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

sw.bb7.sw.bb11_crit_edge45:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

sw.bb7.sw.bb11_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

sw.bb7.sw.epilog19_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog19

sw.bb11:                                          ; preds = %sw.bb7.sw.bb11_crit_edge, %sw.bb7.sw.bb11_crit_edge45
  %19 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap8, align 4
  %call13 = tail call i32 @regmap_multi_reg_write(ptr noundef %20, ptr noundef nonnull @dac_postpmu_seq, i32 noundef 3) #8
  tail call void @msleep(i32 noundef 1000) #8
  br label %sw.epilog19.sink.split

sw.bb16:                                          ; preds = %sw.bb7.sw.bb16_crit_edge, %sw.bb7.sw.bb16_crit_edge46
  tail call void @usleep_range_state(i32 noundef 12000, i32 noundef 12010, i32 noundef 2) #8
  br label %sw.epilog19.sink.split

sw.epilog19.sink.split:                           ; preds = %sw.bb16, %sw.bb11
  %.sink42 = phi i32 [ 524338, %sw.bb16 ], [ 65580, %sw.bb11 ]
  %21 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap8, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef %.sink42, i32 noundef 0) #8
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.epilog19.sink.split, %sw.bb7.sw.epilog19_crit_edge
  %23 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap8, align 4
  %call21 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 65552, i32 noundef 0) #8
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %dev_id23 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 4
  %25 = ptrtoint ptr %dev_id23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dev_id23, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %26, label %sw.bb22.cleanup_crit_edge [
    i32 274736, label %sw.bb22.sw.bb24_crit_edge
    i32 276880, label %sw.bb22.sw.bb24_crit_edge47
  ]

sw.bb22.sw.bb24_crit_edge47:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

sw.bb22.sw.bb24_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb24:                                          ; preds = %sw.bb22.sw.bb24_crit_edge, %sw.bb22.sw.bb24_crit_edge47
  %regmap25 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %28 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap25, align 4
  %call26 = tail call i32 @regmap_multi_reg_write(ptr noundef %29, ptr noundef nonnull @dac_postpmd_seq, i32 noundef 3) #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.75, i32 noundef %event) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb24, %sw.bb22.cleanup_crit_edge, %sw.epilog19, %sw.bb4, %sw.bb2, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb24 ], [ 0, %sw.bb22.cleanup_crit_edge ], [ 0, %sw.bb2 ], [ 0, %sw.bb4 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.epilog19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_hpin_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %event, label %do.end [
    i32 8, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_multi_reg_write(ptr noundef %8, ptr noundef nonnull @hpin_prepmd_seq, i32 noundef 5) #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap4 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap4, align 4
  %call5 = tail call i32 @regmap_multi_reg_write(ptr noundef %10, ptr noundef nonnull @hpin_postpmu_seq, i32 noundef 5) #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.79, i32 noundef %event) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb3, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_probe(ptr noundef %component) #2 align 64 {
entry:
  %reg = alloca i32, align 4
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
  %card1 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 4
  %4 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg, align 4, !annotation !525
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %component, ptr %3, align 4
  %xtal_ibias = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %xtal_ibias to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xtal_ibias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 131154, i32 noundef 7, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 983056, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %jack = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 26
  %call7 = tail call i32 @snd_soc_card_jack_new(ptr noundef %5, ptr noundef nonnull @.str.108, i32 noundef 13, ptr noundef %jack, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.109) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %hpload_done = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 17
  %16 = ptrtoint ptr %hpload_done to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %hpload_done, align 2
  %dc_meas = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 15
  %17 = ptrtoint ptr %dc_meas to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dc_meas, align 4, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end10.if.end32_crit_edge, label %if.then11

if.end10.if.end32_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then11:                                        ; preds = %if.end10
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %call13 = tail call i32 @sysfs_create_groups(ptr noundef %20, ptr noundef nonnull @hpload_groups) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  %call17 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.111, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.112) #8
  %wq = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 24
  %21 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call17, ptr %wq, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %if.then20, label %do.body24

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void @sysfs_remove_groups(ptr noundef %23, ptr noundef nonnull @hpload_groups) #8
  br label %cleanup

do.body24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %work = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 25
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %24 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 25, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.113, ptr noundef nonnull @cs43130_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry28 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 25, i32 1
  %25 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 25, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry28, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 25, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @cs43130_imp_meas, ptr %func, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.body24, %if.end10.if.end32_crit_edge
  %regmap33 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %regmap33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap33, align 4
  %call34 = call i32 @regmap_read(ptr noundef %29, i32 noundef 983040, ptr noundef nonnull %reg) #8
  %30 = ptrtoint ptr %regmap33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap33, align 4
  %call36 = call i32 @regmap_read(ptr noundef %31, i32 noundef 851969, ptr noundef nonnull %reg) #8
  %32 = ptrtoint ptr %regmap33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap33, align 4
  %call.i74 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 983056, i32 noundef 96, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %34 = ptrtoint ptr %regmap33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap33, align 4
  %call.i75 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 851968, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %36 = ptrtoint ptr %regmap33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap33, align 4
  %call.i76 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 851968, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then20, %if.then11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %if.end32 ], [ -12, %if.then20 ], [ %call13, %if.then11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_component_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_component_set_sysclk.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_component_set_sysclk, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !527

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_component_set_sysclk.__UNIQUE_ID_ddebug302, ptr noundef %5, ptr noundef nonnull @.str.145, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %freq, label %do.end6 [
    i32 22579200, label %do.end.sw.bb_crit_edge
    i32 24576000, label %do.end.sw.bb_crit_edge23
  ]

do.end.sw.bb_crit_edge23:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge23
  %mclk = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %source)
  %cmp = icmp eq i32 %source, 0
  br i1 %cmp, label %if.then8, label %do.end11

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.124, i32 noundef %freq) #11
  br label %cleanup

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %pll_bypass = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %pll_bypass to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %pll_bypass, align 4
  br label %cleanup

do.end11:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.147) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.then8, %do.end6
  %retval.0 = phi i32 [ -22, %do.end6 ], [ 0, %if.then8 ], [ -22, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_set_pll(ptr nocapture noundef readonly %component, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
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
  %4 = zext i32 %freq_in to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %freq_in, label %do.end [
    i32 9600000, label %entry.sw.bb_crit_edge
    i32 11289600, label %entry.sw.bb_crit_edge33
    i32 12000000, label %entry.sw.bb_crit_edge34
    i32 12288000, label %entry.sw.bb_crit_edge35
    i32 13000000, label %entry.sw.bb_crit_edge36
    i32 19200000, label %entry.sw.bb_crit_edge37
    i32 22579200, label %entry.sw.bb_crit_edge38
    i32 24000000, label %entry.sw.bb_crit_edge39
    i32 24576000, label %entry.sw.bb_crit_edge40
    i32 26000000, label %entry.sw.bb_crit_edge41
  ]

entry.sw.bb_crit_edge41:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge40:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge39:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge38:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge33, %entry.sw.bb_crit_edge34, %entry.sw.bb_crit_edge35, %entry.sw.bb_crit_edge36, %entry.sw.bb_crit_edge37, %entry.sw.bb_crit_edge38, %entry.sw.bb_crit_edge39, %entry.sw.bb_crit_edge40, %entry.sw.bb_crit_edge41
  %mclk = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %freq_in, ptr %mclk, align 4
  %6 = zext i32 %freq_out to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %freq_out, label %do.end7 [
    i32 22579200, label %sw.bb.sw.epilog9_crit_edge
    i32 24576000, label %sw.bb.sw.epilog9_crit_edge42
  ]

sw.bb.sw.epilog9_crit_edge42:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog9

sw.bb.sw.epilog9_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.149, i32 noundef %freq_in) #11
  br label %cleanup

do.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.152, i32 noundef %freq_out) #11
  br label %cleanup

sw.epilog9:                                       ; preds = %sw.bb.sw.epilog9_crit_edge, %sw.bb.sw.epilog9_crit_edge42
  %mclk_int3 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %mclk_int3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %freq_out, ptr %mclk_int3, align 4
  %call10 = tail call fastcc i32 @cs43130_pll_config(ptr noundef %component)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_set_pll.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_set_pll, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !527

if.then:                                          ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %pll_bypass = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %pll_bypass to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pll_bypass, align 4, !range !526
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_set_pll.__UNIQUE_ID_ddebug296, ptr noundef %11, ptr noundef nonnull @.str.154, i32 noundef %14) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog9, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ %call10, %if.then ], [ %call10, %sw.epilog9 ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_pcm_ch_get(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_get_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_pcm_ch_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %items = getelementptr inbounds %struct.soc_enum, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %items, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp ult i32 %10, %12
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %values.i = getelementptr inbounds %struct.soc_enum, ptr %2, i32 0, i32 6
  %13 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %values.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.snd_soc_enum_item_to_val.exit_crit_edge, label %if.end.i

if.end.snd_soc_enum_item_to_val.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_soc_enum_item_to_val.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i32, ptr %14, i32 %10
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  br label %snd_soc_enum_item_to_val.exit

snd_soc_enum_item_to_val.exit:                    ; preds = %if.end.i, %if.end.snd_soc_enum_item_to_val.exit_crit_edge
  %retval.0.i = phi i32 [ %16, %if.end.i ], [ %10, %if.end.snd_soc_enum_item_to_val.exit_crit_edge ]
  %dev_id = getelementptr inbounds %struct.cs43130_private, ptr %8, i32 0, i32 4
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_id, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %18, label %snd_soc_enum_item_to_val.exit.sw.epilog_crit_edge [
    i32 274737, label %snd_soc_enum_item_to_val.exit.sw.bb_crit_edge
    i32 274840, label %snd_soc_enum_item_to_val.exit.sw.bb_crit_edge24
  ]

snd_soc_enum_item_to_val.exit.sw.bb_crit_edge24:  ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

snd_soc_enum_item_to_val.exit.sw.bb_crit_edge:    ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

snd_soc_enum_item_to_val.exit.sw.epilog_crit_edge: ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %snd_soc_enum_item_to_val.exit.sw.bb_crit_edge, %snd_soc_enum_item_to_val.exit.sw.bb_crit_edge24
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %2, i32 0, i32 1
  %20 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %shift_l, align 4
  %conv = zext i8 %21 to i32
  %shl = shl i32 %retval.0.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shl)
  %cmp4 = icmp ugt i32 %shl, 1
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %8, i32 0, i32 1
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %pcm_ch_en_seq.pcm_ch_dis_seq = select i1 %cmp4, ptr @pcm_ch_en_seq, ptr @pcm_ch_dis_seq
  %call7 = tail call i32 @regmap_multi_reg_write(ptr noundef %23, ptr noundef nonnull %pcm_ch_en_seq.pcm_ch_dis_seq, i32 noundef 18) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %snd_soc_enum_item_to_val.exit.sw.epilog_crit_edge
  %call11 = tail call i32 @snd_soc_put_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs43130_imp_meas(ptr noundef %wk) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !525
  %add.ptr = getelementptr i8, ptr %wk, i32 -488
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %mclk = getelementptr i8, ptr %wk, i32 -196
  %3 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hpload_done = getelementptr i8, ptr %wk, i32 -134
  %5 = ptrtoint ptr %hpload_done to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %hpload_done, align 2
  %clk_mutex = getelementptr i8, ptr %wk, i32 -408
  tail call void @mutex_lock_nested(ptr noundef %clk_mutex, i32 noundef 0) #8
  %clk_req = getelementptr i8, ptr %wk, i32 -316
  %6 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk, align 4
  %call = tail call i32 @cs43130_set_pll(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %9, i32 noundef 22579200)
  %pll_bypass = getelementptr i8, ptr %wk, i32 -312
  %10 = ptrtoint ptr %pll_bypass to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pll_bypass, align 4, !range !526
  %12 = xor i8 %11, 1
  %13 = zext i8 %12 to i32
  tail call fastcc void @cs43130_change_clksrc(ptr noundef %2, i32 noundef %13)
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.end.if.end10_crit_edge
  %14 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_req, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %clk_req, align 4
  tail call void @mutex_unlock(ptr noundef %clk_mutex) #8
  %regmap = getelementptr i8, ptr %wk, i32 -484
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_read(ptr noundef %17, i32 noundef 983043, ptr noundef nonnull %reg) #8
  %dev_id = getelementptr i8, ptr %wk, i32 -416
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_id, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %19, label %do.end [
    i32 274736, label %if.end10.sw.epilog_crit_edge
    i32 274737, label %sw.bb14
  ]

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2101, i32 noundef 9, ptr noundef nonnull @.str.120, i32 noundef %19) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14, %if.end10.sw.epilog_crit_edge
  %hpload_seq.0 = phi ptr [ @hpload_seq2, %sw.bb14 ], [ @hpload_seq1, %if.end10.sw.epilog_crit_edge ]
  %ac_meas = getelementptr i8, ptr %wk, i32 -135
  br label %while.body

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %sw.epilog
  %i.0189 = phi i32 [ 0, %sw.epilog ], [ %i.1, %if.end53.while.body_crit_edge ]
  %ac_idx.0188 = phi i32 [ 0, %sw.epilog ], [ %ac_idx.1, %if.end53.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.reg_sequences, ptr %hpload_seq.0, i32 %i.0189
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %size = getelementptr %struct.reg_sequences, ptr %hpload_seq.0, i32 %i.0189, i32 1
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %msk = getelementptr %struct.reg_sequences, ptr %hpload_seq.0, i32 %i.0189, i32 2
  %25 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msk, align 4
  %call36 = call fastcc i32 @cs43130_hpload_proc(ptr noundef %add.ptr, ptr noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %ac_idx.0188)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %while.body.exit_crit_edge, label %if.end39

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end39:                                         ; preds = %while.body
  call fastcc void @cs43130_update_hpload(i32 noundef %26, i32 noundef %ac_idx.0188, ptr noundef %add.ptr)
  %27 = ptrtoint ptr %ac_meas to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ac_meas, align 1, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool43.not = icmp eq i8 %28, 0
  br i1 %tobool43.not, label %if.end39.if.else51_crit_edge, label %land.lhs.true

if.end39.if.else51_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else51

land.lhs.true:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %26)
  %cmp46 = icmp eq i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %ac_idx.0188)
  %cmp48 = icmp slt i32 %ac_idx.0188, 9
  %or.cond = and i1 %cmp46, %cmp48
  br i1 %or.cond, label %if.then49, label %land.lhs.true.if.else51_crit_edge

land.lhs.true.if.else51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else51

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %inc50 = add nsw i32 %ac_idx.0188, 1
  br label %if.end53

if.else51:                                        ; preds = %land.lhs.true.if.else51_crit_edge, %if.end39.if.else51_crit_edge
  %inc52 = add nuw nsw i32 %i.0189, 1
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.then49
  %ac_idx.1 = phi i32 [ %inc50, %if.then49 ], [ 0, %if.else51 ]
  %i.1 = phi i32 [ %i.0189, %if.then49 ], [ %inc52, %if.else51 ]
  %cmp = icmp ult i32 %i.1, 7
  br i1 %cmp, label %if.end53.while.body_crit_edge, label %while.end

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end53
  %29 = ptrtoint ptr %hpload_done to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %hpload_done, align 2
  %hpload_dc = getelementptr i8, ptr %wk, i32 -72
  %30 = ptrtoint ptr %hpload_dc to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hpload_dc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4999, i16 %31)
  %cmp56 = icmp ugt i16 %31, 4999
  %jack = getelementptr i8, ptr %wk, i32 44
  %.196 = select i1 %cmp56, i32 12, i32 9
  call void @snd_soc_jack_report(ptr noundef %jack, i32 noundef %.196, i32 noundef 13) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_imp_meas.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_imp_meas, %if.then72)) #8
          to label %do.end75 [label %if.then72], !srcloc !527

if.then72:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_imp_meas.__UNIQUE_ID_ddebug307, ptr noundef %33, ptr noundef nonnull @.str.122) #8
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %while.end
  %dev91 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %dc_threshold = getelementptr i8, ptr %wk, i32 -68
  br label %do.body78

do.body78:                                        ; preds = %for.inc.do.body78_crit_edge, %do.end75
  %cmp76 = phi i1 [ true, %do.end75 ], [ false, %for.inc.do.body78_crit_edge ]
  %i.2191 = phi i32 [ 0, %do.end75 ], [ 1, %for.inc.do.body78_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_imp_meas.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_imp_meas, %if.then90)) #8
          to label %for.inc [label %if.then90], !srcloc !527

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev91, align 4
  %arrayidx92 = getelementptr [2 x i16], ptr %dc_threshold, i32 0, i32 %i.2191
  %36 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx92, align 2
  %conv93 = zext i16 %37 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_imp_meas.__UNIQUE_ID_ddebug308, ptr noundef %35, ptr noundef nonnull @.str.123, i32 noundef %i.2191, i32 noundef %conv93) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then90, %do.body78
  br i1 %cmp76, label %for.inc.do.body78_crit_edge, label %for.end

for.inc.do.body78_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body78

for.end:                                          ; preds = %for.inc
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %40 = ptrtoint ptr %hpload_dc to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hpload_dc, align 4
  %42 = ptrtoint ptr %dc_threshold to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dc_threshold, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %41)
  %cmp2.not.i = icmp ult i16 %43, %41
  br i1 %cmp2.not.i, label %for.inc.i, label %for.end.cs43130_set_hv.exit_crit_edge

for.end.cs43130_set_hv.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs43130_set_hv.exit

for.inc.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.1.i = getelementptr i8, ptr %wk, i32 -66
  %44 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %41)
  %cmp2.not.1.i = icmp ult i16 %45, %41
  %spec.select.i = select i1 %cmp2.not.1.i, i32 2, i32 1
  br label %cs43130_set_hv.exit

cs43130_set_hv.exit:                              ; preds = %for.inc.i, %for.end.cs43130_set_hv.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.end.cs43130_set_hv.exit_crit_edge ], [ %spec.select.i, %for.inc.i ]
  %arrayidx4.i = getelementptr [3 x [2 x %struct.reg_sequence]], ptr @hv_seq, i32 0, i32 %i.0.lcssa.i
  %call.i = call i32 @regmap_multi_reg_write(ptr noundef %39, ptr noundef %arrayidx4.i, i32 noundef 2) #8
  br label %exit

exit:                                             ; preds = %cs43130_set_hv.exit, %while.body.exit_crit_edge
  %ac_idx.0187 = phi i32 [ %ac_idx.1, %cs43130_set_hv.exit ], [ %ac_idx.0188, %while.body.exit_crit_edge ]
  %46 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dev_id, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %47, label %exit.sw.epilog108_crit_edge [
    i32 274736, label %sw.bb104
    i32 274737, label %sw.bb106
  ]

exit.sw.epilog108_crit_edge:                      ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog108

sw.bb104:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %call105 = call fastcc i32 @cs43130_hpload_proc(ptr noundef %add.ptr, ptr noundef nonnull @hp_dis_cal_seq, i32 noundef 5, i32 noundef 2, i32 noundef %ac_idx.0187)
  br label %sw.epilog108

sw.bb106:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %call107 = call fastcc i32 @cs43130_hpload_proc(ptr noundef %add.ptr, ptr noundef nonnull @hp_dis_cal_seq2, i32 noundef 2, i32 noundef 2, i32 noundef %ac_idx.0187)
  br label %sw.epilog108

sw.epilog108:                                     ; preds = %sw.bb106, %sw.bb104, %exit.sw.epilog108_crit_edge
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call110 = call i32 @regmap_multi_reg_write(ptr noundef %50, ptr noundef nonnull @hp_cln_seq, i32 noundef 3) #8
  call void @mutex_lock_nested(ptr noundef %clk_mutex, i32 noundef 0) #8
  %51 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %clk_req, align 4
  %dec = add i32 %52, -1
  store i32 %dec, ptr %clk_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool114.not = icmp eq i32 %dec, 0
  br i1 %tobool114.not, label %if.then115, label %sw.epilog108.if.end117_crit_edge

sw.epilog108.if.end117_crit_edge:                 ; preds = %sw.epilog108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then115:                                       ; preds = %sw.epilog108
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @cs43130_change_clksrc(ptr noundef %2, i32 noundef 2)
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %sw.epilog108.if.end117_crit_edge
  call void @mutex_unlock(ptr noundef %clk_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpload_dc_l_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %hpload_done.i = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %hpload_done.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hpload_done.i, align 2, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.115) #8
  br label %cs43130_show_dc.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.cs43130_private, ptr %1, i32 0, i32 20, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.116, i32 noundef %conv.i) #8
  br label %cs43130_show_dc.exit

cs43130_show_dc.exit:                             ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.else.i ], [ %call1.i, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpload_dc_r_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %hpload_done.i = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %hpload_done.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hpload_done.i, align 2, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.115) #8
  br label %cs43130_show_dc.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.cs43130_private, ptr %1, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.116, i32 noundef %conv.i) #8
  br label %cs43130_show_dc.exit

cs43130_show_dc.exit:                             ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.else.i ], [ %call1.i, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpload_ac_l_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cs43130_show_ac(ptr noundef %dev, ptr noundef %buf, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs43130_show_ac(ptr nocapture noundef readonly %dev, ptr noundef %buf, i8 noundef zeroext %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hpload_done = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %hpload_done to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hpload_done, align 2, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %ac_meas = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %ac_meas to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ac_meas, align 1, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %for.cond.preheader

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.cond.preheader:                               ; preds = %land.lhs.true
  %idxprom = zext i8 %ch to i32
  %arrayidx4 = getelementptr %struct.cs43130_private, ptr %1, i32 0, i32 23, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx4, align 2
  %conv = zext i16 %7 to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.116, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.cond.preheader.cleanup_crit_edge, label %if.end

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.cond.preheader
  %add.ptr3.1 = getelementptr i8, ptr %buf, i32 %call5
  %sub.1 = sub i32 4096, %call5
  %arrayidx4.1 = getelementptr %struct.cs43130_private, ptr %1, i32 0, i32 23, i32 1, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx4.1, align 2
  %conv.1 = zext i16 %9 to i32
  %call5.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.1, i32 noundef %sub.1, ptr noundef nonnull @.str.116, i32 noundef %conv.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %add.1 = add i32 %call5.1, %call5
  %add.ptr3.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %arrayidx4.2 = getelementptr %struct.cs43130_private, ptr %1, i32 0, i32 23, i32 2, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx4.2, align 2
  %conv.2 = zext i16 %11 to i32
  %call5.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.2, i32 noundef %sub.2, ptr noundef nonnull @.str.116, i32 noundef %conv.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool6.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool6.not.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %add.2 = add i32 %call5.2, %add.1
  %add.ptr3.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %arrayidx4.3 = getelementptr %struct.cs43130_private, ptr %1, i32 0, i32 23, i32 3, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx4.3, align 2
  %conv.3 = zext i16 %13 to i32
  %call5.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.3, i32 noundef %sub.3, ptr noundef nonnull @.str.116, i32 noundef %conv.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %tobool6.not.3 = icmp eq i32 %call5.3, 0
  br i1 %tobool6.not.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  %add.3 = add i32 %call5.3, %add.2
  %add.ptr3.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %arrayidx4.4 = getelementptr %struct.cs43130_private, ptr %1, i32 0, i32 23, i32 4, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx4.4, align 2
  %conv.4 = zext i16 %15 to i32
  %call5.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.4, i32 noundef %sub.4, ptr noundef nonnull @.str.116, i32 noundef %conv.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %tobool6.not.4 = icmp eq i32 %call5.4, 0
  br i1 %tobool6.not.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  %add.4 = add i32 %call5.4, %add.3
  %add.ptr3.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 4096, %add.4
  %arrayidx4.5 = getelementptr %struct.cs43130_private, ptr %1, i32 0, i32 23, i32 5, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx4.5, align 2
  %conv.5 = zext i16 %17 to i32
  %call5.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.5, i32 noundef %sub.5, ptr noundef nonnull @.str.116, i32 noundef %conv.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %tobool6.not.5 = icmp eq i32 %call5.5, 0
  br i1 %tobool6.not.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  %add.5 = add i32 %call5.5, %add.4
  %add.ptr3.6 = getelementptr i8, ptr %buf, i32 %add.5
  %sub.6 = sub i32 4096, %add.5
  %arrayidx4.6 = getelementptr %struct.cs43130_private, ptr %1, i32 0, i32 23, i32 6, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx4.6, align 2
  %conv.6 = zext i16 %19 to i32
  %call5.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.6, i32 noundef %sub.6, ptr noundef nonnull @.str.116, i32 noundef %conv.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6)
  %tobool6.not.6 = icmp eq i32 %call5.6, 0
  br i1 %tobool6.not.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  %add.6 = add i32 %call5.6, %add.5
  %add.ptr3.7 = getelementptr i8, ptr %buf, i32 %add.6
  %sub.7 = sub i32 4096, %add.6
  %arrayidx4.7 = getelementptr %struct.cs43130_private, ptr %1, i32 0, i32 23, i32 7, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx4.7, align 2
  %conv.7 = zext i16 %21 to i32
  %call5.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.7, i32 noundef %sub.7, ptr noundef nonnull @.str.116, i32 noundef %conv.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.7)
  %tobool6.not.7 = icmp eq i32 %call5.7, 0
  br i1 %tobool6.not.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  %add.7 = add i32 %call5.7, %add.6
  %add.ptr3.8 = getelementptr i8, ptr %buf, i32 %add.7
  %sub.8 = sub i32 4096, %add.7
  %arrayidx4.8 = getelementptr %struct.cs43130_private, ptr %1, i32 0, i32 23, i32 8, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx4.8, align 2
  %conv.8 = zext i16 %23 to i32
  %call5.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.8, i32 noundef %sub.8, ptr noundef nonnull @.str.116, i32 noundef %conv.8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.8)
  %tobool6.not.8 = icmp eq i32 %call5.8, 0
  br i1 %tobool6.not.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #10
  %add.8 = add i32 %call5.8, %add.7
  %add.ptr3.9 = getelementptr i8, ptr %buf, i32 %add.8
  %sub.9 = sub i32 4096, %add.8
  %arrayidx4.9 = getelementptr %struct.cs43130_private, ptr %1, i32 0, i32 23, i32 9, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx4.9 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx4.9, align 2
  %conv.9 = zext i16 %25 to i32
  %call5.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.9, i32 noundef %sub.9, ptr noundef nonnull @.str.116, i32 noundef %conv.9) #8
  %add.9 = add i32 %call5.9, %add.8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.115) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.8, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.else ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %add.1, %if.end.1.cleanup_crit_edge ], [ %add.2, %if.end.2.cleanup_crit_edge ], [ %add.3, %if.end.3.cleanup_crit_edge ], [ %add.4, %if.end.4.cleanup_crit_edge ], [ %add.5, %if.end.5.cleanup_crit_edge ], [ %add.6, %if.end.6.cleanup_crit_edge ], [ %add.7, %if.end.7.cleanup_crit_edge ], [ %add.9, %if.end.8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpload_ac_r_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cs43130_show_ac(ptr noundef %dev, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs43130_change_clksrc(ptr nocapture noundef readonly %component, i32 noundef %src) unnamed_addr #2 align 64 {
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
  %mclk_int_src = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %mclk_int_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk_int_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %src)
  %cmp = icmp eq i32 %5, %src
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mclk_int = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %mclk_int to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk_int, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %7, label %do.end [
    i32 22579200, label %if.end.sw.epilog_crit_edge
    i32 24576000, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.124, i32 noundef %7) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %mclk_int_decoded.0 = phi i32 [ 0, %sw.bb1 ], [ 4, %if.end.sw.epilog_crit_edge ]
  %9 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %src, label %do.end95 [
    i32 0, label %sw.bb3
    i32 1, label %sw.bb32
    i32 2, label %sw.bb81
  ]

sw.bb3:                                           ; preds = %sw.epilog
  %pll_bypass = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %pll_bypass to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %pll_bypass, align 4
  %11 = ptrtoint ptr %mclk_int_src to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mclk_int_src, align 4
  %xtal_ibias = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %xtal_ibias to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xtal_ibias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp5 = icmp eq i32 %13, -1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 131072, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end24

if.else:                                          ; preds = %sw.bb3
  %xtal_rdy = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %xtal_rdy to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %xtal_rdy, align 4
  %regmap8 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap8, align 4
  %call.i1 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 983056, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %19 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap8, align 4
  %call.i2 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 131072, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call14 = tail call i32 @wait_for_completion_timeout(ptr noundef %xtal_rdy, i32 noundef 10) #8
  %21 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap8, align 4
  %call.i3 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 983056, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp17 = icmp eq i32 %call14, 0
  br i1 %cmp17, label %do.end21, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end21:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.127) #11
  br label %cleanup

if.end24:                                         ; preds = %if.else.if.end24_crit_edge, %if.then6
  %regmap25 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap25, align 4
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 65542, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %27 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap25, align 4
  %call.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 65542, i32 noundef 4, i32 noundef %mclk_int_decoded.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #8
  %29 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap25, align 4
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 131072, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb32:                                          ; preds = %sw.epilog
  %pll_bypass33 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %pll_bypass33 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %pll_bypass33, align 4
  %32 = ptrtoint ptr %mclk_int_src to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %mclk_int_src, align 4
  %xtal_ibias35 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 5
  %33 = ptrtoint ptr %xtal_ibias35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xtal_ibias35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp36 = icmp eq i32 %34, -1
  br i1 %cmp36, label %if.then37, label %if.else40

if.then37:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  %regmap38 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %regmap38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap38, align 4
  %call.i7 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 131072, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end58

if.else40:                                        ; preds = %sw.bb32
  %xtal_rdy41 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %xtal_rdy41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %xtal_rdy41, align 4
  %regmap42 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %regmap42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap42, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 983056, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %40 = ptrtoint ptr %regmap42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap42, align 4
  %call.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 131072, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call48 = tail call i32 @wait_for_completion_timeout(ptr noundef %xtal_rdy41, i32 noundef 10) #8
  %42 = ptrtoint ptr %regmap42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap42, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 983056, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp51 = icmp eq i32 %call48, 0
  br i1 %cmp51, label %do.end55, label %if.else40.if.end58_crit_edge

if.else40.if.end58_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.end55:                                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.127) #11
  br label %cleanup

if.end58:                                         ; preds = %if.else40.if.end58_crit_edge, %if.then37
  %pll_rdy = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 10
  %46 = ptrtoint ptr %pll_rdy to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %pll_rdy, align 4
  %regmap59 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 1
  %47 = ptrtoint ptr %regmap59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap59, align 4
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 983056, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %49 = ptrtoint ptr %regmap59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap59, align 4
  %call.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 131072, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call65 = tail call i32 @wait_for_completion_timeout(ptr noundef %pll_rdy, i32 noundef 10) #8
  %51 = ptrtoint ptr %regmap59 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap59, align 4
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 983056, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp68 = icmp eq i32 %call65, 0
  br i1 %cmp68, label %do.end72, label %if.end74

do.end72:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.132) #11
  br label %cleanup

if.end74:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %regmap59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap59, align 4
  %call.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 65542, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %57 = ptrtoint ptr %regmap59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap59, align 4
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 65542, i32 noundef 4, i32 noundef %mclk_int_decoded.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #8
  br label %cleanup

sw.bb81:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %mclk_int_src to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %mclk_int_src, align 4
  %regmap83 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 1
  %60 = ptrtoint ptr %regmap83 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap83, align 4
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 65542, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %62 = ptrtoint ptr %regmap83 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap83, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 65542, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #8
  %64 = ptrtoint ptr %regmap83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap83, align 4
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 131072, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %66 = ptrtoint ptr %regmap83 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap83, align 4
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 131072, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

do.end95:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.135) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %sw.bb81, %if.end74, %do.end72, %do.end55, %if.end24, %do.end21, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs43130_hpload_proc(ptr noundef %cs43130, ptr noundef %seq, i32 noundef %seq_size, i32 noundef %rslt_msk, i32 noundef %ac_idx) unnamed_addr #2 align 64 {
entry:
  %msk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msk) #8
  %0 = ptrtoint ptr %msk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msk, align 4, !annotation !525
  %1 = ptrtoint ptr %cs43130 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cs43130, align 4
  %hpload_evt = getelementptr inbounds %struct.cs43130_private, ptr %cs43130, i32 0, i32 18
  %3 = ptrtoint ptr %hpload_evt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %hpload_evt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %rslt_msk)
  %cmp = icmp eq i32 %rslt_msk, 8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.cs43130_private, ptr %cs43130, i32 0, i32 22, i32 %ac_idx
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %6 = udiv i16 %5, 6
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %cs43130, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 917504, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %conv = zext i16 %6 to i32
  %call.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 917507, i32 noundef 255, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = lshr i32 %conv, 8
  %call.i74 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 917508, i32 noundef 255, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap9 = getelementptr inbounds %struct.cs43130_private, ptr %cs43130, i32 0, i32 1
  %14 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap9, align 4
  %call10 = tail call i32 @regmap_multi_reg_write(ptr noundef %15, ptr noundef %seq, i32 noundef %seq_size) #8
  %call13 = tail call i32 @wait_for_completion_timeout(ptr noundef %hpload_evt, i32 noundef 100) #8
  %16 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap9, align 4
  %call15 = call i32 @regmap_read(ptr noundef %17, i32 noundef 983059, ptr noundef nonnull %msk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %do.end, label %do.body18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.137) #11
  br label %cleanup

do.body18:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_hpload_proc.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_hpload_proc, %if.then23)) #8
          to label %do.end27 [label %if.then23], !srcloc !527

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %20 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev24, align 4
  %hpload_stat = getelementptr inbounds %struct.cs43130_private, ptr %cs43130, i32 0, i32 19
  %22 = ptrtoint ptr %hpload_stat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hpload_stat, align 4
  %24 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msk, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_hpload_proc.__UNIQUE_ID_ddebug305, ptr noundef %21, ptr noundef nonnull @.str.139, i32 noundef %23, i32 noundef %25) #8
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body18
  %hpload_stat28 = getelementptr inbounds %struct.cs43130_private, ptr %cs43130, i32 0, i32 19
  %26 = ptrtoint ptr %hpload_stat28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hpload_stat28, align 4
  %and = and i32 %27, 208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp ne i32 %and, 0
  %and31 = and i32 %27, %rslt_msk
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %or.cond = or i1 %tobool29.not, %tobool32.not
  br i1 %or.cond, label %do.body34, label %do.end27.cleanup_crit_edge

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body34:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_hpload_proc.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_hpload_proc, %if.then46)) #8
          to label %cleanup [label %if.then46], !srcloc !527

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %dev47 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %28 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev47, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_hpload_proc.__UNIQUE_ID_ddebug306, ptr noundef %29, ptr noundef nonnull @.str.140) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body34, %do.end27.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then46 ], [ 0, %do.end27.cleanup_crit_edge ], [ -1, %do.body34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msk) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs43130_update_hpload(i32 noundef %msk, i32 noundef %ac_idx, ptr nocapture noundef %cs43130) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !525
  %1 = ptrtoint ptr %cs43130 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cs43130, align 4
  %3 = zext i32 %msk to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %msk, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.epilog_crit_edge
    i32 8, label %entry.sw.epilog_crit_edge6
  ]

entry.sw.epilog_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge6
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %cs43130, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 917504, ptr noundef nonnull %reg) #8
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %msk)
  %cmp = icmp eq i32 %msk, 4
  %addr.0 = select i1 %cmp, i32 917517, i32 917520
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_read(ptr noundef %9, i32 noundef %addr.0, ptr noundef nonnull %reg) #8
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %shr = lshr i32 %11, 3
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %add = add nuw nsw i32 %addr.0, 1
  %call7 = call i32 @regmap_read(ptr noundef %13, i32 noundef %add, ptr noundef nonnull %reg) #8
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %shl = shl i32 %15, 5
  %or = or i32 %shl, %shr
  %conv9 = trunc i32 %or to i16
  br i1 %cmp, label %if.then12, label %if.else29

if.then12:                                        ; preds = %sw.epilog
  br i1 %tobool.not, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %hpload_dc = getelementptr inbounds %struct.cs43130_private, ptr %cs43130, i32 0, i32 20
  %16 = ptrtoint ptr %hpload_dc to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv9, ptr %hpload_dc, align 4
  br label %do.body

if.else15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx17 = getelementptr %struct.cs43130_private, ptr %cs43130, i32 0, i32 20, i32 1
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv9, ptr %arrayidx17, align 2
  br label %do.body

do.body:                                          ; preds = %if.else15, %if.then14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_update_hpload.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_update_hpload, %if.then23)) #8
          to label %cleanup [label %if.then23], !srcloc !527

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %lnot25 = xor i1 %tobool.not, true
  %lnot.ext26 = zext i1 %lnot25 to i32
  %conv27 = and i32 %or, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_update_hpload.__UNIQUE_ID_ddebug303, ptr noundef %19, ptr noundef nonnull @.str.142, i32 noundef %lnot.ext26, i32 noundef %conv27) #8
  br label %cleanup

if.else29:                                        ; preds = %sw.epilog
  br i1 %tobool.not, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx32 = getelementptr %struct.cs43130_private, ptr %cs43130, i32 0, i32 23, i32 %ac_idx
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv9, ptr %arrayidx32, align 4
  br label %do.body39

if.else34:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx37 = getelementptr %struct.cs43130_private, ptr %cs43130, i32 0, i32 23, i32 %ac_idx, i32 1
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv9, ptr %arrayidx37, align 2
  br label %do.body39

do.body39:                                        ; preds = %if.else34, %if.then31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_update_hpload.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_update_hpload, %if.then51)) #8
          to label %cleanup [label %if.then51], !srcloc !527

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  %dev52 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %22 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev52, align 4
  %arrayidx53 = getelementptr %struct.cs43130_private, ptr %cs43130, i32 0, i32 22, i32 %ac_idx
  %24 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx53, align 2
  %conv54 = zext i16 %25 to i32
  %lnot56 = xor i1 %tobool.not, true
  %lnot.ext57 = zext i1 %lnot56 to i32
  %conv58 = and i32 %or, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_update_hpload.__UNIQUE_ID_ddebug304, ptr noundef %23, ptr noundef nonnull @.str.143, i32 noundef %conv54, i32 noundef %lnot.ext57, i32 noundef %conv58) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body39, %if.then23, %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs43130_pll_config(ptr nocapture noundef readonly %component) unnamed_addr #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_pll_config.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_pll_config, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !527

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %mclk = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk, align 4
  %mclk_int = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %mclk_int to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_int, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_pll_config.__UNIQUE_ID_ddebug295, ptr noundef %5, ptr noundef nonnull @.str.156, i32 noundef %7, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mclk4 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %mclk4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mclk4, align 4
  %mclk_int5 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %mclk_int5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mclk_int5, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end
  %i.09.i = phi i32 [ 0, %do.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [20 x %struct.cs43130_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.09.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp1.i = icmp eq i32 %15, %11
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pll_out.i = getelementptr [20 x %struct.cs43130_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.09.i, i32 6
  %16 = ptrtoint ptr %pll_out.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pll_out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %13)
  %cmp3.i = icmp eq i32 %17, %13
  br i1 %cmp3.i, label %cs43130_get_pll_table.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cs43130_get_pll_table.exit:                       ; preds = %land.lhs.true.i
  %tobool7.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool7.not, label %cs43130_get_pll_table.exit.cleanup_crit_edge, label %if.end9

cs43130_get_pll_table.exit.cleanup_crit_edge:     ; preds = %cs43130_get_pll_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %cs43130_get_pll_table.exit
  %18 = and i32 %i.09.i, 536870911
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %18, label %if.end13 [
    i32 17, label %if.end9.if.then11_crit_edge
    i32 12, label %if.end9.if.then11_crit_edge90
  ]

if.end9.if.then11_crit_edge90:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %if.end9.if.then11_crit_edge90
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 196609, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %pll_bypass = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %pll_bypass to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %pll_bypass, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %pll_cal_ratio = getelementptr [20 x %struct.cs43130_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.09.i, i32 7
  %pll_bypass14 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %pll_bypass14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %pll_bypass14, align 4
  %regmap15 = getelementptr inbounds %struct.cs43130_private, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap15, align 4
  %pll_div_frac = getelementptr [20 x %struct.cs43130_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.09.i, i32 3
  %26 = ptrtoint ptr %pll_div_frac to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pll_div_frac, align 4
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 196610, i32 noundef 255, i32 noundef %27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %28 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap15, align 4
  %shr19 = lshr i32 %27, 8
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 196611, i32 noundef 255, i32 noundef %shr19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %30 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap15, align 4
  %shr23 = lshr i32 %27, 16
  %call.i72 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 196612, i32 noundef 255, i32 noundef %shr23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %32 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap15, align 4
  %pll_div_int = getelementptr [20 x %struct.cs43130_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.09.i, i32 2
  %34 = ptrtoint ptr %pll_div_int to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pll_div_int, align 1
  %conv26 = zext i8 %35 to i32
  %call27 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 196613, i32 noundef %conv26) #8
  %36 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap15, align 4
  %pll_divout = getelementptr [20 x %struct.cs43130_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.09.i, i32 5
  %38 = ptrtoint ptr %pll_divout to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pll_divout, align 1
  %conv29 = zext i8 %39 to i32
  %call30 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 196616, i32 noundef %conv29) #8
  %40 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap15, align 4
  %42 = ptrtoint ptr %pll_cal_ratio to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pll_cal_ratio, align 4
  %conv33 = zext i8 %43 to i32
  %call34 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 196618, i32 noundef %conv33) #8
  %44 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap15, align 4
  %pll_mode = getelementptr [20 x %struct.cs43130_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.09.i, i32 4
  %46 = ptrtoint ptr %pll_mode to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pll_mode, align 4
  %conv36 = zext i8 %47 to i32
  %shl = shl nuw nsw i32 %conv36, 1
  %call.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 196635, i32 noundef 2, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %48 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap15, align 4
  %sclk_prediv = getelementptr [20 x %struct.cs43130_pll_params], ptr @pll_ratio_table, i32 0, i32 %i.09.i, i32 1
  %50 = ptrtoint ptr %sclk_prediv to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sclk_prediv, align 4
  %conv39 = zext i8 %51 to i32
  %call40 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 262146, i32 noundef %conv39) #8
  %52 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap15, align 4
  %call.i74 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 196609, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %cs43130_get_pll_table.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.end13 ], [ -22, %cs43130_get_pll_table.exit.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_set_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_set_sysclk.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_set_sysclk, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !527

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %arrayidx8 = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %12
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_set_sysclk.__UNIQUE_ID_ddebug301, ptr noundef %10, ptr noundef nonnull @.str.162, i32 noundef %12, i32 noundef %14) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_pcm_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.216)
  switch i16 %trunc, label %do.end [
    i16 16384, label %entry.sw.epilog_crit_edge
    i16 4096, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.163) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 4096, %sw.bb2 ], [ 16384, %entry.sw.epilog_crit_edge ]
  %id4 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 1
  %8 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id4, align 4
  %dai_mode6 = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %9, i32 2
  %10 = ptrtoint ptr %dai_mode6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %dai_mode6, align 4
  %and7 = and i32 %fmt, 15
  %11 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %and7, label %do.end30 [
    i32 1, label %sw.epilog.do.body33_crit_edge
    i32 3, label %sw.epilog.do.body33_crit_edge74
    i32 4, label %sw.epilog.do.body33_crit_edge75
    i32 5, label %sw.epilog.do.body33_crit_edge76
  ]

sw.epilog.do.body33_crit_edge76:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

sw.epilog.do.body33_crit_edge75:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

sw.epilog.do.body33_crit_edge74:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

sw.epilog.do.body33_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body33

do.end30:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.166) #11
  br label %cleanup

do.body33:                                        ; preds = %sw.epilog.do.body33_crit_edge, %sw.epilog.do.body33_crit_edge74, %sw.epilog.do.body33_crit_edge75, %sw.epilog.do.body33_crit_edge76
  %id10 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 1
  %14 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id10, align 4
  %dai_format = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %15, i32 1
  %16 = ptrtoint ptr %dai_format to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and7, ptr %dai_format, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_pcm_set_fmt.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_pcm_set_fmt, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !527

if.then:                                          ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %id38 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 1
  %19 = ptrtoint ptr %id38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id38, align 4
  %dai_mode42 = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %20, i32 2
  %21 = ptrtoint ptr %dai_mode42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dai_mode42, align 4
  %dai_format46 = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %20, i32 1
  %23 = ptrtoint ptr %dai_format46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dai_format46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_pcm_set_fmt.__UNIQUE_ID_ddebug299, ptr noundef %18, ptr noundef nonnull @.str.168, i32 noundef %20, i32 noundef %22, i32 noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body33, %do.end30, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end30 ], [ 0, %if.then ], [ 0, %do.body33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_pcm_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @cs43130_asp_constraints) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %11, %entry.if.then.i.i.i_crit_edge ], [ %14, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !528
  %add.i.i.i = or i32 %12, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i.i = icmp eq i32 %14, 0
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
  %clk_mutex = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %clk_mutex, i32 noundef 0) #8
  %clk_req = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 7
  %15 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then, label %params_width.exit.if.end14_crit_edge

params_width.exit.if.end14_crit_edge:             ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %rem = urem i32 22579200, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool5.not = icmp eq i32 %rem, 0
  %. = select i1 %tobool5.not, i32 22579200, i32 24576000
  %mclk = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 11
  %19 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mclk, align 4
  %call7 = tail call i32 @cs43130_set_pll(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %20, i32 noundef %.)
  %pll_bypass = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 8
  %21 = ptrtoint ptr %pll_bypass to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pll_bypass, align 4, !range !526
  %23 = xor i8 %22, 1
  %24 = zext i8 %23 to i32
  tail call fastcc void @cs43130_change_clksrc(ptr noundef %1, i32 noundef %24)
  br label %if.end14

if.end14:                                         ; preds = %if.then, %params_width.exit.if.end14_crit_edge
  %25 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clk_req, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %clk_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp = icmp eq i32 %inc, 2
  br i1 %cmp, label %if.then17, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 458757, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 6000, i32 noundef 6050, i32 noundef 2) #8
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 458757, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  tail call void @mutex_unlock(ptr noundef %clk_mutex) #8
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %30, label %do.end42 [
    i32 1, label %if.end19.sw.bb_crit_edge
    i32 2, label %if.end19.sw.bb_crit_edge274
    i32 0, label %sw.bb31
  ]

if.end19.sw.bb_crit_edge274:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end19.sw.bb_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end19.sw.bb_crit_edge, %if.end19.sw.bb_crit_edge274
  %arrayidx.i.i182 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %arrayidx.i.i182 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i182, align 4
  %mul = mul i32 %33, 24
  %arrayidx.i.i183 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %arrayidx.i.i183 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i183, align 4
  %mul24 = mul i32 %mul, %35
  %36 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %33, label %do.end [
    i32 176400, label %sw.bb.sw.epilog_crit_edge
    i32 352800, label %sw.bb27
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb27:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.169, i32 noundef %33) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb27, %sw.bb.sw.epilog_crit_edge
  %dsd_speed.0 = phi i32 [ 4, %sw.bb27 ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  %regmap29 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %regmap29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap29, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 458756, i32 noundef 4, i32 noundef %dsd_speed.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog45

sw.bb31:                                          ; preds = %if.end19
  %arrayidx.i.i186 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %arrayidx.i.i186 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i186, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %42, label %sw.bb31.cleanup_crit_edge [
    i32 32000, label %sw.bb31.if.end36_crit_edge
    i32 44100, label %cleanup.fold.split.i
    i32 48000, label %cleanup.fold.split8.i
    i32 88200, label %cleanup.fold.split9.i
    i32 96000, label %cleanup.fold.split10.i
    i32 176400, label %cleanup.fold.split11.i
    i32 192000, label %cleanup.fold.split12.i
    i32 352800, label %cleanup.fold.split13.i
    i32 384000, label %cleanup.fold.split14.i
  ]

sw.bb31.if.end36_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split.i:                             ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

cleanup.fold.split8.i:                            ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

cleanup.fold.split9.i:                            ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

cleanup.fold.split10.i:                           ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

cleanup.fold.split11.i:                           ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

cleanup.fold.split12.i:                           ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

cleanup.fold.split13.i:                           ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

cleanup.fold.split14.i:                           ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end36:                                         ; preds = %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %sw.bb31.if.end36_crit_edge
  %retval.0.i187.ph = phi ptr [ getelementptr inbounds ([9 x %struct.cs43130_rate_map], ptr @cs43130_rate_table, i32 0, i32 8), %cleanup.fold.split14.i ], [ getelementptr inbounds ([9 x %struct.cs43130_rate_map], ptr @cs43130_rate_table, i32 0, i32 7), %cleanup.fold.split13.i ], [ getelementptr inbounds ([9 x %struct.cs43130_rate_map], ptr @cs43130_rate_table, i32 0, i32 6), %cleanup.fold.split12.i ], [ getelementptr inbounds ([9 x %struct.cs43130_rate_map], ptr @cs43130_rate_table, i32 0, i32 5), %cleanup.fold.split11.i ], [ getelementptr inbounds ([9 x %struct.cs43130_rate_map], ptr @cs43130_rate_table, i32 0, i32 4), %cleanup.fold.split10.i ], [ getelementptr inbounds ([9 x %struct.cs43130_rate_map], ptr @cs43130_rate_table, i32 0, i32 3), %cleanup.fold.split9.i ], [ getelementptr inbounds ([9 x %struct.cs43130_rate_map], ptr @cs43130_rate_table, i32 0, i32 2), %cleanup.fold.split8.i ], [ getelementptr inbounds ([9 x %struct.cs43130_rate_map], ptr @cs43130_rate_table, i32 0, i32 1), %cleanup.fold.split.i ], [ @cs43130_rate_table, %sw.bb31.if.end36_crit_edge ]
  %regmap37 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %44 = ptrtoint ptr %regmap37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap37, align 4
  %val = getelementptr inbounds %struct.cs43130_rate_map, ptr %retval.0.i187.ph, i32 0, i32 1
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  %call38 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 65547, i32 noundef %47) #8
  br label %sw.epilog45

do.end42:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.172, i32 noundef %30) #11
  br label %cleanup

sw.epilog45:                                      ; preds = %if.end36, %sw.epilog
  %sclk.0 = phi i32 [ %9, %if.end36 ], [ %mul24, %sw.epilog ]
  %bitwidth_dai.0 = phi i32 [ %call1.i, %if.end36 ], [ 24, %sw.epilog ]
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %51, label %sw.epilog45.sw.epilog53_crit_edge [
    i32 1, label %sw.epilog45.sw.epilog53.sink.split_crit_edge
    i32 2, label %sw.bb50
  ]

sw.epilog45.sw.epilog53.sink.split_crit_edge:     ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog53.sink.split

sw.epilog45.sw.epilog53_crit_edge:                ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog53

sw.bb50:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog53.sink.split

sw.epilog53.sink.split:                           ; preds = %sw.bb50, %sw.epilog45.sw.epilog53.sink.split_crit_edge
  %.sink248 = phi i32 [ 96, %sw.bb50 ], [ 64, %sw.epilog45.sw.epilog53.sink.split_crit_edge ]
  %regmap51 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %53 = ptrtoint ptr %regmap51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap51, align 4
  %call.i189 = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 458756, i32 noundef 96, i32 noundef %.sink248, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.epilog53.sink.split, %sw.epilog45.sw.epilog53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sclk.0)
  %tobool54.not = icmp eq i32 %sclk.0, 0
  br i1 %tobool54.not, label %land.lhs.true, label %sw.epilog53.if.end72_crit_edge

sw.epilog53.if.end72_crit_edge:                   ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

land.lhs.true:                                    ; preds = %sw.epilog53
  %55 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id, align 4
  %dai_mode = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %56, i32 2
  %57 = ptrtoint ptr %dai_mode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dai_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %58)
  %cmp58 = icmp eq i32 %58, 4096
  br i1 %cmp58, label %if.end65, label %land.lhs.true.do.end70_crit_edge

land.lhs.true.do.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

if.end65:                                         ; preds = %land.lhs.true
  %arrayidx.i.i190 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %arrayidx.i.i190 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i190, align 4
  %mul62 = mul i32 %60, %bitwidth_dai.0
  %arrayidx.i.i191 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %61 = ptrtoint ptr %arrayidx.i.i191 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i191, align 4
  %mul64 = mul i32 %mul62, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul64)
  %tobool66.not = icmp eq i32 %mul64, 0
  br i1 %tobool66.not, label %if.end65.do.end70_crit_edge, label %if.end65.if.end72_crit_edge

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.end65.do.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

do.end70:                                         ; preds = %if.end65.do.end70_crit_edge, %land.lhs.true.do.end70_crit_edge
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.175) #11
  br label %cleanup

if.end72:                                         ; preds = %if.end65.if.end72_crit_edge, %sw.epilog53.if.end72_crit_edge
  %sclk.1214 = phi i32 [ %mul64, %if.end65.if.end72_crit_edge ], [ %sclk.0, %sw.epilog53.if.end72_crit_edge ]
  %arrayidx.i.i192 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %65 = ptrtoint ptr %arrayidx.i.i192 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i192, align 4
  %div = udiv i32 %sclk.1214, %66
  %arrayidx.i.i193 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %67 = ptrtoint ptr %arrayidx.i.i193 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i193, align 4
  %div75 = udiv i32 %div, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %div75, i32 %bitwidth_dai.0)
  %cmp76 = icmp ult i32 %div75, %bitwidth_dai.0
  br i1 %cmp76, label %do.end81, label %do.body84

do.end81:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.178) #11
  br label %cleanup

do.body84:                                        ; preds = %if.end72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_hw_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_hw_params, %if.then89)) #8
          to label %do.body95 [label %if.then89], !srcloc !527

if.then89:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  %73 = ptrtoint ptr %arrayidx.i.i192 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i192, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_hw_params.__UNIQUE_ID_ddebug297, ptr noundef %72, ptr noundef nonnull @.str.180, i32 noundef %sclk.1214, i32 noundef %74, i32 noundef %bitwidth_dai.0) #8
  br label %do.body95

do.body95:                                        ; preds = %if.then89, %do.body84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_hw_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_hw_params, %if.then107)) #8
          to label %do.end112 [label %if.then107], !srcloc !527

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  %77 = ptrtoint ptr %arrayidx.i.i193 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i193, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_hw_params.__UNIQUE_ID_ddebug298, ptr noundef %76, ptr noundef nonnull @.str.181, i32 noundef %div75, i32 noundef %78) #8
  br label %do.end112

do.end112:                                        ; preds = %if.then107, %do.body95
  %79 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id, align 4
  %regmap114 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %81 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap114, align 4
  %83 = add i32 %bitwidth_dai.0, -8
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %84)
  %85 = icmp ult i32 %84, 4
  br i1 %85, label %switch.lookup, label %do.end112.cs43130_set_bitwidth.exit_crit_edge

do.end112.cs43130_set_bitwidth.exit_crit_edge:    ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs43130_set_bitwidth.exit

switch.lookup:                                    ; preds = %do.end112
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.cs43130_hw_params, i32 0, i32 %84
  %86 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %86)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %87 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %80, label %switch.lookup.cs43130_set_bitwidth.exitthread-pre-split_crit_edge [
    i32 0, label %switch.lookup.sw.bb.i_crit_edge
    i32 1, label %switch.lookup.sw.bb.i_crit_edge275
    i32 2, label %sw.bb7.i
  ]

switch.lookup.sw.bb.i_crit_edge275:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

switch.lookup.sw.bb.i_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

switch.lookup.cs43130_set_bitwidth.exitthread-pre-split_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs43130_set_bitwidth.exitthread-pre-split

sw.bb.i:                                          ; preds = %switch.lookup.sw.bb.i_crit_edge, %switch.lookup.sw.bb.i_crit_edge275
  %ch_bit.i = getelementptr inbounds %struct.cs43130_bitwidth_map, ptr %switch.load, i32 0, i32 2
  %88 = ptrtoint ptr %ch_bit.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ch_bit.i, align 1
  %conv.i = zext i8 %89 to i32
  %call.i.i196 = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 327690, i32 noundef 3, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %90 = ptrtoint ptr %ch_bit.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ch_bit.i, align 1
  %conv3.i = zext i8 %91 to i32
  %call.i1.i197 = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 327691, i32 noundef 3, i32 noundef %conv3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sp_bit.i = getelementptr inbounds %struct.cs43130_bitwidth_map, ptr %switch.load, i32 0, i32 1
  %92 = ptrtoint ptr %sp_bit.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %sp_bit.i, align 4
  %conv5.i = zext i8 %93 to i32
  %call.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 65548, i32 noundef 3, i32 noundef %conv5.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cs43130_set_bitwidth.exitthread-pre-split

sw.bb7.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %ch_bit8.i = getelementptr inbounds %struct.cs43130_bitwidth_map, ptr %switch.load, i32 0, i32 2
  %94 = ptrtoint ptr %ch_bit8.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ch_bit8.i, align 1
  %conv9.i = zext i8 %95 to i32
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 393226, i32 noundef 3, i32 noundef %conv9.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %96 = ptrtoint ptr %ch_bit8.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ch_bit8.i, align 1
  %conv12.i = zext i8 %97 to i32
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 393227, i32 noundef 3, i32 noundef %conv12.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sp_bit14.i = getelementptr inbounds %struct.cs43130_bitwidth_map, ptr %switch.load, i32 0, i32 1
  %98 = ptrtoint ptr %sp_bit14.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %sp_bit14.i, align 4
  %conv15.i = zext i8 %99 to i32
  %shl.i = shl nuw nsw i32 %conv15.i, 2
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 65548, i32 noundef 12, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cs43130_set_bitwidth.exitthread-pre-split

cs43130_set_bitwidth.exitthread-pre-split:        ; preds = %sw.bb7.i, %sw.bb.i, %switch.lookup.cs43130_set_bitwidth.exitthread-pre-split_crit_edge
  %100 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pr = load i32, ptr %id, align 4
  br label %cs43130_set_bitwidth.exit

cs43130_set_bitwidth.exit:                        ; preds = %cs43130_set_bitwidth.exitthread-pre-split, %do.end112.cs43130_set_bitwidth.exit_crit_edge
  %101 = phi i32 [ %.pr, %cs43130_set_bitwidth.exitthread-pre-split ], [ %80, %do.end112.cs43130_set_bitwidth.exit_crit_edge ]
  %dai_format.i = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %101, i32 1
  %102 = ptrtoint ptr %dai_format.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dai_format.i, align 4
  %104 = zext i32 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %103, label %cs43130_set_bitwidth.exit.cleanup_crit_edge [
    i32 1, label %sw.bb.i199
    i32 3, label %sw.bb1.i
    i32 4, label %cs43130_set_bitwidth.exit.sw.epilog.i_crit_edge
    i32 5, label %sw.bb4.i
  ]

cs43130_set_bitwidth.exit.sw.epilog.i_crit_edge:  ; preds = %cs43130_set_bitwidth.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

cs43130_set_bitwidth.exit.cleanup_crit_edge:      ; preds = %cs43130_set_bitwidth.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i199:                                       ; preds = %cs43130_set_bitwidth.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i198 = trunc i32 %div75 to i16
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %cs43130_set_bitwidth.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i = trunc i32 %div75 to i16
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %cs43130_set_bitwidth.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb1.i, %sw.bb.i199, %cs43130_set_bitwidth.exit.sw.epilog.i_crit_edge
  %hi_size.0.i = phi i16 [ 1, %sw.bb4.i ], [ %conv2.i, %sw.bb1.i ], [ %conv.i198, %sw.bb.i199 ], [ 1, %cs43130_set_bitwidth.exit.sw.epilog.i_crit_edge ]
  %frm_delay.0.i = phi i32 [ 0, %sw.bb4.i ], [ 2, %sw.bb1.i ], [ 2, %sw.bb.i199 ], [ 2, %cs43130_set_bitwidth.exit.sw.epilog.i_crit_edge ]
  %frm_phase.0.i = phi i32 [ 16, %sw.bb4.i ], [ 16, %sw.bb1.i ], [ 0, %sw.bb.i199 ], [ 16, %cs43130_set_bitwidth.exit.sw.epilog.i_crit_edge ]
  %dai_mode.i = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %101, i32 2
  %105 = ptrtoint ptr %dai_mode.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dai_mode.i, align 4
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %106, label %sw.epilog.i.cleanup_crit_edge [
    i32 16384, label %sw.epilog.i.sw.epilog10.i_crit_edge
    i32 4096, label %sw.bb8.i
  ]

sw.epilog.i.sw.epilog10.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10.i

sw.epilog10.i:                                    ; preds = %sw.bb8.i, %sw.epilog.i.sw.epilog10.i_crit_edge
  %dai_mode_val.0.i = phi i32 [ 28, %sw.bb8.i ], [ 12, %sw.epilog.i.sw.epilog10.i_crit_edge ]
  %108 = ptrtoint ptr %arrayidx.i.i193 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i.i193, align 4
  %mul.i = mul i32 %109, %div75
  %sub.i = add i32 %109, 255
  %mul13.i = mul i32 %sub.i, %div75
  %or.i = or i32 %frm_phase.0.i, %frm_delay.0.i
  %110 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %101, label %sw.epilog10.i.cleanup_crit_edge [
    i32 0, label %sw.epilog10.i.sw.bb48.i_crit_edge
    i32 1, label %sw.epilog10.i.sw.bb48.i_crit_edge276
    i32 2, label %sw.bb83.i
  ]

sw.epilog10.i.sw.bb48.i_crit_edge276:             ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48.i

sw.epilog10.i.sw.bb48.i_crit_edge:                ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48.i

sw.epilog10.i.cleanup_crit_edge:                  ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb48.i:                                        ; preds = %sw.epilog10.i.sw.bb48.i_crit_edge, %sw.epilog10.i.sw.bb48.i_crit_edge276
  %111 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap114, align 4
  %conv49.i = and i32 %mul.i, 65535
  %sub50.i = add nsw i32 %conv49.i, -1
  %call.i.i201 = tail call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 262166, i32 noundef 255, i32 noundef %sub50.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %113 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap114, align 4
  %shr55.i = ashr i32 %sub50.i, 8
  %call.i2.i202 = tail call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef 262167, i32 noundef 255, i32 noundef %shr55.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %115 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap114, align 4
  %conv58.i = zext i16 %hi_size.0.i to i32
  %sub59.i = add nsw i32 %conv58.i, -1
  %call.i3.i203 = tail call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef 262164, i32 noundef 255, i32 noundef %sub59.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog121.i

sw.bb83.i:                                        ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap114, align 4
  %conv85.i = and i32 %mul.i, 65535
  %sub86.i = add nsw i32 %conv85.i, -1
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef 262182, i32 noundef 255, i32 noundef %sub86.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %119 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap114, align 4
  %shr92.i = ashr i32 %sub86.i, 8
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %120, i32 noundef 262183, i32 noundef 255, i32 noundef %shr92.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %121 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap114, align 4
  %conv95.i = zext i16 %hi_size.0.i to i32
  %sub96.i = add nsw i32 %conv95.i, -1
  %call.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %122, i32 noundef 262180, i32 noundef 255, i32 noundef %sub96.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog121.i

sw.epilog121.i:                                   ; preds = %sw.bb83.i, %sw.bb48.i
  %sub96.sink.i = phi i32 [ %sub96.i, %sw.bb83.i ], [ %sub59.i, %sw.bb48.i ]
  %.sink96.i = phi i32 [ 262181, %sw.bb83.i ], [ 262165, %sw.bb48.i ]
  %.sink94.i = phi i32 [ 262185, %sw.bb83.i ], [ 262169, %sw.bb48.i ]
  %.sink92.i = phi i32 [ 393216, %sw.bb83.i ], [ 327680, %sw.bb48.i ]
  %.sink90.i = phi i32 [ 393217, %sw.bb83.i ], [ 327681, %sw.bb48.i ]
  %.sink88.i = phi i32 [ 393226, %sw.bb83.i ], [ 327690, %sw.bb48.i ]
  %.sink86.i = phi i32 [ 393227, %sw.bb83.i ], [ 327691, %sw.bb48.i ]
  %.sink85.i = phi i32 [ 262184, %sw.bb83.i ], [ 262168, %sw.bb48.i ]
  %conv122.pre-phi.i = phi i32 [ %conv85.i, %sw.bb83.i ], [ %conv49.i, %sw.bb48.i ]
  %123 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap114, align 4
  %shr102.i = ashr i32 %sub96.sink.i, 8
  %call.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %124, i32 noundef %.sink96.i, i32 noundef 255, i32 noundef %shr102.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %125 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap114, align 4
  %call106.i = tail call i32 @regmap_write(ptr noundef %126, i32 noundef %.sink94.i, i32 noundef %or.i) #8
  %127 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regmap114, align 4
  %call109.i = tail call i32 @regmap_write(ptr noundef %128, i32 noundef %.sink92.i, i32 noundef 0) #8
  %129 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regmap114, align 4
  %conv111.i = and i32 %mul13.i, 255
  %call112.i = tail call i32 @regmap_write(ptr noundef %130, i32 noundef %.sink90.i, i32 noundef %conv111.i) #8
  %131 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap114, align 4
  %call.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %132, i32 noundef %.sink88.i, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %133 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regmap114, align 4
  %call.i12.i = tail call i32 @regmap_update_bits_base(ptr noundef %134, i32 noundef %.sink86.i, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %135 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regmap114, align 4
  %call119.i = tail call i32 @regmap_write(ptr noundef %136, i32 noundef %.sink85.i, i32 noundef %dai_mode_val.0.i) #8
  %137 = add nsw i32 %conv122.pre-phi.i, -16
  %138 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 28) #8
  %139 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %138, label %sw.epilog121.i.cleanup_crit_edge [
    i32 0, label %sw.bb123.i
    i32 1, label %sw.bb126.i
    i32 2, label %sw.bb130.i
    i32 3, label %sw.bb134.i
  ]

sw.epilog121.i.cleanup_crit_edge:                 ; preds = %sw.epilog121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb123.i:                                       ; preds = %sw.epilog121.i
  %mclk_int.i = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 12
  %140 = ptrtoint ptr %mclk_int.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mclk_int.i, align 4
  %142 = ptrtoint ptr %arrayidx.i.i192 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx.i.i192, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb123.i
  %i.014.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb123.i ]
  %arrayidx.i.i204 = getelementptr %struct.cs43130_clk_gen, ptr @cs43130_16_clk_gen, i32 %i.014.i.i
  %144 = ptrtoint ptr %arrayidx.i.i204 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i.i204, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %141)
  %cmp2.i.i = icmp eq i32 %145, %141
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %fs4.i.i = getelementptr %struct.cs43130_clk_gen, ptr @cs43130_16_clk_gen, i32 %i.014.i.i, i32 1
  %146 = ptrtoint ptr %fs4.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %fs4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %143)
  %cmp5.i.i = icmp eq i32 %147, %143
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.sw.epilog139.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i.sw.epilog139.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog139.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 18
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb126.i:                                       ; preds = %sw.epilog121.i
  %mclk_int127.i = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 12
  %148 = ptrtoint ptr %mclk_int127.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mclk_int127.i, align 4
  %150 = ptrtoint ptr %arrayidx.i.i192 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx.i.i192, align 4
  br label %for.body.i18.i

for.body.i18.i:                                   ; preds = %for.inc.i24.i.for.body.i18.i_crit_edge, %sw.bb126.i
  %i.014.i15.i = phi i32 [ %inc.i22.i, %for.inc.i24.i.for.body.i18.i_crit_edge ], [ 0, %sw.bb126.i ]
  %arrayidx.i16.i = getelementptr %struct.cs43130_clk_gen, ptr @cs43130_32_clk_gen, i32 %i.014.i15.i
  %152 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %149)
  %cmp2.i17.i = icmp eq i32 %153, %149
  br i1 %cmp2.i17.i, label %land.lhs.true.i21.i, label %for.body.i18.i.for.inc.i24.i_crit_edge

for.body.i18.i.for.inc.i24.i_crit_edge:           ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i24.i

land.lhs.true.i21.i:                              ; preds = %for.body.i18.i
  %fs4.i19.i = getelementptr %struct.cs43130_clk_gen, ptr @cs43130_32_clk_gen, i32 %i.014.i15.i, i32 1
  %154 = ptrtoint ptr %fs4.i19.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %fs4.i19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %151)
  %cmp5.i20.i = icmp eq i32 %155, %151
  br i1 %cmp5.i20.i, label %land.lhs.true.i21.i.sw.epilog139.i_crit_edge, label %land.lhs.true.i21.i.for.inc.i24.i_crit_edge

land.lhs.true.i21.i.for.inc.i24.i_crit_edge:      ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i24.i

land.lhs.true.i21.i.sw.epilog139.i_crit_edge:     ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog139.i

for.inc.i24.i:                                    ; preds = %land.lhs.true.i21.i.for.inc.i24.i_crit_edge, %for.body.i18.i.for.inc.i24.i_crit_edge
  %inc.i22.i = add nuw nsw i32 %i.014.i15.i, 1
  %exitcond.not.i23.i = icmp eq i32 %inc.i22.i, 18
  br i1 %exitcond.not.i23.i, label %for.inc.i24.i.cleanup_crit_edge, label %for.inc.i24.i.for.body.i18.i_crit_edge

for.inc.i24.i.for.body.i18.i_crit_edge:           ; preds = %for.inc.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i18.i

for.inc.i24.i.cleanup_crit_edge:                  ; preds = %for.inc.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb130.i:                                       ; preds = %sw.epilog121.i
  %mclk_int131.i = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 12
  %156 = ptrtoint ptr %mclk_int131.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %mclk_int131.i, align 4
  %158 = ptrtoint ptr %arrayidx.i.i192 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.i.i192, align 4
  br label %for.body.i31.i

for.body.i31.i:                                   ; preds = %for.inc.i37.i.for.body.i31.i_crit_edge, %sw.bb130.i
  %i.014.i28.i = phi i32 [ %inc.i35.i, %for.inc.i37.i.for.body.i31.i_crit_edge ], [ 0, %sw.bb130.i ]
  %arrayidx.i29.i = getelementptr %struct.cs43130_clk_gen, ptr @cs43130_48_clk_gen, i32 %i.014.i28.i
  %160 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx.i29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %157)
  %cmp2.i30.i = icmp eq i32 %161, %157
  br i1 %cmp2.i30.i, label %land.lhs.true.i34.i, label %for.body.i31.i.for.inc.i37.i_crit_edge

for.body.i31.i.for.inc.i37.i_crit_edge:           ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i37.i

land.lhs.true.i34.i:                              ; preds = %for.body.i31.i
  %fs4.i32.i = getelementptr %struct.cs43130_clk_gen, ptr @cs43130_48_clk_gen, i32 %i.014.i28.i, i32 1
  %162 = ptrtoint ptr %fs4.i32.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %fs4.i32.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %159)
  %cmp5.i33.i = icmp eq i32 %163, %159
  br i1 %cmp5.i33.i, label %land.lhs.true.i34.i.sw.epilog139.i_crit_edge, label %land.lhs.true.i34.i.for.inc.i37.i_crit_edge

land.lhs.true.i34.i.for.inc.i37.i_crit_edge:      ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i37.i

land.lhs.true.i34.i.sw.epilog139.i_crit_edge:     ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog139.i

for.inc.i37.i:                                    ; preds = %land.lhs.true.i34.i.for.inc.i37.i_crit_edge, %for.body.i31.i.for.inc.i37.i_crit_edge
  %inc.i35.i = add nuw nsw i32 %i.014.i28.i, 1
  %exitcond.not.i36.i = icmp eq i32 %inc.i35.i, 18
  br i1 %exitcond.not.i36.i, label %for.inc.i37.i.cleanup_crit_edge, label %for.inc.i37.i.for.body.i31.i_crit_edge

for.inc.i37.i.for.body.i31.i_crit_edge:           ; preds = %for.inc.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i31.i

for.inc.i37.i.cleanup_crit_edge:                  ; preds = %for.inc.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb134.i:                                       ; preds = %sw.epilog121.i
  %mclk_int135.i = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 12
  %164 = ptrtoint ptr %mclk_int135.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %mclk_int135.i, align 4
  %166 = ptrtoint ptr %arrayidx.i.i192 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx.i.i192, align 4
  br label %for.body.i44.i

for.body.i44.i:                                   ; preds = %for.inc.i50.i.for.body.i44.i_crit_edge, %sw.bb134.i
  %i.014.i41.i = phi i32 [ %inc.i48.i, %for.inc.i50.i.for.body.i44.i_crit_edge ], [ 0, %sw.bb134.i ]
  %arrayidx.i42.i = getelementptr %struct.cs43130_clk_gen, ptr @cs43130_64_clk_gen, i32 %i.014.i41.i
  %168 = ptrtoint ptr %arrayidx.i42.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.i42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %165)
  %cmp2.i43.i = icmp eq i32 %169, %165
  br i1 %cmp2.i43.i, label %land.lhs.true.i47.i, label %for.body.i44.i.for.inc.i50.i_crit_edge

for.body.i44.i.for.inc.i50.i_crit_edge:           ; preds = %for.body.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i50.i

land.lhs.true.i47.i:                              ; preds = %for.body.i44.i
  %fs4.i45.i = getelementptr %struct.cs43130_clk_gen, ptr @cs43130_64_clk_gen, i32 %i.014.i41.i, i32 1
  %170 = ptrtoint ptr %fs4.i45.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %fs4.i45.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %167)
  %cmp5.i46.i = icmp eq i32 %171, %167
  br i1 %cmp5.i46.i, label %land.lhs.true.i47.i.sw.epilog139.i_crit_edge, label %land.lhs.true.i47.i.for.inc.i50.i_crit_edge

land.lhs.true.i47.i.for.inc.i50.i_crit_edge:      ; preds = %land.lhs.true.i47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i50.i

land.lhs.true.i47.i.sw.epilog139.i_crit_edge:     ; preds = %land.lhs.true.i47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog139.i

for.inc.i50.i:                                    ; preds = %land.lhs.true.i47.i.for.inc.i50.i_crit_edge, %for.body.i44.i.for.inc.i50.i_crit_edge
  %inc.i48.i = add nuw nsw i32 %i.014.i41.i, 1
  %exitcond.not.i49.i = icmp eq i32 %inc.i48.i, 17
  br i1 %exitcond.not.i49.i, label %for.inc.i50.i.cleanup_crit_edge, label %for.inc.i50.i.for.body.i44.i_crit_edge

for.inc.i50.i.for.body.i44.i_crit_edge:           ; preds = %for.inc.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i44.i

for.inc.i50.i.cleanup_crit_edge:                  ; preds = %for.inc.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog139.i:                                   ; preds = %land.lhs.true.i47.i.sw.epilog139.i_crit_edge, %land.lhs.true.i34.i.sw.epilog139.i_crit_edge, %land.lhs.true.i21.i.sw.epilog139.i_crit_edge, %land.lhs.true.i.i.sw.epilog139.i_crit_edge
  %clk_gen.0.i = phi ptr [ %arrayidx.i.i204, %land.lhs.true.i.i.sw.epilog139.i_crit_edge ], [ %arrayidx.i16.i, %land.lhs.true.i21.i.sw.epilog139.i_crit_edge ], [ %arrayidx.i29.i, %land.lhs.true.i34.i.sw.epilog139.i_crit_edge ], [ %arrayidx.i42.i, %land.lhs.true.i47.i.sw.epilog139.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %clk_gen.0.i, null
  br i1 %tobool.not.i, label %sw.epilog139.i.cleanup_crit_edge, label %if.end.i205

sw.epilog139.i.cleanup_crit_edge:                 ; preds = %sw.epilog139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i205:                                      ; preds = %sw.epilog139.i
  %172 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %101, label %if.end.i205.cleanup_crit_edge [
    i32 0, label %if.end.i205.sw.bb140.i_crit_edge
    i32 1, label %if.end.i205.sw.bb140.i_crit_edge277
    i32 2, label %sw.bb163.i
  ]

if.end.i205.sw.bb140.i_crit_edge277:              ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb140.i

if.end.i205.sw.bb140.i_crit_edge:                 ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb140.i

if.end.i205.cleanup_crit_edge:                    ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb140.i:                                       ; preds = %if.end.i205.sw.bb140.i_crit_edge, %if.end.i205.sw.bb140.i_crit_edge277
  %173 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regmap114, align 4
  %den.i = getelementptr inbounds %struct.cs43130_clk_gen, ptr %clk_gen.0.i, i32 0, i32 2
  %175 = ptrtoint ptr %den.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %den.i, align 4
  %177 = and i16 %176, 255
  %and143.i = zext i16 %177 to i32
  %call145.i = tail call i32 @regmap_write(ptr noundef %174, i32 noundef 262162, i32 noundef %and143.i) #8
  %178 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regmap114, align 4
  %180 = lshr i16 %176, 8
  %181 = zext i16 %180 to i32
  %call151.i = tail call i32 @regmap_write(ptr noundef %179, i32 noundef 262163, i32 noundef %181) #8
  %182 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regmap114, align 4
  %num.i = getelementptr inbounds %struct.cs43130_clk_gen, ptr %clk_gen.0.i, i32 0, i32 3
  %184 = ptrtoint ptr %num.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %num.i, align 2
  %186 = and i16 %185, 255
  %and154.i = zext i16 %186 to i32
  %call156.i = tail call i32 @regmap_write(ptr noundef %183, i32 noundef 262160, i32 noundef %and154.i) #8
  br label %cleanup.sink.split.i

sw.bb163.i:                                       ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #10
  %187 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regmap114, align 4
  %den165.i = getelementptr inbounds %struct.cs43130_clk_gen, ptr %clk_gen.0.i, i32 0, i32 2
  %189 = ptrtoint ptr %den165.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %den165.i, align 4
  %191 = and i16 %190, 255
  %and167.i = zext i16 %191 to i32
  %call169.i = tail call i32 @regmap_write(ptr noundef %188, i32 noundef 262178, i32 noundef %and167.i) #8
  %192 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regmap114, align 4
  %194 = lshr i16 %190, 8
  %195 = zext i16 %194 to i32
  %call175.i = tail call i32 @regmap_write(ptr noundef %193, i32 noundef 262179, i32 noundef %195) #8
  %196 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regmap114, align 4
  %num177.i = getelementptr inbounds %struct.cs43130_clk_gen, ptr %clk_gen.0.i, i32 0, i32 3
  %198 = ptrtoint ptr %num177.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %num177.i, align 2
  %200 = and i16 %199, 255
  %and179.i = zext i16 %200 to i32
  %call181.i = tail call i32 @regmap_write(ptr noundef %197, i32 noundef 262176, i32 noundef %and179.i) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb163.i, %sw.bb140.i
  %.sink101.i = phi i16 [ %185, %sw.bb140.i ], [ %199, %sw.bb163.i ]
  %.sink98.i = phi i32 [ 262161, %sw.bb140.i ], [ 262177, %sw.bb163.i ]
  %201 = ptrtoint ptr %regmap114 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %regmap114, align 4
  %203 = lshr i16 %.sink101.i, 8
  %204 = zext i16 %203 to i32
  %call162.i = tail call i32 @regmap_write(ptr noundef %202, i32 noundef %.sink98.i, i32 noundef %204) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end.i205.cleanup_crit_edge, %sw.epilog139.i.cleanup_crit_edge, %for.inc.i50.i.cleanup_crit_edge, %for.inc.i37.i.cleanup_crit_edge, %for.inc.i24.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %sw.epilog121.i.cleanup_crit_edge, %sw.epilog10.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %cs43130_set_bitwidth.exit.cleanup_crit_edge, %do.end81, %do.end70, %do.end42, %sw.bb31.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end42 ], [ -22, %do.end81 ], [ -22, %do.end70 ], [ -22, %do.end ], [ -22, %sw.bb31.cleanup_crit_edge ], [ 0, %cs43130_set_bitwidth.exit.cleanup_crit_edge ], [ 0, %sw.epilog.i.cleanup_crit_edge ], [ 0, %sw.epilog10.i.cleanup_crit_edge ], [ 0, %sw.epilog121.i.cleanup_crit_edge ], [ 0, %sw.epilog139.i.cleanup_crit_edge ], [ 0, %if.end.i205.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ], [ 0, %for.inc.i.i.cleanup_crit_edge ], [ 0, %for.inc.i24.i.cleanup_crit_edge ], [ 0, %for.inc.i37.i.cleanup_crit_edge ], [ 0, %for.inc.i50.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_hw_free(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %clk_mutex = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %clk_mutex, i32 noundef 0) #8
  %clk_req = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_req, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %clk_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cs43130_change_clksrc(ptr noundef %1, i32 noundef 2)
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 458757, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 1600, i32 noundef 1650, i32 noundef 2) #8
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 458757, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %clk_mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_dop_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @cs43130_dop_constraints) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_dsd_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.228)
  switch i16 %trunc, label %do.end [
    i16 16384, label %entry.do.body7_crit_edge
    i16 4096, label %sw.bb2
  ]

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.182) #11
  br label %cleanup

do.body7:                                         ; preds = %sw.bb2, %entry.do.body7_crit_edge
  %.sink = phi i32 [ 4096, %sw.bb2 ], [ 16384, %entry.do.body7_crit_edge ]
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %dai_mode = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %9, i32 2
  %10 = ptrtoint ptr %dai_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %dai_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs43130_dsd_set_fmt.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs43130_dsd_set_fmt, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !527

if.then:                                          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %id13 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 1
  %13 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id13, align 4
  %dai_mode15 = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %14, i32 2
  %15 = ptrtoint ptr %dai_mode15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dai_mode15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs43130_dsd_set_fmt.__UNIQUE_ID_ddebug300, ptr noundef %12, ptr noundef nonnull @.str.184, i32 noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then ], [ 0, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_dsd_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %clk_mutex = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %clk_mutex, i32 noundef 0) #8
  %clk_req = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %rem = urem i32 22579200, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool3.not = icmp eq i32 %rem, 0
  %. = select i1 %tobool3.not, i32 22579200, i32 24576000
  %mclk = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mclk, align 4
  %call5 = tail call i32 @cs43130_set_pll(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %11, i32 noundef %.)
  %pll_bypass = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %pll_bypass to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pll_bypass, align 4, !range !526
  %14 = xor i8 %13, 1
  %15 = zext i8 %14 to i32
  tail call fastcc void @cs43130_change_clksrc(ptr noundef %1, i32 noundef %15)
  br label %if.end12

if.end12:                                         ; preds = %if.then, %entry.if.end12_crit_edge
  %16 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clk_req, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %clk_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp = icmp eq i32 %inc, 2
  br i1 %cmp, label %if.then15, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 458757, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 6000, i32 noundef 6050, i32 noundef 2) #8
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 458757, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef %clk_mutex) #8
  %arrayidx.i.i56 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %arrayidx.i.i56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i56, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %21, label %do.end [
    i32 176400, label %if.end17.sw.epilog_crit_edge
    i32 352800, label %sw.bb20
  ]

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.169, i32 noundef %21) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb20, %if.end17.sw.epilog_crit_edge
  %dsd_speed.0 = phi i32 [ 4, %sw.bb20 ], [ 0, %if.end17.sw.epilog_crit_edge ]
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  %dai_mode = getelementptr %struct.cs43130_private, ptr %5, i32 0, i32 14, i32 %26, i32 2
  %27 = ptrtoint ptr %dai_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dai_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %28)
  %cmp22 = icmp eq i32 %28, 4096
  %regmap24 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %regmap24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap24, align 4
  %.63 = select i1 %cmp22, i32 4, i32 0
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 458755, i32 noundef 4, i32 noundef %.63, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %regmap30 = getelementptr inbounds %struct.cs43130_private, ptr %5, i32 0, i32 1
  %31 = ptrtoint ptr %regmap30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap30, align 4
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 458756, i32 noundef 4, i32 noundef %dsd_speed.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %33 = ptrtoint ptr %regmap30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap30, align 4
  %call.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 458756, i32 noundef 96, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %xtal_ibias = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %xtal_ibias to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xtal_ibias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 983056, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap2 = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap2, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext true) #8
  %8 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap2, align 4
  tail call void @regcache_mark_dirty(ptr noundef %9) #8
  %reset_gpio = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #8
  %supplies = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %supplies) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs43130_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supplies = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 5, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #8
  %reset_gpio = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2050, i32 noundef 2) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regcache_sync(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.188) #11
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext true) #8
  %call18 = tail call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %supplies) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %xtal_ibias = getelementptr inbounds %struct.cs43130_private, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %xtal_ibias to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xtal_ibias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp10.not = icmp eq i32 %11, -1
  br i1 %cmp10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 983056, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call3, %do.end8 ], [ 0, %if.then11 ], [ 0, %if.end9.cleanup_crit_edge ]
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

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 263)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 263)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !130, !132, !133, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160, !161, !163, !165, !167, !169, !170, !171, !173, !175, !176, !177, !178, !180, !182, !184, !186, !188, !190, !192, !193, !194, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !278, !279, !280, !282, !283, !285, !286, !288, !289, !291, !293, !294, !296, !298, !300, !301, !303, !304, !306, !307, !309, !311, !312, !313, !315, !316, !318, !319, !320, !321, !323, !324, !325, !327, !328, !330, !331, !332, !334, !335, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !363, !364, !365, !367, !368, !370, !371, !373, !374, !375, !377, !378, !380, !382, !384, !386, !388, !389, !390, !392, !393, !395, !396, !397, !399, !400, !401, !402, !404, !405, !406, !408, !409, !411, !412, !413, !415, !417, !419, !421, !423, !425, !427, !429, !430, !431, !433, !434, !435, !436, !438, !439, !440, !442, !443, !445, !447, !449, !450, !451, !452, !454, !455, !456, !458, !459, !460, !462, !463, !464, !466, !467, !469, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !493, !494, !495, !497, !498, !500, !501, !502, !504, !506, !508, !509, !510, !512, !513, !514}
!llvm.module.flags = !{!516, !517, !518, !519, !520, !521, !522, !523}
!llvm.ident = !{!524}

!0 = !{ptr @__initcall__kmod_snd_soc_cs43130__316_2709_cs43130_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_cs43130__316_2709_cs43130_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cs43130.c", i32 2709, i32 1}
!2 = !{ptr @__exitcall_cs43130_i2c_driver_exit, !1, !"__exitcall_cs43130_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author317, !4, !"__UNIQUE_ID_author317", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/cs43130.c", i32 2711, i32 1}
!5 = !{ptr @__UNIQUE_ID_description318, !6, !"__UNIQUE_ID_description318", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/cs43130.c", i32 2712, i32 1}
!7 = !{ptr @__UNIQUE_ID_file319, !8, !"__UNIQUE_ID_file319", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/cs43130.c", i32 2713, i32 1}
!9 = !{ptr @__UNIQUE_ID_license320, !8, !"__UNIQUE_ID_license320", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/cs43130.c", i32 2700, i32 12}
!12 = !{ptr @cs43130_i2c_driver, !13, !"cs43130_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/cs43130.c", i32 2698, i32 26}
!14 = !{ptr @cs43130_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/cs43130.c", i32 2435, i32 20}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/cs43130.c", i32 2453, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cs43130_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @cs43130_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/cs43130.c", i32 2459, i32 3}
!27 = !{ptr @cs43130_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cs43130_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/cs43130.c", i32 2464, i32 13}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/cs43130.c", i32 2477, i32 3}
!33 = !{ptr @cs43130_i2c_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cs43130_i2c_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/cs43130.c", i32 2488, i32 3}
!37 = !{ptr @cs43130_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cs43130_i2c_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/cs43130.c", i32 2499, i32 3}
!41 = !{ptr @cs43130_i2c_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cs43130_i2c_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/cs43130.c", i32 2503, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cs43130_i2c_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @cs43130_i2c_probe._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @cs43130_i2c_probe.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/cs43130.c", i32 2507, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/cs43130.c", i32 2518, i32 3}
!53 = !{ptr @cs43130_i2c_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cs43130_i2c_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/cs43130.c", i32 2567, i32 3}
!57 = !{ptr @cs43130_i2c_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cs43130_i2c_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @cs43130_regmap, !60, !"cs43130_regmap", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/cs43130.c", i32 2351, i32 35}
!61 = !{ptr @cs43130_reg_defaults, !62, !"cs43130_reg_defaults", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/cs43130.c", i32 41, i32 33}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/cs43130.c", i32 2380, i32 31}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/cs43130.c", i32 2397, i32 3}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cs43130_handle_device_data._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @cs43130_handle_device_data._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/cs43130.c", i32 2402, i32 47}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/cs43130.c", i32 2403, i32 47}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/cs43130.c", i32 2405, i32 37}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/cs43130.c", i32 2411, i32 37}
!78 = !{ptr @cs43130_ac_freq, !79, !"cs43130_ac_freq", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/cs43130.c", i32 1687, i32 18}
!80 = distinct !{null, !81, !"cs43130_dc_threshold", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/cs43130.c", i32 2368, i32 18}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/cs43130.h", i32 486, i32 2}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/cs43130.h", i32 487, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/cs43130.h", i32 488, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/cs43130.h", i32 489, i32 2}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/cs43130.h", i32 490, i32 2}
!92 = distinct !{null, !93, !"cs43130_supply_names", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/cs43130.h", i32 485, i32 26}
!94 = !{ptr @init_completion.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../include/linux/completion.h", i32 87, i32 2}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/cs43130.c", i32 2188, i32 2}
!99 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug309, !98, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/cs43130.c", i32 2206, i32 3}
!104 = !{ptr @cs43130_irq_thread._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @cs43130_irq_thread._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/cs43130.c", i32 2215, i32 3}
!108 = !{ptr @cs43130_irq_thread._entry.48, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @cs43130_irq_thread._entry_ptr.50, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/cs43130.c", i32 2223, i32 3}
!112 = !{ptr @cs43130_irq_thread._entry.51, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @cs43130_irq_thread._entry_ptr.53, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/cs43130.c", i32 2231, i32 3}
!116 = !{ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug310, !115, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/cs43130.c", i32 2239, i32 3}
!119 = !{ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug311, !118, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/cs43130.c", i32 2247, i32 3}
!122 = !{ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug312, !121, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/cs43130.c", i32 2255, i32 3}
!125 = !{ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug313, !124, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/cs43130.c", i32 2262, i32 3}
!128 = !{ptr @cs43130_irq_thread._entry.58, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @cs43130_irq_thread._entry_ptr.60, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/cs43130.c", i32 2267, i32 3}
!132 = !{ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug314, !131, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/cs43130.c", i32 2276, i32 4}
!135 = !{ptr @cs43130_irq_thread.__UNIQUE_ID_ddebug315, !134, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!136 = !{ptr @all_hp_widgets, !137, !"all_hp_widgets", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/cs43130.c", i32 1409, i32 35}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/cs43130.c", i32 1371, i32 2}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/cs43130.c", i32 1372, i32 2}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/cs43130.c", i32 1374, i32 2}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/cs43130.c", i32 1379, i32 2}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/cs43130.c", i32 1384, i32 2}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/cs43130.c", i32 1389, i32 2}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/cs43130.c", i32 1394, i32 2}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/cs43130.c", i32 1397, i32 2}
!154 = !{ptr @digital_hp_widgets, !155, !"digital_hp_widgets", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/cs43130.c", i32 1370, i32 41}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/cs43130.c", i32 1250, i32 3}
!158 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @cs43130_pcm_event._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @cs43130_pcm_event._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @pcm_seq, !162, !"pcm_seq", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/cs43130.c", i32 1090, i32 34}
!163 = !{ptr @unmute_seq, !164, !"unmute_seq", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/cs43130.c", i32 1134, i32 34}
!165 = !{ptr @mute_seq, !166, !"mute_seq", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/cs43130.c", i32 1126, i32 34}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/cs43130.c", i32 1193, i32 3}
!169 = !{ptr @cs43130_dsd_event._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @cs43130_dsd_event._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @dsd_seq, !172, !"dsd_seq", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/cs43130.c", i32 1102, i32 34}
!173 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/cs43130.c", i32 1326, i32 3}
!175 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @cs43130_dac_event._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @cs43130_dac_event._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @pop_free_seq, !179, !"pop_free_seq", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/cs43130.c", i32 1114, i32 34}
!180 = !{ptr @pop_free_seq2, !181, !"pop_free_seq2", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/cs43130.c", i32 1120, i32 34}
!182 = !{ptr @dac_postpmu_seq, !183, !"dac_postpmu_seq", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/cs43130.c", i32 1256, i32 34}
!184 = !{ptr @dac_postpmd_seq, !185, !"dac_postpmd_seq", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/cs43130.c", i32 1262, i32 34}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/cs43130.c", i32 1404, i32 2}
!188 = !{ptr @analog_hp_widgets, !189, !"analog_hp_widgets", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/cs43130.c", i32 1403, i32 41}
!190 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/cs43130.c", i32 1364, i32 3}
!192 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @cs43130_hpin_event._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @cs43130_hpin_event._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @hpin_prepmd_seq, !196, !"hpin_prepmd_seq", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/cs43130.c", i32 1332, i32 34}
!197 = !{ptr @hpin_postpmu_seq, !198, !"hpin_postpmu_seq", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/cs43130.c", i32 1340, i32 34}
!199 = !{ptr @all_hp_routes, !200, !"all_hp_routes", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/cs43130.c", i32 1432, i32 34}
!201 = !{ptr @.str.81, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/cs43130.c", i32 1414, i32 22}
!203 = !{ptr @.str.82, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/cs43130.c", i32 1415, i32 22}
!205 = !{ptr @.str.83, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/cs43130.c", i32 1416, i32 22}
!207 = !{ptr @.str.84, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/cs43130.c", i32 1417, i32 22}
!209 = !{ptr @digital_hp_routes, !210, !"digital_hp_routes", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/cs43130.c", i32 1413, i32 40}
!211 = !{ptr @analog_hp_routes, !212, !"analog_hp_routes", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/cs43130.c", i32 1427, i32 40}
!213 = !{ptr @soc_component_dev_cs43130, !214, !"soc_component_dev_cs43130", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/cs43130.c", i32 2339, i32 40}
!215 = !{ptr @.str.85, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/cs43130.c", i32 1074, i32 2}
!217 = !{ptr @.str.86, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/cs43130.c", i32 1077, i32 2}
!219 = !{ptr @.str.88, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/cs43130.c", i32 1080, i32 2}
!221 = !{ptr @.str.89, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/cs43130.c", i32 1082, i32 2}
!223 = !{ptr @.str.90, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/cs43130.c", i32 1083, i32 2}
!225 = !{ptr @.str.92, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/cs43130.c", i32 1084, i32 2}
!227 = !{ptr @.str.94, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/cs43130.c", i32 1085, i32 2}
!229 = !{ptr @.str.96, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/cs43130.c", i32 1086, i32 2}
!231 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/cs43130.c", i32 1087, i32 2}
!233 = !{ptr @cs43130_snd_controls, !234, !"cs43130_snd_controls", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/cs43130.c", i32 1073, i32 38}
!235 = !{ptr @pcm_vol_tlv, !236, !"pcm_vol_tlv", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/cs43130.c", i32 962, i32 14}
!237 = !{ptr @pcm_ch_en_seq, !238, !"pcm_ch_en_seq", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/cs43130.c", i32 971, i32 34}
!239 = !{ptr @pcm_ch_dis_seq, !240, !"pcm_ch_dis_seq", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/cs43130.c", i32 992, i32 34}
!241 = !{ptr @pcm_ch_enum, !242, !"pcm_ch_enum", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/cs43130.c", i32 1047, i32 8}
!243 = !{ptr @.str.99, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/cs43130.c", i32 965, i32 2}
!245 = !{ptr @.str.100, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/cs43130.c", i32 966, i32 2}
!247 = !{ptr @.str.101, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/cs43130.c", i32 967, i32 2}
!249 = !{ptr @.str.102, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/cs43130.c", i32 968, i32 2}
!251 = !{ptr @pcm_ch_text, !252, !"pcm_ch_text", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/cs43130.c", i32 964, i32 27}
!253 = !{ptr @pcm_spd_enum, !254, !"pcm_spd_enum", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/cs43130.c", i32 1055, i32 8}
!255 = !{ptr @.str.103, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/cs43130.c", i32 1051, i32 2}
!257 = !{ptr @.str.104, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/cs43130.c", i32 1052, i32 2}
!259 = !{ptr @pcm_spd_texts, !260, !"pcm_spd_texts", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/cs43130.c", i32 1050, i32 27}
!261 = !{ptr @dsd_enum, !262, !"dsd_enum", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/cs43130.c", i32 1070, i32 8}
!263 = !{ptr @.str.105, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/cs43130.c", i32 1059, i32 2}
!265 = !{ptr @.str.106, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/cs43130.c", i32 1060, i32 2}
!267 = !{ptr @.str.107, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/cs43130.c", i32 1061, i32 2}
!269 = !{ptr @dsd_texts, !270, !"dsd_texts", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/cs43130.c", i32 1058, i32 27}
!271 = !{ptr @dsd_values, !272, !"dsd_values", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/cs43130.c", i32 1064, i32 27}
!273 = !{ptr @.str.108, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/cs43130.c", i32 2305, i32 36}
!275 = !{ptr @.str.109, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/cs43130.c", i32 2308, i32 3}
!277 = !{ptr @.str.110, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @cs43130_probe._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @cs43130_probe._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.111, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/cs43130.c", i32 2318, i32 17}
!282 = !{ptr @.str.112, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @cs43130_probe.__key, !284, !"__key", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/cs43130.c", i32 2323, i32 3}
!285 = !{ptr @.str.113, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @hpload_groups, !287, !"hpload_groups", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/cs43130.c", i32 1745, i32 1}
!288 = !{ptr @hpload_group, !287, !"hpload_group", i1 false, i1 false}
!289 = !{ptr @hpload_attrs, !290, !"hpload_attrs", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/cs43130.c", i32 1739, i32 26}
!291 = !{ptr @.str.114, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/cs43130.c", i32 1734, i32 8}
!293 = !{ptr @dev_attr_hpload_dc_l, !292, !"dev_attr_hpload_dc_l", i1 false, i1 false}
!294 = !{ptr @.str.115, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/cs43130.c", i32 1669, i32 36}
!296 = !{ptr @.str.116, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/cs43130.c", i32 1671, i32 36}
!298 = !{ptr @.str.117, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/cs43130.c", i32 1735, i32 8}
!300 = !{ptr @dev_attr_hpload_dc_r, !299, !"dev_attr_hpload_dc_r", i1 false, i1 false}
!301 = !{ptr @.str.118, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/cs43130.c", i32 1736, i32 8}
!303 = !{ptr @dev_attr_hpload_ac_l, !302, !"dev_attr_hpload_ac_l", i1 false, i1 false}
!304 = !{ptr @.str.119, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/cs43130.c", i32 1737, i32 8}
!306 = !{ptr @dev_attr_hpload_ac_r, !305, !"dev_attr_hpload_ac_r", i1 false, i1 false}
!307 = !{ptr @.str.120, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/cs43130.c", i32 2101, i32 3}
!309 = !{ptr @.str.121, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/cs43130.c", i32 2134, i32 2}
!311 = !{ptr @.str.122, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @cs43130_imp_meas.__UNIQUE_ID_ddebug307, !310, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!313 = !{ptr @.str.123, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/cs43130.c", i32 2136, i32 3}
!315 = !{ptr @cs43130_imp_meas.__UNIQUE_ID_ddebug308, !314, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!316 = !{ptr @.str.124, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/cs43130.c", i32 350, i32 3}
!318 = !{ptr @.str.125, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @cs43130_change_clksrc._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @cs43130_change_clksrc._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.127, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/cs43130.c", i32 374, i32 5}
!323 = !{ptr @cs43130_change_clksrc._entry.126, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @cs43130_change_clksrc._entry_ptr.128, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @cs43130_change_clksrc._entry.129, !326, !"_entry", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/cs43130.c", i32 410, i32 5}
!327 = !{ptr @cs43130_change_clksrc._entry_ptr.130, !326, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.132, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/cs43130.c", i32 426, i32 4}
!330 = !{ptr @cs43130_change_clksrc._entry.131, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @cs43130_change_clksrc._entry_ptr.133, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.135, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/cs43130.c", i32 457, i32 3}
!334 = !{ptr @cs43130_change_clksrc._entry.134, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @cs43130_change_clksrc._entry_ptr.136, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @hpload_seq1, !337, !"hpload_seq1", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/cs43130.c", i32 1855, i32 29}
!338 = !{ptr @hp_en_cal_seq, !339, !"hp_en_cal_seq", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/cs43130.c", i32 1747, i32 28}
!340 = !{ptr @hp_dc_ch_l_seq, !341, !"hp_dc_ch_l_seq", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/cs43130.c", i32 1783, i32 28}
!342 = !{ptr @hp_ac_ch_l_seq, !343, !"hp_ac_ch_l_seq", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/cs43130.c", i32 1813, i32 28}
!344 = !{ptr @hp_dc_ch_r_seq, !345, !"hp_dc_ch_r_seq", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/cs43130.c", i32 1798, i32 28}
!346 = !{ptr @hp_ac_ch_r_seq, !347, !"hp_ac_ch_r_seq", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/cs43130.c", i32 1828, i32 28}
!348 = !{ptr @hpload_seq2, !349, !"hpload_seq2", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/cs43130.c", i32 1893, i32 29}
!350 = !{ptr @hp_en_cal_seq2, !351, !"hp_en_cal_seq2", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/cs43130.c", i32 1762, i32 28}
!352 = !{ptr @hp_dc_ch_l_seq2, !353, !"hp_dc_ch_l_seq2", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/cs43130.c", i32 1793, i32 28}
!354 = !{ptr @hp_ac_ch_l_seq2, !355, !"hp_ac_ch_l_seq2", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/cs43130.c", i32 1823, i32 28}
!356 = !{ptr @hp_dc_ch_r_seq2, !357, !"hp_dc_ch_r_seq2", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/cs43130.c", i32 1808, i32 28}
!358 = !{ptr @hp_ac_ch_r_seq2, !359, !"hp_ac_ch_r_seq2", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/cs43130.c", i32 1838, i32 28}
!360 = !{ptr @.str.137, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/cs43130.c", i32 2013, i32 3}
!362 = !{ptr @.str.138, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @cs43130_hpload_proc._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @cs43130_hpload_proc._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.139, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/cs43130.c", i32 2017, i32 2}
!367 = !{ptr @cs43130_hpload_proc.__UNIQUE_ID_ddebug305, !366, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!368 = !{ptr @.str.140, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/cs43130.c", i32 2023, i32 3}
!370 = !{ptr @cs43130_hpload_proc.__UNIQUE_ID_ddebug306, !369, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!371 = !{ptr @.str.141, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/cs43130.c", i32 1968, i32 3}
!373 = !{ptr @.str.142, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @cs43130_update_hpload.__UNIQUE_ID_ddebug303, !372, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!375 = !{ptr @.str.143, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/cs43130.c", i32 1976, i32 3}
!377 = !{ptr @cs43130_update_hpload.__UNIQUE_ID_ddebug304, !376, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!378 = !{ptr @hv_seq, !379, !"hv_seq", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/cs43130.c", i32 2030, i32 34}
!380 = !{ptr @hp_dis_cal_seq, !381, !"hp_dis_cal_seq", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/cs43130.c", i32 1770, i32 28}
!382 = !{ptr @hp_dis_cal_seq2, !383, !"hp_dis_cal_seq2", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/cs43130.c", i32 1778, i32 28}
!384 = !{ptr @hp_cln_seq, !385, !"hp_cln_seq", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/cs43130.c", i32 1843, i32 28}
!386 = !{ptr @.str.144, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/cs43130.c", i32 1634, i32 2}
!388 = !{ptr @.str.145, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @cs43130_component_set_sysclk.__UNIQUE_ID_ddebug302, !387, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!390 = !{ptr @cs43130_component_set_sysclk._entry, !391, !"_entry", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/cs43130.c", i32 1643, i32 3}
!392 = !{ptr @cs43130_component_set_sysclk._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.147, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/cs43130.c", i32 1650, i32 3}
!395 = !{ptr @cs43130_component_set_sysclk._entry.146, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @cs43130_component_set_sysclk._entry_ptr.148, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.149, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/cs43130.c", i32 307, i32 3}
!399 = !{ptr @.str.150, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @cs43130_set_pll._entry, !398, !"_entry", i1 false, i1 false}
!401 = !{ptr @cs43130_set_pll._entry_ptr, !398, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.152, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/cs43130.c", i32 320, i32 3}
!404 = !{ptr @cs43130_set_pll._entry.151, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @cs43130_set_pll._entry_ptr.153, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.154, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/cs43130.c", i32 326, i32 2}
!408 = !{ptr @cs43130_set_pll.__UNIQUE_ID_ddebug296, !407, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!409 = !{ptr @.str.155, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/cs43130.c", i32 242, i32 2}
!411 = !{ptr @.str.156, !410, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @cs43130_pll_config.__UNIQUE_ID_ddebug295, !410, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!413 = !{ptr @pll_ratio_table, !414, !"pll_ratio_table", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/cs43130.c", i32 191, i32 40}
!415 = !{ptr @.str.157, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/cs43130.c", i32 1575, i32 11}
!417 = !{ptr @.str.158, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/cs43130.c", i32 1588, i32 11}
!419 = !{ptr @.str.159, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/cs43130.c", i32 1601, i32 11}
!421 = !{ptr @.str.160, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/cs43130.c", i32 1614, i32 11}
!423 = !{ptr @cs43130_dai, !424, !"cs43130_dai", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/cs43130.c", i32 1573, i32 34}
!425 = !{ptr @cs43130_pcm_ops, !426, !"cs43130_pcm_ops", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/cs43130.c", i32 1550, i32 37}
!427 = !{ptr @.str.161, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/cs43130.c", i32 1544, i32 2}
!429 = !{ptr @.str.162, !428, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @cs43130_set_sysclk.__UNIQUE_ID_ddebug301, !428, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!431 = !{ptr @.str.163, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/cs43130.c", i32 1483, i32 3}
!433 = !{ptr @.str.164, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @cs43130_pcm_set_fmt._entry, !432, !"_entry", i1 false, i1 false}
!435 = !{ptr @cs43130_pcm_set_fmt._entry_ptr, !432, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.166, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/cs43130.c", i32 1501, i32 3}
!438 = !{ptr @cs43130_pcm_set_fmt._entry.165, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @cs43130_pcm_set_fmt._entry_ptr.167, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.168, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/cs43130.c", i32 1506, i32 2}
!442 = !{ptr @cs43130_pcm_set_fmt.__UNIQUE_ID_ddebug299, !441, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!443 = !{ptr @cs43130_asp_constraints, !444, !"cs43130_asp_constraints", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/cs43130.c", i32 1440, i32 48}
!445 = !{ptr @cs43130_asp_src_rates, !446, !"cs43130_asp_src_rates", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/cs43130.c", i32 1436, i32 27}
!447 = !{ptr @.str.169, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/cs43130.c", i32 879, i32 4}
!449 = !{ptr @.str.170, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @cs43130_hw_params._entry, !448, !"_entry", i1 false, i1 false}
!451 = !{ptr @cs43130_hw_params._entry_ptr, !448, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.172, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/cs43130.c", i32 896, i32 3}
!454 = !{ptr @cs43130_hw_params._entry.171, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @cs43130_hw_params._entry_ptr.173, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.175, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/cs43130.c", i32 920, i32 3}
!458 = !{ptr @cs43130_hw_params._entry.174, !457, !"_entry", i1 false, i1 false}
!459 = !{ptr @cs43130_hw_params._entry_ptr.176, !457, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.178, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/cs43130.c", i32 926, i32 3}
!462 = !{ptr @cs43130_hw_params._entry.177, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @cs43130_hw_params._entry_ptr.179, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.180, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/soc/codecs/cs43130.c", i32 930, i32 2}
!466 = !{ptr @cs43130_hw_params.__UNIQUE_ID_ddebug297, !465, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!467 = !{ptr @.str.181, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/cs43130.c", i32 934, i32 2}
!469 = !{ptr @cs43130_hw_params.__UNIQUE_ID_ddebug298, !468, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!470 = !{ptr @cs43130_rate_table, !471, !"cs43130_rate_table", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/cs43130.c", i32 519, i32 38}
!472 = !{ptr @cs43130_bitwidth_table, !473, !"cs43130_bitwidth_table", i1 false, i1 false}
!473 = !{!"../sound/soc/codecs/cs43130.c", i32 464, i32 42}
!474 = !{ptr @cs43130_16_clk_gen, !475, !"cs43130_16_clk_gen", i1 false, i1 false}
!475 = !{!"../sound/soc/codecs/cs43130.h", i32 382, i32 37}
!476 = !{ptr @cs43130_32_clk_gen, !477, !"cs43130_32_clk_gen", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/cs43130.h", i32 404, i32 37}
!478 = !{ptr @cs43130_48_clk_gen, !479, !"cs43130_48_clk_gen", i1 false, i1 false}
!479 = !{!"../sound/soc/codecs/cs43130.h", i32 426, i32 37}
!480 = !{ptr @cs43130_64_clk_gen, !481, !"cs43130_64_clk_gen", i1 false, i1 false}
!481 = !{!"../sound/soc/codecs/cs43130.h", i32 448, i32 37}
!482 = !{ptr @cs43130_dop_ops, !483, !"cs43130_dop_ops", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/cs43130.c", i32 1558, i32 37}
!484 = !{ptr @cs43130_dop_constraints, !485, !"cs43130_dop_constraints", i1 false, i1 false}
!485 = !{!"../sound/soc/codecs/cs43130.c", i32 1457, i32 48}
!486 = !{ptr @cs43130_dop_src_rates, !487, !"cs43130_dop_src_rates", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/cs43130.c", i32 1453, i32 27}
!488 = !{ptr @cs43130_dsd_ops, !489, !"cs43130_dsd_ops", i1 false, i1 false}
!489 = !{!"../sound/soc/codecs/cs43130.c", i32 1566, i32 37}
!490 = !{ptr @.str.182, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/cs43130.c", i32 1527, i32 3}
!492 = !{ptr @.str.183, !491, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @cs43130_dsd_set_fmt._entry, !491, !"_entry", i1 false, i1 false}
!494 = !{ptr @cs43130_dsd_set_fmt._entry_ptr, !491, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.184, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/cs43130.c", i32 1531, i32 2}
!497 = !{ptr @cs43130_dsd_set_fmt.__UNIQUE_ID_ddebug300, !496, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!498 = !{ptr @.str.185, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../sound/soc/codecs/cs43130.c", i32 808, i32 3}
!500 = !{ptr @cs43130_dsd_hw_params._entry, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @cs43130_dsd_hw_params._entry_ptr, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @cs43130_of_match, !503, !"cs43130_of_match", i1 false, i1 false}
!503 = !{!"../sound/soc/codecs/cs43130.c", i32 2678, i32 34}
!504 = !{ptr @cs43130_runtime_pm, !505, !"cs43130_runtime_pm", i1 false, i1 false}
!505 = !{!"../sound/soc/codecs/cs43130.c", i32 2673, i32 32}
!506 = !{ptr @.str.186, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/cs43130.c", i32 2645, i32 3}
!508 = !{ptr @cs43130_runtime_resume._entry, !507, !"_entry", i1 false, i1 false}
!509 = !{ptr @cs43130_runtime_resume._entry_ptr, !507, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.188, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/soc/codecs/cs43130.c", i32 2657, i32 3}
!512 = !{ptr @cs43130_runtime_resume._entry.187, !511, !"_entry", i1 false, i1 false}
!513 = !{ptr @cs43130_runtime_resume._entry_ptr.189, !511, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @cs43130_i2c_id, !515, !"cs43130_i2c_id", i1 false, i1 false}
!515 = !{!"../sound/soc/codecs/cs43130.c", i32 2688, i32 35}
!516 = !{i32 1, !"wchar_size", i32 2}
!517 = !{i32 1, !"min_enum_size", i32 4}
!518 = !{i32 8, !"branch-target-enforcement", i32 0}
!519 = !{i32 8, !"sign-return-address", i32 0}
!520 = !{i32 8, !"sign-return-address-all", i32 0}
!521 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!522 = !{i32 7, !"uwtable", i32 1}
!523 = !{i32 7, !"frame-pointer", i32 2}
!524 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!525 = !{!"auto-init"}
!526 = !{i8 0, i8 2}
!527 = !{i64 2149025582, i64 2149025587, i64 2149025600, i64 2149025644, i64 2149025678, i64 2149025699}
!528 = !{i32 0, i32 33}
