; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/da7219.c_pt.bc'
source_filename = "../sound/soc/codecs/da7219.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.da7219_priv = type { ptr, ptr, ptr, i8, [3 x %struct.regulator_bulk_data], ptr, %struct.mutex, %struct.mutex, [2 x %struct.clk_hw], ptr, [2 x ptr], [2 x ptr], ptr, i32, i32, i8, i8, i8, i8, i32, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.da7219_pdata = type { i8, [2 x ptr], i32, i32, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@da7219_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1223, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PLL input clock %d below valid range\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"da7219_set_pll\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/da7219.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da7219_set_pll._entry_ptr = internal global ptr @da7219_set_pll._entry, section ".printk_index", align 4
@da7219_set_pll._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PLL input clock %d above valid range\0A\00", [58 x i8] zeroinitializer }, align 32
@da7219_set_pll._entry_ptr.7 = internal global ptr @da7219_set_pll._entry.5, section ".printk_index", align 4
@da7219_set_pll._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1263, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid PLL config\0A\00", [44 x i8] zeroinitializer }, align 32
@da7219_set_pll._entry_ptr.10 = internal global ptr @da7219_set_pll._entry.8, section ".printk_index", align 4
@__initcall__kmod_snd_soc_da7219__294_2713_da7219_i2c_driver_init6 = internal global ptr @da7219_i2c_driver_init, section ".initcall6.init", align 4
@da7219_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @da7219_i2c_probe, ptr @da7219_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da7219_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @da7219_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_da7219_i2c_driver_exit = internal global ptr @da7219_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [52 x i8] c"snd_soc_da7219.description=ASoC DA7219 Codec Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [73 x i8] c"snd_soc_da7219.author=Adam Thomson <Adam.Thomson.Opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [52 x i8] c"snd_soc_da7219.file=sound/soc/codecs/snd-soc-da7219\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [27 x i8] c"snd_soc_da7219.license=GPL\00", section ".modinfo", align 1
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da7219\00", [25 x i8] zeroinitializer }, align 32
@da7219_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da7219\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@da7219_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da7219\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@da7219_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da7219_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @da7219_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 253, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7219_reg_defaults, i32 87, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"da7219:2666:(&da7219_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@da7219_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 2669, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da7219_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@da7219_i2c_probe._entry_ptr = internal global ptr @da7219_i2c_probe._entry, section ".printk_index", align 4
@soc_component_dev_da7219 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @da7219_snd_controls, i32 64, ptr @da7219_dapm_widgets, i32 32, ptr @da7219_audio_map, i32 46, ptr @da7219_probe, ptr @da7219_remove, ptr @da7219_suspend, ptr @da7219_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7219_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@da7219_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.334, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @da7219_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.262, i64 68719477828, i32 1790, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.264, i64 68719477828, i32 1790, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -32, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@da7219_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 2686, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to register da7219 component: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@da7219_i2c_probe._entry_ptr.17 = internal global ptr @da7219_i2c_probe._entry.15, section ".printk_index", align 4
@da7219_reg_defaults = internal global { [87 x %struct.reg_default], [168 x i8] } { [87 x %struct.reg_default] [%struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 18, i32 1 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 10 }, %struct.reg_default { i32 27, i32 2 }, %struct.reg_default { i32 32, i32 16 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 32 }, %struct.reg_default { i32 42, i32 16 }, %struct.reg_default { i32 43, i32 1 }, %struct.reg_default { i32 44, i32 40 }, %struct.reg_default { i32 45, i32 64 }, %struct.reg_default { i32 46, i32 50 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 8 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 3 }, %struct.reg_default { i32 54, i32 111 }, %struct.reg_default { i32 56, i32 128 }, %struct.reg_default { i32 57, i32 1 }, %struct.reg_default { i32 58, i32 64 }, %struct.reg_default { i32 59, i32 14 }, %struct.reg_default { i32 60, i32 1 }, %struct.reg_default { i32 61, i32 2 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 136 }, %struct.reg_default { i32 66, i32 136 }, %struct.reg_default { i32 67, i32 8 }, %struct.reg_default { i32 68, i32 128 }, %struct.reg_default { i32 69, i32 111 }, %struct.reg_default { i32 70, i32 111 }, %struct.reg_default { i32 71, i32 32 }, %struct.reg_default { i32 72, i32 57 }, %struct.reg_default { i32 73, i32 57 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 98, i32 3 }, %struct.reg_default { i32 99, i32 64 }, %struct.reg_default { i32 101, i32 64 }, %struct.reg_default { i32 103, i32 64 }, %struct.reg_default { i32 105, i32 64 }, %struct.reg_default { i32 106, i32 64 }, %struct.reg_default { i32 107, i32 64 }, %struct.reg_default { i32 108, i32 64 }, %struct.reg_default { i32 110, i32 16 }, %struct.reg_default { i32 111, i32 16 }, %struct.reg_default { i32 129, i32 35 }, %struct.reg_default { i32 130, i32 147 }, %struct.reg_default { i32 145, i32 0 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 148, i32 2 }, %struct.reg_default { i32 149, i32 14 }, %struct.reg_default { i32 153, i32 0 }, %struct.reg_default { i32 154, i32 0 }, %struct.reg_default { i32 155, i32 0 }, %struct.reg_default { i32 156, i32 63 }, %struct.reg_default { i32 157, i32 63 }, %struct.reg_default { i32 158, i32 0 }, %struct.reg_default { i32 159, i32 255 }, %struct.reg_default { i32 160, i32 113 }, %struct.reg_default { i32 161, i32 0 }, %struct.reg_default { i32 162, i32 0 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 176, i32 0 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }, %struct.reg_default { i32 180, i32 0 }, %struct.reg_default { i32 181, i32 0 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 183, i32 85 }, %struct.reg_default { i32 184, i32 21 }, %struct.reg_default { i32 185, i32 0 }, %struct.reg_default { i32 186, i32 64 }, %struct.reg_default { i32 187, i32 2 }, %struct.reg_default { i32 188, i32 1 }, %struct.reg_default { i32 196, i32 0 }, %struct.reg_default { i32 197, i32 0 }, %struct.reg_default { i32 198, i32 214 }, %struct.reg_default { i32 199, i32 52 }, %struct.reg_default { i32 200, i32 10 }, %struct.reg_default { i32 201, i32 22 }, %struct.reg_default { i32 202, i32 33 }, %struct.reg_default { i32 203, i32 62 }, %struct.reg_default { i32 204, i32 1 }, %struct.reg_default { i32 253, i32 0 }], [168 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da7219-dai-wclk\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da7219-dai-bclk\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@da7219_fw_to_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1777, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Using default DAI clk names: %s, %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da7219_fw_to_pdata\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da7219_fw_to_pdata._entry_ptr = internal global ptr @da7219_fw_to_pdata._entry, section ".printk_index", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlg,micbias-lvl\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlg,mic-amp-in-sel\00", [45 x i8] zeroinitializer }, align 32
@da7219_fw_micbias_lvl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1738, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid micbias level\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7219_fw_micbias_lvl\00", [42 x i8] zeroinitializer }, align 32
@da7219_fw_micbias_lvl._entry_ptr = internal global ptr @da7219_fw_micbias_lvl._entry, section ".printk_index", align 4
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"diff\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"se_p\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"se_n\00", [27 x i8] zeroinitializer }, align 32
@da7219_fw_mic_amp_in_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1753, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid mic input type selection\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"da7219_fw_mic_amp_in_sel\00", [39 x i8] zeroinitializer }, align 32
@da7219_fw_mic_amp_in_sel._entry_ptr = internal global ptr @da7219_fw_mic_amp_in_sel._entry, section ".printk_index", align 4
@da7219_snd_controls = internal constant { [64 x %struct.snd_kcontrol_new], [768 x i8] } { [64 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_mic_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @da7219_mixin_gain_put, %union.anon.94 { ptr @da7219_mixin_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_adc_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_alc_attack_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_alc_release_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_alc_hold_time to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_alc_env_attack_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_alc_env_release_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_alc_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_alc_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_alc_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_alc_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_alc_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.94 { ptr @da7219_alc_ana_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.94 { ptr @da7219_alc_ana_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_alc_anticlip_step to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @da7219_alc_sw_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_adc_hpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_adc_audio_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_adc_voice_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_sidetone_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @da7219_volsw_locked_get, ptr @da7219_volsw_locked_put, %union.anon.94 { ptr @da7219_tonegen_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @da7219_enum_locked_get, ptr @da7219_enum_locked_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_tonegen_dtmf_key to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @da7219_volsw_locked_get, ptr @da7219_volsw_locked_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @da7219_enum_locked_get, ptr @da7219_enum_locked_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_tonegen_swg_sel to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @da7219_tonegen_freq_get, ptr @da7219_tonegen_freq_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @da7219_tonegen_freq_get, ptr @da7219_tonegen_freq_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @da7219_volsw_locked_get, ptr @da7219_volsw_locked_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_gain_ramp_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @da7219_enum_locked_get, ptr @da7219_enum_locked_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_dac_hpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_dac_audio_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_dac_voice_hpf_corner to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_dac_eq_band_tlv }, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_dac_eq_band_tlv }, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_dac_eq_band_tlv }, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_dac_eq_band_tlv }, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_dac_eq_band_tlv }, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @da7219_volsw_locked_get, ptr @da7219_volsw_locked_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_dac_softmute_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @da7219_volsw_locked_get, ptr @da7219_volsw_locked_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_dac_ng_setup_time to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_dac_ng_rampup_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_dac_ng_rampdown_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_dac_ng_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @da7219_dac_ng_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @da7219_volsw_locked_get, ptr @da7219_volsw_locked_put, %union.anon.94 { ptr @da7219_dac_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @da7219_volsw_locked_get, ptr @da7219_volsw_locked_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_cp_track_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @da7219_volsw_locked_get, ptr @da7219_volsw_locked_put, %union.anon.94 { ptr @da7219_hp_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @da7219_volsw_locked_get, ptr @da7219_volsw_locked_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }], [768 x i8] zeroinitializer }, align 32
@da7219_audio_map = internal constant { [46 x %struct.snd_soc_dapm_route], [584 x i8] } { [46 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.249, ptr null, ptr @.str.248, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr null, ptr @.str.249, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.250, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.252, ptr null, ptr @.str.251, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.257, ptr null, ptr @.str.256, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.257, ptr @.str.35, ptr @.str.252, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr null, ptr @.str.257, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr null, ptr @.str.253, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.258, ptr @.str.252, ptr @.str.257, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.258, ptr @.str.254, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.258, ptr @.str.284, ptr @.str.261, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.258, ptr @.str.285, ptr @.str.261, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr @.str.252, ptr @.str.257, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr @.str.254, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr @.str.284, ptr @.str.261, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.259, ptr @.str.285, ptr @.str.261, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr null, ptr @.str.258, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr null, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.263, ptr null, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.265, ptr @.str.252, ptr @.str.257, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.265, ptr @.str.254, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.265, ptr @.str.284, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.265, ptr @.str.285, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.252, ptr @.str.257, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.254, ptr @.str.254, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.284, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.285, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.267, ptr @.str.291, ptr @.str.265, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.268, ptr @.str.293, ptr @.str.266, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.269, ptr @.str.295, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.269, ptr @.str.297, ptr @.str.268, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.269, ptr @.str.80, ptr @.str.255, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.270, ptr @.str.295, ptr @.str.267, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.270, ptr @.str.297, ptr @.str.268, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.270, ptr @.str.80, ptr @.str.255, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.271, ptr null, ptr @.str.269, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.272, ptr null, ptr @.str.270, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.273, ptr null, ptr @.str.271, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.274, ptr null, ptr @.str.272, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.278, ptr null, ptr @.str.273, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.279, ptr null, ptr @.str.274, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.278, ptr null, ptr @.str.275, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.279, ptr null, ptr @.str.276, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.278, ptr null, ptr @.str.277, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.279, ptr null, ptr @.str.277, ptr null, %struct.snd_soc_dobj zeroinitializer }], [584 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Volume\00", [21 x i8] zeroinitializer }, align 32
@da7219_mic_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 57, i32 57, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 99, i32 99, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mixin Volume\00", [19 x i8] zeroinitializer }, align 32
@da7219_mixin_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 52, i32 52, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mixin Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 101, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mixin Gain Ramp Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 101, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mixin ZC Gain Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 101, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Capture Digital Volume\00", [41 x i8] zeroinitializer }, align 32
@da7219_adc_dig_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -8325, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 54, i32 54, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Capture Digital Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 103, i32 103, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Capture Digital Gain Ramp Switch\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 103, i32 103, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ALC Attack Rate\00", [16 x i8] zeroinitializer }, align 32
@da7219_alc_attack_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 154, i8 0, i8 0, i32 13, i32 15, ptr @da7219_alc_attack_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ALC Release Rate\00", [47 x i8] zeroinitializer }, align 32
@da7219_alc_release_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 154, i8 4, i8 4, i32 11, i32 15, ptr @da7219_alc_release_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ALC Hold Time\00", [18 x i8] zeroinitializer }, align 32
@da7219_alc_hold_time = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 155, i8 0, i8 0, i32 16, i32 15, ptr @da7219_alc_hold_time_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Envelope Attack Rate\00", [39 x i8] zeroinitializer }, align 32
@da7219_alc_env_attack_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 155, i8 4, i8 4, i32 4, i32 3, ptr @da7219_alc_env_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ALC Envelope Release Rate\00", [38 x i8] zeroinitializer }, align 32
@da7219_alc_env_release_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 155, i8 6, i8 6, i32 4, i32 3, ptr @da7219_alc_env_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Noise Threshold\00", [44 x i8] zeroinitializer }, align 32
@da7219_alc_threshold_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 156, i32 156, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ALC Min Threshold\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 157, i32 157, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ALC Max Threshold\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 158, i32 158, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Max Attenuation\00", [44 x i8] zeroinitializer }, align 32
@da7219_alc_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 159, i32 159, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ALC Max Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 159, i32 159, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALC Min Analog Volume\00", [42 x i8] zeroinitializer }, align 32
@da7219_alc_ana_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 1, i32 7, i32 7, i32 160, i32 160, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALC Max Analog Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 1, i32 7, i32 7, i32 160, i32 160, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ALC Anticlip Step\00", [46 x i8] zeroinitializer }, align 32
@da7219_alc_anticlip_step = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 161, i8 0, i8 0, i32 4, i32 3, ptr @da7219_alc_anticlip_step_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Anticlip Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 161, i32 161, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC HPF Mode\00", [19 x i8] zeroinitializer }, align 32
@da7219_adc_hpf_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 56, i8 0, i8 0, i32 3, i32 136, ptr @da7219_hpf_mode_txt, ptr @da7219_hpf_mode_val, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC HPF Corner Audio\00", [43 x i8] zeroinitializer }, align 32
@da7219_adc_audio_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 56, i8 4, i8 4, i32 4, i32 3, ptr @da7219_audio_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC HPF Corner Voice\00", [43 x i8] zeroinitializer }, align 32
@da7219_adc_voice_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 56, i8 0, i8 0, i32 8, i32 7, ptr @da7219_voice_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sidetone Volume\00", [16 x i8] zeroinitializer }, align 32
@da7219_sidetone_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4200, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 14, i32 14, i32 59, i32 59, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sidetone Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ToneGen Volume\00", [17 x i8] zeroinitializer }, align 32
@da7219_tonegen_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4500, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 181, i32 181, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ToneGen DTMF Key\00", [47 x i8] zeroinitializer }, align 32
@da7219_tonegen_dtmf_key = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 180, i8 0, i8 0, i32 16, i32 15, ptr @da7219_tonegen_dtmf_key_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ToneGen DTMF Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 180, i32 180, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ToneGen Sinewave Gen Type\00", [38 x i8] zeroinitializer }, align 32
@da7219_tonegen_swg_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 181, i8 0, i8 0, i32 4, i32 3, ptr @da7219_tonegen_swg_sel_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ToneGen Sinewave1 Freq\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 65535, i32 65535, i32 183, i32 183, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ToneGen Sinewave2 Freq\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 65535, i32 65535, i32 185, i32 185, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ToneGen On Time\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 187, i32 187, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ToneGen Off Time\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 188, i32 188, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Gain Ramp Rate\00", [17 x i8] zeroinitializer }, align 32
@da7219_gain_ramp_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 146, i8 0, i8 0, i32 4, i32 3, ptr @da7219_gain_ramp_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC HPF Mode\00", [19 x i8] zeroinitializer }, align 32
@da7219_dac_hpf_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 0, i8 0, i32 3, i32 136, ptr @da7219_hpf_mode_txt, ptr @da7219_hpf_mode_val, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC HPF Corner Audio\00", [43 x i8] zeroinitializer }, align 32
@da7219_dac_audio_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 4, i8 4, i32 4, i32 3, ptr @da7219_audio_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC HPF Corner Voice\00", [43 x i8] zeroinitializer }, align 32
@da7219_dac_voice_hpf_corner = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 0, i8 0, i32 8, i32 7, ptr @da7219_voice_hpf_corner_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC EQ Band1 Volume\00", [44 x i8] zeroinitializer }, align 32
@da7219_dac_eq_band_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1050, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 65, i32 65, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC EQ Band2 Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 65, i32 65, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC EQ Band3 Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 66, i32 66, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC EQ Band4 Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 66, i32 66, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC EQ Band5 Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 67, i32 67, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC EQ Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 67, i32 67, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC Soft Mute Rate\00", [45 x i8] zeroinitializer }, align 32
@da7219_dac_softmute_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 64, i8 4, i8 4, i32 7, i32 7, ptr @da7219_dac_softmute_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Soft Mute Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC NG Setup Time\00", [46 x i8] zeroinitializer }, align 32
@da7219_dac_ng_setup_time = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 175, i8 0, i8 0, i32 4, i32 3, ptr @da7219_dac_ng_setup_time_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC NG Rampup Rate\00", [45 x i8] zeroinitializer }, align 32
@da7219_dac_ng_rampup_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 175, i8 2, i8 2, i32 2, i32 1, ptr @da7219_dac_ng_rampup_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC NG Rampdown Rate\00", [43 x i8] zeroinitializer }, align 32
@da7219_dac_ng_rampdown_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 175, i8 3, i8 3, i32 2, i32 1, ptr @da7219_dac_ng_rampdown_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC NG Off Threshold\00", [43 x i8] zeroinitializer }, align 32
@da7219_dac_ng_threshold_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10200, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 176, i32 176, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC NG On Threshold\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 177, i32 177, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC NG Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 178, i32 178, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Playback Digital Volume\00", [40 x i8] zeroinitializer }, align 32
@da7219_dac_dig_gain_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 7, i32 1, i32 8, i32 -9999999, i32 65536, i32 8, i32 127, i32 1, i32 8, i32 -7725, i32 75], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 69, i32 70, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Playback Digital Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 105, i32 106, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Playback Digital Gain Ramp Switch\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 105, i32 106, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Charge Pump Track Mode\00", [41 x i8] zeroinitializer }, align 32
@da7219_cp_track_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 71, i8 4, i8 4, i32 3, i32 3, ptr @da7219_cp_track_mode_txt, ptr @da7219_cp_track_mode_val, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Charge Pump Threshold\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 149, i32 149, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@da7219_hp_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5700, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 72, i32 73, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 108, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Headphone Gain Ramp Switch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 108, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Headphone ZC Gain Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 108, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@da7219_alc_calib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 353, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ALC auto calibration failed with overflow\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da7219_alc_calib\00", [47 x i8] zeroinitializer }, align 32
@da7219_alc_calib._entry_ptr = internal global ptr @da7219_alc_calib._entry, section ".printk_index", align 4
@da7219_alc_attack_rate_txt = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155], [44 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7.33/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"14.66/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"29.32/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"58.64/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"117.3/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"234.6/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"469.1/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"938.2/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1876/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3753/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7506/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"15012/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"30024/fs\00", [23 x i8] zeroinitializer }, align 32
@da7219_alc_release_rate_txt = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166], [52 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"28.66/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"57.33/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"114.6/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"229.3/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"458.6/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"917.1/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1834/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3668/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7337/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"14674/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"29348/fs\00", [23 x i8] zeroinitializer }, align 32
@da7219_alc_hold_time_txt = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182], [32 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"62/fs\00", [26 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"124/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"248/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"496/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"992/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1984/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3968/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7936/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"15872/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"31744/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"63488/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"126976/fs\00", [22 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"253952/fs\00", [22 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"507904/fs\00", [22 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1015808/fs\00", [21 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2031616/fs\00", [21 x i8] zeroinitializer }, align 32
@da7219_alc_env_rate_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186], [16 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/4\00", [28 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1/16\00", [27 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1/256\00", [26 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1/65536\00", [24 x i8] zeroinitializer }, align 32
@da7219_alc_anticlip_step_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190], [16 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.034dB/fs\00", [21 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.068dB/fs\00", [21 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.136dB/fs\00", [21 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.272dB/fs\00", [21 x i8] zeroinitializer }, align 32
@da7219_hpf_mode_txt = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.191, ptr @.str.192, ptr @.str.193], [20 x i8] zeroinitializer }, align 32
@da7219_hpf_mode_val = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 128, i32 136], [20 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Audio\00", [26 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Voice\00", [26 x i8] zeroinitializer }, align 32
@da7219_audio_hpf_corner_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197], [16 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2Hz\00", [28 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4Hz\00", [28 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8Hz\00", [28 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"16Hz\00", [27 x i8] zeroinitializer }, align 32
@da7219_voice_hpf_corner_txt = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205], [32 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.5Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"25Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"50Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"150Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"400Hz\00", [26 x i8] zeroinitializer }, align 32
@da7219_tonegen_dtmf_key_txt = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221], [32 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"7\00", [30 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"9\00", [30 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"#\00", [30 x i8] zeroinitializer }, align 32
@da7219_tonegen_swg_sel_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225], [16 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Sum\00", [28 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SWG1\00", [27 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SWG2\00", [27 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SWG1_1-Cos\00", [21 x i8] zeroinitializer }, align 32
@da7219_gain_ramp_rate_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229], [16 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Nominal Rate * 8\00", [47 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Nominal Rate\00", [19 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Nominal Rate / 8\00", [47 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Nominal Rate / 16\00", [46 x i8] zeroinitializer }, align 32
@da7219_dac_softmute_rate_txt = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236], [36 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1 Sample\00", [23 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"2 Samples\00", [22 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"4 Samples\00", [22 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"8 Samples\00", [22 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"16 Samples\00", [21 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"32 Samples\00", [21 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"64 Samples\00", [21 x i8] zeroinitializer }, align 32
@da7219_dac_ng_setup_time_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240], [16 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"256 Samples\00", [20 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"512 Samples\00", [20 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1024 Samples\00", [19 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"2048 Samples\00", [19 x i8] zeroinitializer }, align 32
@da7219_dac_ng_rampup_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.241, ptr @.str.242], [24 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0.22ms/dB\00", [22 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0.0138ms/dB\00", [20 x i8] zeroinitializer }, align 32
@da7219_dac_ng_rampdown_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.243, ptr @.str.244], [24 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0.88ms/dB\00", [22 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"14.08ms/dB\00", [21 x i8] zeroinitializer }, align 32
@da7219_cp_track_mode_txt = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.245, ptr @.str.246, ptr @.str.247], [20 x i8] zeroinitializer }, align 32
@da7219_cp_track_mode_val = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 3], [20 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Largest Volume\00", [17 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Volume\00", [21 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Signal Magnitude\00", [47 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MIC\00", [28 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Mic PGA\00", [24 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mixin PGA\00", [22 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TONE\00", [27 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tone Generator\00", [17 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sidetone Filter\00", [16 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mixer In Supply\00", [16 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mixer In\00", [23 x i8] zeroinitializer }, align 32
@da7219_mixin_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.283 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Out DAIL Mux\00", [19 x i8] zeroinitializer }, align 32
@da7219_out_dail_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.258, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_out_dail_sel to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Out DAIR Mux\00", [19 x i8] zeroinitializer }, align 32
@da7219_out_dair_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.259, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_out_dair_sel to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAI\00", [28 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAIOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAIIN\00", [26 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Out DACL Mux\00", [19 x i8] zeroinitializer }, align 32
@da7219_out_dacl_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.265, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_out_dacl_sel to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Out DACR Mux\00", [19 x i8] zeroinitializer }, align 32
@da7219_out_dacr_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @da7219_out_dacr_sel to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mixer Out FilterL\00", [46 x i8] zeroinitializer }, align 32
@da7219_mixout_l_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.291, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.292 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mixer Out FilterR\00", [46 x i8] zeroinitializer }, align 32
@da7219_mixout_r_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.293, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.294 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ST Mixer Out FilterL\00", [43 x i8] zeroinitializer }, align 32
@da7219_st_out_filtl_mix_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.295, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.296 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.297, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.298 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.299 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ST Mixer Out FilterR\00", [43 x i8] zeroinitializer }, align 32
@da7219_st_out_filtr_mix_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.295, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.300 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.297, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.301 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.302 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mixout Left PGA\00", [16 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mixout Right PGA\00", [47 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headphone Left PGA\00", [45 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone Right PGA\00", [44 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Pre Power Gain Ramp\00", [44 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Post Power Gain Ramp\00", [43 x i8] zeroinitializer }, align 32
@da7219_dapm_widgets = internal constant { [32 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1440 x i8] } { [32 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.248, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.249, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.250, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @da7219_mic_pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.251, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @da7219_settling_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.252, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 103, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.253, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.254, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 180, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.255, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.256, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.257, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7219_mixin_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.258, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7219_out_dail_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.259, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7219_out_dair_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.260, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 44, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @da7219_dai_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.261, ptr @.str.262, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 45, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.263, ptr @.str.264, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.265, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7219_out_dacl_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.266, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7219_out_dacr_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.267, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7219_mixout_l_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.268, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da7219_mixout_r_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.269, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @da7219_st_out_filtl_mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.270, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @da7219_st_out_filtr_mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.271, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 105, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @da7219_settling_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.272, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 106, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @da7219_settling_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.273, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 110, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @da7219_mixout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.274, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 111, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @da7219_mixout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.275, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 107, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 10, ptr @da7219_settling_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.276, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 108, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 10, ptr @da7219_settling_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.277, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 71, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @da7219_settling_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.278, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.279, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 17, ptr @.str.280, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @da7219_gain_ramp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 18, ptr @.str.281, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @da7219_gain_ramp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1440 x i8] zeroinitializer }, align 32
@.compoundliteral.283 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@da7219_out_dail_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 0, i8 0, i32 4, i32 3, ptr @da7219_out_sel_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da7219_out_sel_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.252, ptr @.str.254, ptr @.str.284, ptr @.str.285], [16 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAIL\00", [27 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAIR\00", [27 x i8] zeroinitializer }, align 32
@da7219_out_dair_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 4, i8 4, i32 4, i32 3, ptr @da7219_out_sel_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da7219_dai_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.287, ptr @.str.2, i32 809, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable DAI clks\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da7219_dai_event\00", [47 x i8] zeroinitializer }, align 32
@da7219_dai_event._entry_ptr = internal global ptr @da7219_dai_event._entry, section ".printk_index", align 4
@da7219_dai_event._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.287, ptr @.str.2, i32 841, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SRM failed to lock\0A\00", [44 x i8] zeroinitializer }, align 32
@da7219_dai_event._entry_ptr.290 = internal global ptr @da7219_dai_event._entry.288, section ".printk_index", align 4
@da7219_out_dacl_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 0, i8 0, i32 4, i32 3, ptr @da7219_out_sel_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da7219_out_dacr_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 4, i8 4, i32 4, i32 3, ptr @da7219_out_sel_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACL Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.292 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACR Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.294 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Out FilterL Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.296 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Out FilterR Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.298 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.299 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.300 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 61, i32 61, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.301 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 61, i32 61, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.302 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 61, i32 61, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@da7219_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.303 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&da7219->ctrl_lock\00", [45 x i8] zeroinitializer }, align 32
@da7219_probe.__key.304 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.305 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&da7219->pll_lock\00", [46 x i8] zeroinitializer }, align 32
@da7219_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.307, ptr @.str.2, i32 2495, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read chip revision: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da7219_probe\00", [19 x i8] zeroinitializer }, align 32
@da7219_probe._entry_ptr = internal global ptr @da7219_probe._entry, section ".printk_index", align 4
@da7219_rev_aa_patch = internal global { [1 x %struct.reg_sequence], [20 x i8] } { [1 x %struct.reg_sequence] [%struct.reg_sequence { i32 50, i32 8, i32 0 }], [20 x i8] zeroinitializer }, align 32
@da7219_probe._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.307, ptr @.str.2, i32 2505, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register AA patch: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@da7219_probe._entry_ptr.310 = internal global ptr @da7219_probe._entry.308, section ".printk_index", align 4
@.str.311 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@da7219_handle_supplies._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.313, ptr @.str.2, i32 1865, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get supplies\00", [41 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da7219_handle_supplies\00", [41 x i8] zeroinitializer }, align 32
@da7219_handle_supplies._entry_ptr = internal global ptr @da7219_handle_supplies._entry, section ".printk_index", align 4
@da7219_handle_supplies._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.313, ptr @.str.2, i32 1876, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid VDDIO voltage\0A\00", [41 x i8] zeroinitializer }, align 32
@da7219_handle_supplies._entry_ptr.316 = internal global ptr @da7219_handle_supplies._entry.314, section ".printk_index", align 4
@da7219_handle_supplies._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.313, ptr @.str.2, i32 1883, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable supplies\00", [38 x i8] zeroinitializer }, align 32
@da7219_handle_supplies._entry_ptr.319 = internal global ptr @da7219_handle_supplies._entry.317, section ".printk_index", align 4
@.str.320 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VDD\00", [28 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDDMIC\00", [25 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VDDIO\00", [26 x i8] zeroinitializer }, align 32
@da7219_register_dai_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.323, ptr @.str.324, ptr @.str.2, i32 2168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid clock index\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"da7219_register_dai_clks\00", [39 x i8] zeroinitializer }, align 32
@da7219_register_dai_clks._entry_ptr = internal global ptr @da7219_register_dai_clks._entry, section ".printk_index", align 4
@da7219_dai_clk_ops = internal constant { [2 x %struct.clk_ops], [56 x i8] } { [2 x %struct.clk_ops] [%struct.clk_ops { ptr @da7219_wclk_prepare, ptr @da7219_wclk_unprepare, ptr @da7219_wclk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7219_wclk_recalc_rate, ptr @da7219_wclk_round_rate, ptr null, ptr null, ptr null, ptr @da7219_wclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7219_bclk_recalc_rate, ptr @da7219_bclk_round_rate, ptr null, ptr null, ptr null, ptr @da7219_bclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [56 x i8] zeroinitializer }, align 32
@da7219_register_dai_clks._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.324, ptr @.str.2, i32 2181, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register %s: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@da7219_register_dai_clks._entry_ptr.327 = internal global ptr @da7219_register_dai_clks._entry.325, section ".printk_index", align 4
@.str.328 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@da7219_register_dai_clks._entry.329 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.330, ptr @.str.324, ptr @.str.2, i32 2206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register clock provider\0A\00", [61 x i8] zeroinitializer }, align 32
@da7219_register_dai_clks._entry_ptr.331 = internal global ptr @da7219_register_dai_clks._entry.329, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@da7219_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.332, ptr @.str.333, ptr @.str.2, i32 1813, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to enable mclk\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7219_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@da7219_set_bias_level._entry_ptr = internal global ptr @da7219_set_bias_level._entry, section ".printk_index", align 4
@.str.334 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da7219-hifi\00", [20 x i8] zeroinitializer }, align 32
@da7219_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @da7219_set_dai_sysclk, ptr @da7219_set_dai_pll, ptr null, ptr null, ptr @da7219_set_dai_fmt, ptr null, ptr @da7219_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7219_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@da7219_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.336, ptr @.str.2, i32 1169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported MCLK value %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7219_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@da7219_set_dai_sysclk._entry_ptr = internal global ptr @da7219_set_dai_sysclk._entry, section ".printk_index", align 4
@da7219_set_dai_sysclk._entry.337 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.336, ptr @.str.2, i32 1186, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown clock source %d\0A\00", [39 x i8] zeroinitializer }, align 32
@da7219_set_dai_sysclk._entry_ptr.339 = internal global ptr @da7219_set_dai_sysclk._entry.337, section ".printk_index", align 4
@da7219_set_dai_sysclk._entry.340 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.341, ptr @.str.336, ptr @.str.2, i32 1198, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set clock rate %d\0A\00", [35 x i8] zeroinitializer }, align 32
@da7219_set_dai_sysclk._entry_ptr.342 = internal global ptr @da7219_set_dai_sysclk._entry.340, section ".printk_index", align 4
@da7219_set_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.343, ptr @.str.344, ptr @.str.2, i32 1445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid number of slots, max = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"da7219_set_dai_tdm_slot\00", [40 x i8] zeroinitializer }, align 32
@da7219_set_dai_tdm_slot._entry_ptr = internal global ptr @da7219_set_dai_tdm_slot._entry, section ".printk_index", align 4
@da7219_set_dai_tdm_slot._entry.345 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.346, ptr @.str.344, ptr @.str.2, i32 1455, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid frame offset %d\0A\00", [39 x i8] zeroinitializer }, align 32
@da7219_set_dai_tdm_slot._entry_ptr.347 = internal global ptr @da7219_set_dai_tdm_slot._entry.345, section ".printk_index", align 4
@da7219_set_dai_tdm_slot._entry.348 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.349, ptr @.str.344, ptr @.str.2, i32 1473, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set TDM BCLK rate %lu: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@da7219_set_dai_tdm_slot._entry_ptr.350 = internal global ptr @da7219_set_dai_tdm_slot._entry.348, section ".printk_index", align 4
@da7219_set_dai_tdm_slot._entry.351 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.352, ptr @.str.344, ptr @.str.2, i32 1481, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to set TDM BCLKs per WCLK %d: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@da7219_set_dai_tdm_slot._entry_ptr.353 = internal global ptr @da7219_set_dai_tdm_slot._entry.351, section ".printk_index", align 4
@da7219_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.355, ptr @.str.2, i32 1585, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Invalid number of channels, only 1 to %d supported\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da7219_hw_params\00", [47 x i8] zeroinitializer }, align 32
@da7219_hw_params._entry_ptr = internal global ptr @da7219_hw_params._entry, section ".printk_index", align 4
@da7219_hw_params._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.357, ptr @.str.355, ptr @.str.2, i32 1595, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set WCLK SR %lu: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@da7219_hw_params._entry_ptr.358 = internal global ptr @da7219_hw_params._entry.356, section ".printk_index", align 4
@da7219_hw_params._entry.359 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.355, ptr @.str.2, i32 1602, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set SR %lu: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@da7219_hw_params._entry_ptr.361 = internal global ptr @da7219_hw_params._entry.359, section ".printk_index", align 4
@da7219_hw_params._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.355, ptr @.str.2, i32 1631, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BCLK rate mismatch against frame size\00", [58 x i8] zeroinitializer }, align 32
@da7219_hw_params._entry_ptr.364 = internal global ptr @da7219_hw_params._entry.362, section ".printk_index", align 4
@da7219_hw_params._entry.365 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.366, ptr @.str.355, ptr @.str.2, i32 1639, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set BCLK rate %lu: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@da7219_hw_params._entry_ptr.367 = internal global ptr @da7219_hw_params._entry.365, section ".printk_index", align 4
@da7219_hw_params._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.369, ptr @.str.355, ptr @.str.2, i32 1647, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set BCLKs per WCLK %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@da7219_hw_params._entry_ptr.370 = internal global ptr @da7219_hw_params._entry.368, section ".printk_index", align 4
@switch.table.da7219_wclk_recalc_rate = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 8000, i32 11025, i32 12000, i32 0, i32 16000, i32 22050, i32 24000, i32 0, i32 32000, i32 44100, i32 48000, i32 0, i32 0, i32 88200, i32 96000], [36 x i8] zeroinitializer }, align 32
@switch.table.da7219_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 8, i32 4, i32 12], [44 x i8] zeroinitializer }, align 32
@switch.table.da7219_set_dai_fmt.371 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 4, i32 12, i32 0, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.da7219_set_dai_tdm_slot = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.da7219_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 8, i32 0, i32 12], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.372 = internal global [8 x i64] [i64 6, i64 32, i64 1600, i64 1800, i64 2000, i64 2200, i64 2400, i64 2600]
@__sancov_gen_cov_switch_values.373 = internal global [23 x i64] [i64 21, i64 32, i64 6, i64 8, i64 10, i64 12, i64 13, i64 14, i64 15, i64 19, i64 37, i64 47, i64 80, i64 81, i64 163, i64 164, i64 180, i64 192, i64 193, i64 194, i64 195, i64 205, i64 224]
@__sancov_gen_cov_switch_values.374 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.375 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.376 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.377 = internal global [4 x i64] [i64 2, i64 32, i64 110, i64 111]
@__sancov_gen_cov_switch_values.378 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.379 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.380 = internal global [13 x i64] [i64 11, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.381 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.382 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.383 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.384 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.385 = internal global [13 x i64] [i64 11, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1222, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1241, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1263, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant [18 x i8] c"da7219_i2c_driver\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2702, i32 26 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2704, i32 11 }
@___asan_gen_.422 = private unnamed_addr constant [16 x i8] c"da7219_of_match\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1706, i32 34 }
@___asan_gen_.425 = private unnamed_addr constant [14 x i8] c"da7219_i2c_id\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2696, i32 35 }
@___asan_gen_.428 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [21 x i8] c"da7219_regmap_config\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2425, i32 35 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2666, i32 19 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2669, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [25 x i8] c"soc_component_dev_da7219\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2629, i32 46 }
@___asan_gen_.449 = private unnamed_addr constant [11 x i8] c"da7219_dai\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1678, i32 34 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2686, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c"da7219_reg_defaults\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2305, i32 27 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1768, i32 56 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1770, i32 46 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1771, i32 46 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1772, i32 45 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1775, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1779, i32 36 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1784, i32 40 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1738, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1746, i32 19 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1748, i32 26 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1750, i32 26 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1753, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant [20 x i8] c"da7219_snd_controls\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 471, i32 38 }
@___asan_gen_.521 = private unnamed_addr constant [17 x i8] c"da7219_audio_map\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1103, i32 40 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 473, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant [20 x i8] c"da7219_mic_gain_tlv\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 41, i32 14 }
@___asan_gen_.530 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 476, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 481, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [22 x i8] c"da7219_mixin_gain_tlv\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 42, i32 14 }
@___asan_gen_.541 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 486, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 489, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 492, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 497, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [24 x i8] c"da7219_adc_dig_gain_tlv\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 43, i32 14 }
@___asan_gen_.560 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 501, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 504, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 509, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [23 x i8] c"da7219_alc_attack_rate\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 69, i32 30 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 510, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant [24 x i8] c"da7219_alc_release_rate\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 78, i32 30 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 511, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant [21 x i8] c"da7219_alc_hold_time\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 88, i32 30 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 512, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant [27 x i8] c"da7219_alc_env_attack_rate\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 96, i32 30 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 513, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant [28 x i8] c"da7219_alc_env_release_rate\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 100, i32 30 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 514, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant [25 x i8] c"da7219_alc_threshold_tlv\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 44, i32 14 }
@___asan_gen_.605 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 517, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 520, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 523, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant [20 x i8] c"da7219_alc_gain_tlv\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 45, i32 14 }
@___asan_gen_.620 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 526, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 529, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant [24 x i8] c"da7219_alc_ana_gain_tlv\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 46, i32 14 }
@___asan_gen_.631 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 533, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 537, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant [25 x i8] c"da7219_alc_anticlip_step\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 108, i32 30 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 538, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 541, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 546, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant [20 x i8] c"da7219_adc_hpf_mode\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 132, i32 30 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 547, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant [28 x i8] c"da7219_adc_audio_hpf_corner\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 146, i32 30 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 548, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant [28 x i8] c"da7219_adc_voice_hpf_corner\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 162, i32 30 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 551, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant [25 x i8] c"da7219_sidetone_gain_tlv\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 47, i32 14 }
@___asan_gen_.674 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 554, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 559, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant [24 x i8] c"da7219_tonegen_gain_tlv\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 48, i32 14 }
@___asan_gen_.685 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 563, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant [24 x i8] c"da7219_tonegen_dtmf_key\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 179, i32 30 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 565, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 569, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant [23 x i8] c"da7219_tonegen_swg_sel\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 187, i32 30 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 571, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 574, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 577, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 581, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 586, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant [22 x i8] c"da7219_gain_ramp_rate\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 120, i32 30 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 589, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant [20 x i8] c"da7219_dac_hpf_mode\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 137, i32 30 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 591, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [28 x i8] c"da7219_dac_audio_hpf_corner\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 152, i32 30 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 592, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant [28 x i8] c"da7219_dac_voice_hpf_corner\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 168, i32 30 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 595, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant [23 x i8] c"da7219_dac_eq_band_tlv\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 51, i32 14 }
@___asan_gen_.748 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 598, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 601, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 604, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 607, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 610, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 616, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant [25 x i8] c"da7219_dac_softmute_rate\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 197, i32 30 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 617, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 623, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant [25 x i8] c"da7219_dac_ng_setup_time\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 206, i32 30 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 624, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant [26 x i8] c"da7219_dac_ng_rampup_rate\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 216, i32 30 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 625, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant [28 x i8] c"da7219_dac_ng_rampdown_rate\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 226, i32 30 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 626, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant [28 x i8] c"da7219_dac_ng_threshold_tlv\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 59, i32 14 }
@___asan_gen_.803 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 630, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 634, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 638, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant [24 x i8] c"da7219_dac_dig_gain_tlv\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 53, i32 14 }
@___asan_gen_.818 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 643, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 647, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 652, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant [21 x i8] c"da7219_cp_track_mode\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 242, i32 30 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 653, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 658, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant [19 x i8] c"da7219_hp_gain_tlv\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 60, i32 14 }
@___asan_gen_.843 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 663, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 667, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 670, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 352, i32 3 }
@___asan_gen_.865 = private unnamed_addr constant [27 x i8] c"da7219_alc_attack_rate_txt\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 63, i32 27 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 64, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 64, i32 13 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 64, i32 25 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 64, i32 37 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 64, i32 49 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 64, i32 61 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 65, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 65, i32 14 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 65, i32 26 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 65, i32 37 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 65, i32 48 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 65, i32 59 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 66, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant [28 x i8] c"da7219_alc_release_rate_txt\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 73, i32 27 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 74, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 74, i32 14 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 74, i32 26 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 74, i32 38 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 74, i32 50 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 74, i32 62 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 75, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 75, i32 13 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 75, i32 24 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 75, i32 35 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 75, i32 47 }
@___asan_gen_.943 = private unnamed_addr constant [25 x i8] c"da7219_alc_hold_time_txt\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 82, i32 27 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 83, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 83, i32 11 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 83, i32 21 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 83, i32 31 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 83, i32 41 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 83, i32 51 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 83, i32 62 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 84, i32 2 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 84, i32 13 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 84, i32 25 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 84, i32 37 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 84, i32 49 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 85, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 85, i32 15 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 85, i32 28 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 85, i32 42 }
@___asan_gen_.994 = private unnamed_addr constant [24 x i8] c"da7219_alc_env_rate_txt\00", align 1
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 92, i32 27 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 93, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 93, i32 9 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 93, i32 17 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 93, i32 26 }
@___asan_gen_.1009 = private unnamed_addr constant [29 x i8] c"da7219_alc_anticlip_step_txt\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 104, i32 27 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 105, i32 2 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 105, i32 16 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 105, i32 30 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 105, i32 44 }
@___asan_gen_.1024 = private unnamed_addr constant [20 x i8] c"da7219_hpf_mode_txt\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 124, i32 27 }
@___asan_gen_.1027 = private unnamed_addr constant [20 x i8] c"da7219_hpf_mode_val\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 128, i32 27 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 125, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 125, i32 14 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 125, i32 23 }
@___asan_gen_.1039 = private unnamed_addr constant [28 x i8] c"da7219_audio_hpf_corner_txt\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 142, i32 27 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 143, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 143, i32 9 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 143, i32 16 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 143, i32 23 }
@___asan_gen_.1054 = private unnamed_addr constant [28 x i8] c"da7219_voice_hpf_corner_txt\00", align 1
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 158, i32 27 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 159, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 159, i32 11 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 159, i32 19 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 159, i32 27 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 159, i32 36 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 159, i32 45 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 159, i32 54 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 159, i32 63 }
@___asan_gen_.1081 = private unnamed_addr constant [28 x i8] c"da7219_tonegen_dtmf_key_txt\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 174, i32 27 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 2 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 7 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 12 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 17 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 22 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 27 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 32 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 37 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 42 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 47 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 52 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 57 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 62 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 175, i32 67 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 176, i32 2 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 176, i32 7 }
@___asan_gen_.1132 = private unnamed_addr constant [27 x i8] c"da7219_tonegen_swg_sel_txt\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 183, i32 27 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 184, i32 2 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 184, i32 9 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 184, i32 17 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 184, i32 25 }
@___asan_gen_.1147 = private unnamed_addr constant [26 x i8] c"da7219_gain_ramp_rate_txt\00", align 1
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 115, i32 27 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 116, i32 2 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 116, i32 22 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 116, i32 38 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 117, i32 2 }
@___asan_gen_.1162 = private unnamed_addr constant [29 x i8] c"da7219_dac_softmute_rate_txt\00", align 1
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 192, i32 27 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 193, i32 2 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 193, i32 14 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 193, i32 27 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 193, i32 40 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 193, i32 53 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 194, i32 2 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 194, i32 16 }
@___asan_gen_.1186 = private unnamed_addr constant [29 x i8] c"da7219_dac_ng_setup_time_txt\00", align 1
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 202, i32 27 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 203, i32 2 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 203, i32 17 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 203, i32 32 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 203, i32 48 }
@___asan_gen_.1201 = private unnamed_addr constant [25 x i8] c"da7219_dac_ng_rampup_txt\00", align 1
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 212, i32 27 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 213, i32 2 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 213, i32 15 }
@___asan_gen_.1210 = private unnamed_addr constant [27 x i8] c"da7219_dac_ng_rampdown_txt\00", align 1
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 222, i32 27 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 223, i32 2 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 223, i32 15 }
@___asan_gen_.1219 = private unnamed_addr constant [25 x i8] c"da7219_cp_track_mode_txt\00", align 1
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 233, i32 27 }
@___asan_gen_.1222 = private unnamed_addr constant [25 x i8] c"da7219_cp_track_mode_val\00", align 1
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 237, i32 27 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 234, i32 2 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 234, i32 20 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 234, i32 34 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 953, i32 2 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 958, i32 2 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 961, i32 2 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 964, i32 2 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 969, i32 2 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 973, i32 2 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 974, i32 2 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 978, i32 2 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 982, i32 2 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 987, i32 2 }
@___asan_gen_.1264 = private unnamed_addr constant [22 x i8] c"da7219_mixin_controls\00", align 1
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 725, i32 38 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 992, i32 2 }
@___asan_gen_.1270 = private unnamed_addr constant [24 x i8] c"da7219_out_dail_sel_mux\00", align 1
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 690, i32 38 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 994, i32 2 }
@___asan_gen_.1276 = private unnamed_addr constant [24 x i8] c"da7219_out_dair_sel_mux\00", align 1
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 699, i32 38 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 998, i32 2 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1003, i32 2 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1005, i32 2 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1008, i32 2 }
@___asan_gen_.1297 = private unnamed_addr constant [24 x i8] c"da7219_out_dacl_sel_mux\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 708, i32 38 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1010, i32 2 }
@___asan_gen_.1303 = private unnamed_addr constant [24 x i8] c"da7219_out_dacr_sel_mux\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 717, i32 38 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1014, i32 2 }
@___asan_gen_.1309 = private unnamed_addr constant [25 x i8] c"da7219_mixout_l_controls\00", align 1
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 731, i32 38 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1017, i32 2 }
@___asan_gen_.1315 = private unnamed_addr constant [25 x i8] c"da7219_mixout_r_controls\00", align 1
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 737, i32 38 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1022, i32 2 }
@___asan_gen_.1321 = private unnamed_addr constant [33 x i8] c"da7219_st_out_filtl_mix_controls\00", align 1
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 754, i32 38 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1025, i32 2 }
@___asan_gen_.1327 = private unnamed_addr constant [33 x i8] c"da7219_st_out_filtr_mix_controls\00", align 1
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 758, i32 38 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1030, i32 2 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1034, i32 2 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1040, i32 2 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1044, i32 2 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1048, i32 2 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1052, i32 2 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1058, i32 2 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1064, i32 2 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1065, i32 2 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1068, i32 2 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1069, i32 2 }
@___asan_gen_.1363 = private unnamed_addr constant [20 x i8] c"da7219_dapm_widgets\00", align 1
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 951, i32 41 }
@___asan_gen_.1366 = private unnamed_addr constant [21 x i8] c".compoundliteral.283\00", align 1
@___asan_gen_.1367 = private unnamed_addr constant [20 x i8] c"da7219_out_dail_sel\00", align 1
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 684, i32 30 }
@___asan_gen_.1370 = private unnamed_addr constant [19 x i8] c"da7219_out_sel_txt\00", align 1
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 680, i32 27 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 681, i32 27 }
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 681, i32 35 }
@___asan_gen_.1379 = private unnamed_addr constant [20 x i8] c"da7219_out_dair_sel\00", align 1
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 693, i32 30 }
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 808, i32 6 }
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 841, i32 4 }
@___asan_gen_.1397 = private unnamed_addr constant [20 x i8] c"da7219_out_dacl_sel\00", align 1
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 702, i32 30 }
@___asan_gen_.1400 = private unnamed_addr constant [20 x i8] c"da7219_out_dacr_sel\00", align 1
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 711, i32 30 }
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 732, i32 2 }
@___asan_gen_.1406 = private unnamed_addr constant [21 x i8] c".compoundliteral.292\00", align 1
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 738, i32 2 }
@___asan_gen_.1410 = private unnamed_addr constant [21 x i8] c".compoundliteral.294\00", align 1
@___asan_gen_.1414 = private unnamed_addr constant [21 x i8] c".compoundliteral.296\00", align 1
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 755, i32 2 }
@___asan_gen_.1418 = private unnamed_addr constant [21 x i8] c".compoundliteral.298\00", align 1
@___asan_gen_.1419 = private unnamed_addr constant [21 x i8] c".compoundliteral.299\00", align 1
@___asan_gen_.1420 = private unnamed_addr constant [21 x i8] c".compoundliteral.300\00", align 1
@___asan_gen_.1421 = private unnamed_addr constant [21 x i8] c".compoundliteral.301\00", align 1
@___asan_gen_.1422 = private unnamed_addr constant [21 x i8] c".compoundliteral.302\00", align 1
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2448, i32 2 }
@___asan_gen_.1429 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2449, i32 2 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2495, i32 3 }
@___asan_gen_.1444 = private unnamed_addr constant [20 x i8] c"da7219_rev_aa_patch\00", align 1
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2436, i32 28 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2504, i32 4 }
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2517, i32 41 }
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1865, i32 3 }
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1876, i32 3 }
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1883, i32 3 }
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1846, i32 24 }
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1847, i32 27 }
@___asan_gen_.1485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1848, i32 26 }
@___asan_gen_.1494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2168, i32 4 }
@___asan_gen_.1495 = private unnamed_addr constant [19 x i8] c"da7219_dai_clk_ops\00", align 1
@___asan_gen_.1497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2104, i32 29 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2180, i32 4 }
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2191, i32 10 }
@___asan_gen_.1512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 2206, i32 4 }
@___asan_gen_.1521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1812, i32 6 }
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1679, i32 10 }
@___asan_gen_.1525 = private unnamed_addr constant [15 x i8] c"da7219_dai_ops\00", align 1
@___asan_gen_.1527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1661, i32 37 }
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1168, i32 3 }
@___asan_gen_.1542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1186, i32 3 }
@___asan_gen_.1548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1197, i32 4 }
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1443, i32 3 }
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1455, i32 3 }
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1471, i32 5 }
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1479, i32 5 }
@___asan_gen_.1584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1583, i32 3 }
@___asan_gen_.1590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1594, i32 4 }
@___asan_gen_.1596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1601, i32 4 }
@___asan_gen_.1602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1630, i32 5 }
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1637, i32 5 }
@___asan_gen_.1609 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1612 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1613 = private constant [29 x i8] c"../sound/soc/codecs/da7219.c\00", align 1
@___asan_gen_.1614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1613, i32 1645, i32 5 }
@___asan_gen_.1615 = private unnamed_addr constant [37 x i8] c"switch.table.da7219_wclk_recalc_rate\00", align 1
@___asan_gen_.1616 = private unnamed_addr constant [32 x i8] c"switch.table.da7219_set_dai_fmt\00", align 1
@___asan_gen_.1617 = private unnamed_addr constant [36 x i8] c"switch.table.da7219_set_dai_fmt.371\00", align 1
@___asan_gen_.1618 = private unnamed_addr constant [37 x i8] c"switch.table.da7219_set_dai_tdm_slot\00", align 1
@___asan_gen_.1619 = private unnamed_addr constant [30 x i8] c"switch.table.da7219_hw_params\00", align 1
@llvm.compiler.used = appending global [490 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_da7219_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_da7219__294_2713_da7219_i2c_driver_init6, ptr @da7219_alc_calib._entry, ptr @da7219_alc_calib._entry_ptr, ptr @da7219_dai_event._entry, ptr @da7219_dai_event._entry.288, ptr @da7219_dai_event._entry_ptr, ptr @da7219_dai_event._entry_ptr.290, ptr @da7219_fw_mic_amp_in_sel._entry, ptr @da7219_fw_mic_amp_in_sel._entry_ptr, ptr @da7219_fw_micbias_lvl._entry, ptr @da7219_fw_micbias_lvl._entry_ptr, ptr @da7219_fw_to_pdata._entry, ptr @da7219_fw_to_pdata._entry_ptr, ptr @da7219_handle_supplies._entry, ptr @da7219_handle_supplies._entry.314, ptr @da7219_handle_supplies._entry.317, ptr @da7219_handle_supplies._entry_ptr, ptr @da7219_handle_supplies._entry_ptr.316, ptr @da7219_handle_supplies._entry_ptr.319, ptr @da7219_hw_params._entry, ptr @da7219_hw_params._entry.356, ptr @da7219_hw_params._entry.359, ptr @da7219_hw_params._entry.362, ptr @da7219_hw_params._entry.365, ptr @da7219_hw_params._entry.368, ptr @da7219_hw_params._entry_ptr, ptr @da7219_hw_params._entry_ptr.358, ptr @da7219_hw_params._entry_ptr.361, ptr @da7219_hw_params._entry_ptr.364, ptr @da7219_hw_params._entry_ptr.367, ptr @da7219_hw_params._entry_ptr.370, ptr @da7219_i2c_driver_exit, ptr @da7219_i2c_probe._entry, ptr @da7219_i2c_probe._entry.15, ptr @da7219_i2c_probe._entry_ptr, ptr @da7219_i2c_probe._entry_ptr.17, ptr @da7219_probe._entry, ptr @da7219_probe._entry.308, ptr @da7219_probe._entry_ptr, ptr @da7219_probe._entry_ptr.310, ptr @da7219_register_dai_clks._entry, ptr @da7219_register_dai_clks._entry.325, ptr @da7219_register_dai_clks._entry.329, ptr @da7219_register_dai_clks._entry_ptr, ptr @da7219_register_dai_clks._entry_ptr.327, ptr @da7219_register_dai_clks._entry_ptr.331, ptr @da7219_set_bias_level._entry, ptr @da7219_set_bias_level._entry_ptr, ptr @da7219_set_dai_sysclk._entry, ptr @da7219_set_dai_sysclk._entry.337, ptr @da7219_set_dai_sysclk._entry.340, ptr @da7219_set_dai_sysclk._entry_ptr, ptr @da7219_set_dai_sysclk._entry_ptr.339, ptr @da7219_set_dai_sysclk._entry_ptr.342, ptr @da7219_set_dai_tdm_slot._entry, ptr @da7219_set_dai_tdm_slot._entry.345, ptr @da7219_set_dai_tdm_slot._entry.348, ptr @da7219_set_dai_tdm_slot._entry.351, ptr @da7219_set_dai_tdm_slot._entry_ptr, ptr @da7219_set_dai_tdm_slot._entry_ptr.347, ptr @da7219_set_dai_tdm_slot._entry_ptr.350, ptr @da7219_set_dai_tdm_slot._entry_ptr.353, ptr @da7219_set_pll._entry, ptr @da7219_set_pll._entry.5, ptr @da7219_set_pll._entry.8, ptr @da7219_set_pll._entry_ptr, ptr @da7219_set_pll._entry_ptr.10, ptr @da7219_set_pll._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @da7219_i2c_driver, ptr @.str.11, ptr @da7219_of_match, ptr @da7219_i2c_id, ptr @da7219_i2c_probe._key, ptr @da7219_regmap_config, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @soc_component_dev_da7219, ptr @da7219_dai, ptr @.str.16, ptr @da7219_reg_defaults, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @da7219_snd_controls, ptr @da7219_audio_map, ptr @.str.34, ptr @da7219_mic_gain_tlv, ptr @.compoundliteral, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @da7219_mixin_gain_tlv, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @da7219_adc_dig_gain_tlv, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @da7219_alc_attack_rate, ptr @.str.52, ptr @da7219_alc_release_rate, ptr @.str.53, ptr @da7219_alc_hold_time, ptr @.str.54, ptr @da7219_alc_env_attack_rate, ptr @.str.55, ptr @da7219_alc_env_release_rate, ptr @.str.56, ptr @da7219_alc_threshold_tlv, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @da7219_alc_gain_tlv, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @da7219_alc_ana_gain_tlv, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @da7219_alc_anticlip_step, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @da7219_adc_hpf_mode, ptr @.str.76, ptr @da7219_adc_audio_hpf_corner, ptr @.str.77, ptr @da7219_adc_voice_hpf_corner, ptr @.str.78, ptr @da7219_sidetone_gain_tlv, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @da7219_tonegen_gain_tlv, ptr @.compoundliteral.83, ptr @.str.84, ptr @da7219_tonegen_dtmf_key, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @da7219_tonegen_swg_sel, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @da7219_gain_ramp_rate, ptr @.str.97, ptr @da7219_dac_hpf_mode, ptr @.str.98, ptr @da7219_dac_audio_hpf_corner, ptr @.str.99, ptr @da7219_dac_voice_hpf_corner, ptr @.str.100, ptr @da7219_dac_eq_band_tlv, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @da7219_dac_softmute_rate, ptr @.str.113, ptr @.compoundliteral.114, ptr @.str.115, ptr @da7219_dac_ng_setup_time, ptr @.str.116, ptr @da7219_dac_ng_rampup_rate, ptr @.str.117, ptr @da7219_dac_ng_rampdown_rate, ptr @.str.118, ptr @da7219_dac_ng_threshold_tlv, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @da7219_dac_dig_gain_tlv, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @da7219_cp_track_mode, ptr @.str.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @da7219_hp_gain_tlv, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.str.142, ptr @da7219_alc_attack_rate_txt, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @da7219_alc_release_rate_txt, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @da7219_alc_hold_time_txt, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @da7219_alc_env_rate_txt, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @da7219_alc_anticlip_step_txt, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @da7219_hpf_mode_txt, ptr @da7219_hpf_mode_val, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @da7219_audio_hpf_corner_txt, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @da7219_voice_hpf_corner_txt, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @da7219_tonegen_dtmf_key_txt, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @da7219_tonegen_swg_sel_txt, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @da7219_gain_ramp_rate_txt, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @da7219_dac_softmute_rate_txt, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @da7219_dac_ng_setup_time_txt, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @da7219_dac_ng_rampup_txt, ptr @.str.241, ptr @.str.242, ptr @da7219_dac_ng_rampdown_txt, ptr @.str.243, ptr @.str.244, ptr @da7219_cp_track_mode_txt, ptr @da7219_cp_track_mode_val, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @da7219_mixin_controls, ptr @.str.258, ptr @da7219_out_dail_sel_mux, ptr @.str.259, ptr @da7219_out_dair_sel_mux, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @da7219_out_dacl_sel_mux, ptr @.str.266, ptr @da7219_out_dacr_sel_mux, ptr @.str.267, ptr @da7219_mixout_l_controls, ptr @.str.268, ptr @da7219_mixout_r_controls, ptr @.str.269, ptr @da7219_st_out_filtl_mix_controls, ptr @.str.270, ptr @da7219_st_out_filtr_mix_controls, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @da7219_dapm_widgets, ptr @.compoundliteral.283, ptr @da7219_out_dail_sel, ptr @da7219_out_sel_txt, ptr @.str.284, ptr @.str.285, ptr @da7219_out_dair_sel, ptr @.str.286, ptr @.str.287, ptr @.str.289, ptr @da7219_out_dacl_sel, ptr @da7219_out_dacr_sel, ptr @.str.291, ptr @.compoundliteral.292, ptr @.str.293, ptr @.compoundliteral.294, ptr @.str.295, ptr @.compoundliteral.296, ptr @.str.297, ptr @.compoundliteral.298, ptr @.compoundliteral.299, ptr @.compoundliteral.300, ptr @.compoundliteral.301, ptr @.compoundliteral.302, ptr @da7219_probe.__key, ptr @.str.303, ptr @da7219_probe.__key.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @da7219_rev_aa_patch, ptr @.str.309, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.315, ptr @.str.318, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @da7219_dai_clk_ops, ptr @.str.326, ptr @.str.328, ptr @.str.330, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @da7219_dai_ops, ptr @.str.335, ptr @.str.336, ptr @.str.338, ptr @.str.341, ptr @.str.343, ptr @.str.344, ptr @.str.346, ptr @.str.349, ptr @.str.352, ptr @.str.354, ptr @.str.355, ptr @.str.357, ptr @.str.360, ptr @.str.363, ptr @.str.366, ptr @.str.369, ptr @switch.table.da7219_wclk_recalc_rate, ptr @switch.table.da7219_set_dai_fmt, ptr @switch.table.da7219_set_dai_fmt.371, ptr @switch.table.da7219_set_dai_tdm_slot, ptr @switch.table.da7219_hw_params], section "llvm.metadata"
@0 = internal global [450 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_set_pll._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_set_pll._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_da7219 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_reg_defaults to i32), i32 696, i32 864, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_fw_to_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_fw_micbias_lvl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_fw_mic_amp_in_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_snd_controls to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_audio_map to i32), i32 2392, i32 2976, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_mic_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_mixin_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_adc_dig_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_attack_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_release_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_hold_time to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_env_attack_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_env_release_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_threshold_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_ana_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_anticlip_step to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_adc_hpf_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_adc_audio_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_adc_voice_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_sidetone_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_tonegen_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_tonegen_dtmf_key to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_tonegen_swg_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_gain_ramp_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_hpf_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_audio_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_voice_hpf_corner to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_eq_band_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_softmute_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_ng_setup_time to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_ng_rampup_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_ng_rampdown_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_ng_threshold_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_dig_gain_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_cp_track_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_hp_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_calib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_attack_rate_txt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_release_rate_txt to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_hold_time_txt to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_env_rate_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_alc_anticlip_step_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_hpf_mode_txt to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_hpf_mode_val to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_audio_hpf_corner_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_voice_hpf_corner_txt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_tonegen_dtmf_key_txt to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_tonegen_swg_sel_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_gain_ramp_rate_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_softmute_rate_txt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_ng_setup_time_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_ng_rampup_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dac_ng_rampdown_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_cp_track_mode_txt to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_cp_track_mode_val to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_mixin_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_out_dail_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_out_dair_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_out_dacl_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_out_dacr_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_mixout_l_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_mixout_r_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_st_out_filtl_mix_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_st_out_filtr_mix_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dapm_widgets to i32), i32 5760, i32 7200, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.283 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_out_dail_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_out_sel_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_out_dair_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dai_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dai_event._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_out_dacl_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_out_dacr_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.292 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.294 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.296 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.298 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.299 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.300 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.301 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.302 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_probe.__key.304 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_rev_aa_patch to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_probe._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_handle_supplies._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_handle_supplies._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_handle_supplies._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_register_dai_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dai_clk_ops to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_register_dai_clks._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_register_dai_clks._entry.329 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_set_dai_sysclk._entry.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_set_dai_sysclk._entry.340 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_set_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_set_dai_tdm_slot._entry.345 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_set_dai_tdm_slot._entry.348 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_set_dai_tdm_slot._entry.351 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_hw_params._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_hw_params._entry.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_hw_params._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_hw_params._entry.365 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_hw_params._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7219_wclk_recalc_rate to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7219_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7219_set_dai_fmt.371 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7219_set_dai_tdm_slot to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7219_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da7219_set_pll(ptr noundef %component, i32 noundef %source, i32 noundef %fout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mclk_rate = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %5)
  %cmp = icmp ult i32 %5, 2000000
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %5) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4500001, i32 %5)
  %cmp3 = icmp ult i32 %5, 4500001
  br i1 %cmp3, label %if.else.if.end31_crit_edge, label %if.else5

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000001, i32 %5)
  %cmp7 = icmp ult i32 %5, 9000001
  br i1 %cmp7, label %if.else5.if.end31_crit_edge, label %if.else9

if.else5.if.end31_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.else9:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_const_cmp4(i32 18000001, i32 %5)
  %cmp11 = icmp ult i32 %5, 18000001
  br i1 %cmp11, label %if.else9.if.end31_crit_edge, label %if.else13

if.else9.if.end31_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.else13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 36000001, i32 %5)
  %cmp15 = icmp ult i32 %5, 36000001
  br i1 %cmp15, label %if.else13.if.end31_crit_edge, label %if.else17

if.else13.if.end31_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.else17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000001, i32 %5)
  %cmp19 = icmp ult i32 %5, 54000001
  br i1 %cmp19, label %if.else17.if.end31_crit_edge, label %do.end24

if.else17.if.end31_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.end24:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5) #13
  br label %cleanup

if.end31:                                         ; preds = %if.else17.if.end31_crit_edge, %if.else13.if.end31_crit_edge, %if.else9.if.end31_crit_edge, %if.else5.if.end31_crit_edge, %if.else.if.end31_crit_edge
  %indiv_bits.0 = phi i32 [ 0, %if.else.if.end31_crit_edge ], [ 4, %if.else5.if.end31_crit_edge ], [ 8, %if.else9.if.end31_crit_edge ], [ 12, %if.else13.if.end31_crit_edge ], [ 16, %if.else17.if.end31_crit_edge ]
  %indiv.0 = phi i32 [ 1, %if.else.if.end31_crit_edge ], [ 2, %if.else5.if.end31_crit_edge ], [ 4, %if.else9.if.end31_crit_edge ], [ 8, %if.else13.if.end31_crit_edge ], [ 16, %if.else17.if.end31_crit_edge ]
  %div = udiv i32 %5, %indiv.0
  %6 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %source, label %do.end47 [
    i32 0, label %sw.bb
    i32 1, label %if.end31.sw.epilog_crit_edge
    i32 2, label %sw.bb41
  ]

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 32, i32 noundef 220, i32 noundef %indiv_bits.0) #10
  br label %cleanup

sw.bb41:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end47:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.9) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb41, %if.end31.sw.epilog_crit_edge
  %.sink = phi i32 [ 128, %sw.bb41 ], [ 64, %if.end31.sw.epilog_crit_edge ]
  %conv44 = or i32 %indiv_bits.0, %.sink
  %div.frozen = freeze i32 %div
  %div49 = udiv i32 %fout, %div.frozen
  %7 = mul i32 %div49, %div.frozen
  %rem.decomposed = sub i32 %fout, %7
  %conv51 = zext i32 %rem.decomposed to i64
  %mul = shl nuw nsw i64 %conv51, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %rem.decomposed)
  %cmp226 = icmp ult i32 %rem.decomposed, 524288
  br i1 %cmp226, label %if.then230, label %if.else236, !prof !781

if.then230:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %conv231 = trunc i64 %mul to i32
  %div234 = udiv i32 %conv231, %div
  br label %if.end240

if.else236:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %mul) #14, !srcloc !782
  %asmresult1.i = extractvalue { i64, i64 } %8, 1
  %extract.t392 = trunc i64 %asmresult1.i to i32
  br label %if.end240

if.end240:                                        ; preds = %if.else236, %if.then230
  %frac_div.0.off0 = phi i32 [ %div234, %if.then230 ], [ %extract.t392, %if.else236 ]
  %9 = lshr i32 %frac_div.0.off0, 8
  %conv247 = and i32 %9, 255
  %call248 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 34, i32 noundef %conv247) #10
  %conv249 = and i32 %frac_div.0.off0, 255
  %call250 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 35, i32 noundef %conv249) #10
  %conv251 = and i32 %div49, 255
  %call252 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 36, i32 noundef %conv251) #10
  %call254 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 32, i32 noundef 220, i32 noundef %conv44) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end240, %do.end47, %sw.bb, %do.end24, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end47 ], [ 0, %if.end240 ], [ 0, %sw.bb ], [ -22, %do.end24 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_i2c_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da7219_i2c_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da7219_i2c_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @da7219_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %of_str.i = alloca ptr, align 4
  %of_val32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 308, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @da7219_regmap_config, ptr noundef nonnull @da7219_i2c_probe._key, ptr noundef nonnull @.str.12) #10
  %regmap = getelementptr inbounds %struct.da7219_priv, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %2) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.da7219_priv, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pdata, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %if.then12, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_str.i) #10
  %6 = ptrtoint ptr %of_str.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %of_str.i, align 4, !annotation !783
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_val32.i) #10
  %7 = ptrtoint ptr %of_val32.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %of_val32.i, align 4, !annotation !783
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then12.da7219_fw_to_pdata.exit_crit_edge, label %if.end.i

if.then12.da7219_fw_to_pdata.exit_crit_edge:      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_fw_to_pdata.exit

if.end.i:                                         ; preds = %if.then12
  %call.i45.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  %frombool.i = zext i1 %call.i45.i to i8
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool.i, ptr %call.i.i, align 4
  %dai_clk_names.i = getelementptr inbounds %struct.da7219_pdata, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %dai_clk_names.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.19, ptr %dai_clk_names.i, align 4
  %arrayidx3.i = getelementptr %struct.da7219_pdata, ptr %call.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.20, ptr %arrayidx3.i, align 4
  %call5.i = tail call i32 @device_property_read_string_array(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef %dai_clk_names.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i49 = icmp slt i32 %call5.i, 0
  br i1 %cmp.i49, label %do.end.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dai_clk_names.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dai_clk_names.i, align 4
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef %12, ptr noundef %14) #13
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.end.i.if.end11.i_crit_edge
  %call.i46.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull %of_val32.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i46.i)
  %cmp13.i = icmp sgt i32 %call.i46.i, -1
  br i1 %cmp13.i, label %if.then14.i, label %if.end11.i.if.end17.i_crit_edge

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end11.i
  %15 = ptrtoint ptr %of_val32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %of_val32.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.372)
  switch i32 %16, label %do.end.i.i [
    i32 1600, label %if.then14.i.if.end17.i_crit_edge
    i32 1800, label %sw.bb1.i.i
    i32 2000, label %sw.bb2.i.i
    i32 2200, label %sw.bb3.i.i
    i32 2400, label %sw.bb4.i.i
    i32 2600, label %sw.bb5.i.i
  ]

if.then14.i.if.end17.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

sw.bb1.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

sw.bb2.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

sw.bb3.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

sw.bb4.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

sw.bb5.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

do.end.i.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.27) #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then14.i.if.end17.i_crit_edge, %if.end11.i.if.end17.i_crit_edge
  %.sink.i = phi i32 [ 3, %do.end.i.i ], [ 5, %sw.bb5.i.i ], [ 4, %sw.bb4.i.i ], [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %if.then14.i.if.end17.i_crit_edge ], [ 3, %if.end11.i.if.end17.i_crit_edge ]
  %micbias_lvl16.i = getelementptr inbounds %struct.da7219_pdata, ptr %call.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %micbias_lvl16.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink.i, ptr %micbias_lvl16.i, align 4
  %call18.i = call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef nonnull %of_str.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end17.i.cleanup.sink.split.i_crit_edge

if.end17.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.then20.i:                                      ; preds = %if.end17.i
  %19 = ptrtoint ptr %of_str.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_str.i, align 4
  %call.i47.i = call i32 @strcmp(ptr noundef %20, ptr noundef nonnull dereferenceable(5) @.str.29) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool.not.i.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool.not.i.i, label %if.then20.i.cleanup.sink.split.i_crit_edge, label %if.else.i.i

if.then20.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.else.i.i:                                      ; preds = %if.then20.i
  %call1.i.i = call i32 @strcmp(ptr noundef %20, ptr noundef nonnull dereferenceable(5) @.str.30) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i.cleanup.sink.split.i_crit_edge, label %if.else4.i.i

if.else.i.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  %call5.i.i = call i32 @strcmp(ptr noundef %20, ptr noundef nonnull dereferenceable(5) @.str.31) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else4.i.i.cleanup.sink.split.i_crit_edge, label %do.end.i48.i

if.else4.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

do.end.i48.i:                                     ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.32) #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end.i48.i, %if.else4.i.i.cleanup.sink.split.i_crit_edge, %if.else.i.i.cleanup.sink.split.i_crit_edge, %if.then20.i.cleanup.sink.split.i_crit_edge, %if.end17.i.cleanup.sink.split.i_crit_edge
  %retval.0.i49.sink.i = phi i32 [ 0, %do.end.i48.i ], [ 0, %if.then20.i.cleanup.sink.split.i_crit_edge ], [ 1, %if.else.i.i.cleanup.sink.split.i_crit_edge ], [ 2, %if.else4.i.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.end17.i.cleanup.sink.split.i_crit_edge ]
  %mic_amp_in_sel.i = getelementptr inbounds %struct.da7219_pdata, ptr %call.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %mic_amp_in_sel.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i49.sink.i, ptr %mic_amp_in_sel.i, align 4
  br label %da7219_fw_to_pdata.exit

da7219_fw_to_pdata.exit:                          ; preds = %cleanup.sink.split.i, %if.then12.da7219_fw_to_pdata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_val32.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_str.i) #10
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %pdata, align 4
  br label %if.end15

if.end15:                                         ; preds = %da7219_fw_to_pdata.exit, %if.end8.if.end15_crit_edge
  %call16 = call i32 @da7219_aad_probe(ptr noundef %i2c) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @soc_component_dev_da7219, ptr noundef nonnull @da7219_dai, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call20) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call20, %do.end24 ], [ %call20, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @da7219_i2c_remove(ptr nocapture noundef readnone %client) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da7219_aad_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @da7219_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.373)
  switch i32 %reg, label %sw.default [
    i32 6, label %entry.return_crit_edge
    i32 8, label %entry.return_crit_edge1
    i32 10, label %entry.return_crit_edge2
    i32 12, label %entry.return_crit_edge3
    i32 13, label %entry.return_crit_edge4
    i32 14, label %entry.return_crit_edge5
    i32 15, label %entry.return_crit_edge6
    i32 19, label %entry.return_crit_edge7
    i32 37, label %entry.return_crit_edge8
    i32 47, label %entry.return_crit_edge9
    i32 80, label %entry.return_crit_edge10
    i32 81, label %entry.return_crit_edge11
    i32 163, label %entry.return_crit_edge12
    i32 164, label %entry.return_crit_edge13
    i32 180, label %entry.return_crit_edge14
    i32 192, label %entry.return_crit_edge15
    i32 193, label %entry.return_crit_edge16
    i32 194, label %entry.return_crit_edge17
    i32 195, label %entry.return_crit_edge18
    i32 205, label %entry.return_crit_edge19
    i32 224, label %entry.return_crit_edge20
  ]

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_probe(ptr noundef %component) #0 align 64 {
entry:
  %parent_name.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %system_active = alloca i32, align 4
  %system_status = alloca i32, align 4
  %rev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %system_active) #10
  %4 = ptrtoint ptr %system_active to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %system_active, align 4, !annotation !783
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %system_status) #10
  %5 = ptrtoint ptr %system_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %system_status, align 4, !annotation !783
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev) #10
  %6 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rev, align 4, !annotation !783
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %component, ptr %3, align 4
  %ctrl_lock = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.303, ptr noundef nonnull @da7219_probe.__key) #10
  %pll_lock = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %pll_lock, ptr noundef nonnull @.str.305, ptr noundef nonnull @da7219_probe.__key.304) #10
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx1.i = getelementptr %struct.da7219_priv, ptr %11, i32 0, i32 4, i32 0
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.320, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.da7219_priv, ptr %11, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.321, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.da7219_priv, ptr %11, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.322, ptr %arrayidx1.2.i, align 4
  %15 = load ptr, ptr %dev.i, align 4
  %call3.i = tail call i32 @regulator_bulk_get(ptr noundef %15, i32 noundef 3, ptr noundef %arrayidx1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.312) #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %consumer.i = getelementptr %struct.da7219_priv, ptr %11, i32 0, i32 4, i32 2, i32 1
  %18 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %consumer.i, align 4
  %call7.i = tail call i32 @regulator_get_voltage(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 1200000
  br i1 %cmp8.i, label %do.end12.i, label %if.else.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.315) #13
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2800000, i32 %call7.i)
  %cmp14.i = icmp ult i32 %call7.i, 2800000
  %spec.select = zext i1 %cmp14.i to i32
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %do.end12.i
  %io_voltage_lvl.0 = phi i32 [ 0, %do.end12.i ], [ %spec.select, %if.else.i ]
  %call20.i = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %arrayidx1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end, label %do.end25.i

do.end25.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.318) #13
  tail call void @regulator_bulk_free(i32 noundef 3, ptr noundef %arrayidx1.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end17.i
  %regmap = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_bypass(ptr noundef %25, i1 noundef zeroext true) #10
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_read(ptr noundef %27, i32 noundef 253, ptr noundef nonnull %system_active) #10
  %28 = ptrtoint ptr %system_active to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %system_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8.not = icmp eq i32 %29, 0
  br i1 %tobool8.not, label %if.end.if.end21_crit_edge, label %if.then9

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9:                                         ; preds = %if.end
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_write(ptr noundef %31, i32 noundef 146, i32 noundef 1) #10
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_write(ptr noundef %33, i32 noundef 80, i32 noundef 0) #10
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_write(ptr noundef %35, i32 noundef 81, i32 noundef 1) #10
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call17 = call i32 @regmap_read(ptr noundef %37, i32 noundef 224, ptr noundef nonnull %system_status) #10
  %38 = ptrtoint ptr %system_status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %system_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool18.not = icmp eq i32 %39, 0
  br i1 %tobool18.not, label %if.then9.if.end21_crit_edge, label %if.end20

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end20:                                         ; preds = %if.then9
  call void @msleep(i32 noundef 50) #10
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call17.1 = call i32 @regmap_read(ptr noundef %41, i32 noundef 224, ptr noundef nonnull %system_status) #10
  %42 = ptrtoint ptr %system_status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %system_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool18.not.1 = icmp eq i32 %43, 0
  br i1 %tobool18.not.1, label %if.end20.if.end21_crit_edge, label %if.end20.1

if.end20.if.end21_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end20.1:                                       ; preds = %if.end20
  call void @msleep(i32 noundef 50) #10
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call17.2 = call i32 @regmap_read(ptr noundef %45, i32 noundef 224, ptr noundef nonnull %system_status) #10
  %46 = ptrtoint ptr %system_status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %system_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool18.not.2 = icmp eq i32 %47, 0
  br i1 %tobool18.not.2, label %if.end20.1.if.end21_crit_edge, label %if.end20.2

if.end20.1.if.end21_crit_edge:                    ; preds = %if.end20.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end20.2:                                       ; preds = %if.end20.1
  call void @msleep(i32 noundef 50) #10
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call17.3 = call i32 @regmap_read(ptr noundef %49, i32 noundef 224, ptr noundef nonnull %system_status) #10
  %50 = ptrtoint ptr %system_status to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %system_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool18.not.3 = icmp eq i32 %51, 0
  br i1 %tobool18.not.3, label %if.end20.2.if.end21_crit_edge, label %if.end20.3

if.end20.2.if.end21_crit_edge:                    ; preds = %if.end20.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end20.3:                                       ; preds = %if.end20.2
  call void @msleep(i32 noundef 50) #10
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call17.4 = call i32 @regmap_read(ptr noundef %53, i32 noundef 224, ptr noundef nonnull %system_status) #10
  %54 = ptrtoint ptr %system_status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %system_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool18.not.4 = icmp eq i32 %55, 0
  br i1 %tobool18.not.4, label %if.end20.3.if.end21_crit_edge, label %if.end20.4

if.end20.3.if.end21_crit_edge:                    ; preds = %if.end20.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end20.4:                                       ; preds = %if.end20.3
  call void @msleep(i32 noundef 50) #10
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call17.5 = call i32 @regmap_read(ptr noundef %57, i32 noundef 224, ptr noundef nonnull %system_status) #10
  %58 = ptrtoint ptr %system_status to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %system_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool18.not.5 = icmp eq i32 %59, 0
  br i1 %tobool18.not.5, label %if.end20.4.if.end21_crit_edge, label %if.end20.5

if.end20.4.if.end21_crit_edge:                    ; preds = %if.end20.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end20.5:                                       ; preds = %if.end20.4
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 50) #10
  br label %if.end21

if.end21:                                         ; preds = %if.end20.5, %if.end20.4.if.end21_crit_edge, %if.end20.3.if.end21_crit_edge, %if.end20.2.if.end21_crit_edge, %if.end20.1.if.end21_crit_edge, %if.end20.if.end21_crit_edge, %if.then9.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 198, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call.i147 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 19, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %call.i148 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 253, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call.i149 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 253, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_bypass(ptr noundef %69, i1 noundef zeroext false) #10
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %call32 = call i32 @regmap_reinit_cache(ptr noundef %71, ptr noundef nonnull @da7219_regmap_config) #10
  %call33 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 145, i32 noundef %io_voltage_lvl.0) #10
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call35 = call i32 @regmap_read(ptr noundef %73, i32 noundef 131, ptr noundef nonnull %rev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end41, label %do.end40

do.end40:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.306, i32 noundef %call35) #13
  br label %err_disable_reg

if.end41:                                         ; preds = %if.end21
  %76 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rev, align 4
  %and = and i32 %77, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cond = icmp eq i32 %and, 0
  br i1 %cond, label %sw.bb, label %if.end41.sw.epilog_crit_edge

if.end41.sw.epilog_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end41
  %78 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap, align 4
  %call43 = call i32 @regmap_register_patch(ptr noundef %79, ptr noundef nonnull @da7219_rev_aa_patch, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %sw.bb.sw.epilog_crit_edge, label %do.end48

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end48:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.309, i32 noundef %call43) #13
  br label %err_disable_reg

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end41.sw.epilog_crit_edge
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i151 = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %driver_data.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %driver_data.i.i.i151, align 4
  %pdata1.i = getelementptr inbounds %struct.da7219_priv, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdata1.i, align 4
  %tobool.not.i152 = icmp eq ptr %87, null
  br i1 %tobool.not.i152, label %sw.epilog.da7219_handle_pdata.exit_crit_edge, label %if.then.i

sw.epilog.da7219_handle_pdata.exit_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_handle_pdata.exit

if.then.i:                                        ; preds = %sw.epilog
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 4, !range !784
  %wakeup_source3.i = getelementptr inbounds %struct.da7219_priv, ptr %85, i32 0, i32 3
  %90 = ptrtoint ptr %wakeup_source3.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %wakeup_source3.i, align 4
  %micbias_lvl4.i = getelementptr inbounds %struct.da7219_pdata, ptr %87, i32 0, i32 2
  %91 = ptrtoint ptr %micbias_lvl4.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %micbias_lvl4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %92)
  %switch.i = icmp ult i32 %92, 6
  %spec.select.i = select i1 %switch.i, i32 %92, i32 0
  %call8.i = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 98, i32 noundef %spec.select.i) #10
  %93 = ptrtoint ptr %micbias_lvl4.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %micbias_lvl4.i, align 4
  %mul.i = mul i32 %94, 40
  %add.i = add i32 %mul.i, 100
  %mic_pga_delay.i = getelementptr inbounds %struct.da7219_priv, ptr %85, i32 0, i32 19
  %95 = ptrtoint ptr %mic_pga_delay.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add.i, ptr %mic_pga_delay.i, align 4
  %mic_amp_in_sel.i = getelementptr inbounds %struct.da7219_pdata, ptr %87, i32 0, i32 3
  %96 = ptrtoint ptr %mic_amp_in_sel.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mic_amp_in_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %97)
  %switch25.i = icmp ult i32 %97, 3
  br i1 %switch25.i, label %sw.bb10.i, label %if.then.i.da7219_handle_pdata.exit_crit_edge

if.then.i.da7219_handle_pdata.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_handle_pdata.exit

sw.bb10.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 16, i32 noundef %97) #10
  br label %da7219_handle_pdata.exit

da7219_handle_pdata.exit:                         ; preds = %sw.bb10.i, %if.then.i.da7219_handle_pdata.exit_crit_edge, %sw.epilog.da7219_handle_pdata.exit_crit_edge
  %98 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i, align 4
  %call52 = call ptr @clk_get(ptr noundef %99, ptr noundef nonnull @.str.311) #10
  %mclk = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 12
  %100 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call52, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then55, label %da7219_handle_pdata.exit.if.end65_crit_edge

da7219_handle_pdata.exit.if.end65_crit_edge:      ; preds = %da7219_handle_pdata.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then55:                                        ; preds = %da7219_handle_pdata.exit
  %101 = ptrtoint ptr %call52 to i32
  %cmp58.not = icmp eq ptr %call52, inttoptr (i32 -2 to ptr)
  br i1 %cmp58.not, label %if.else, label %if.then55.err_disable_reg_crit_edge

if.then55.err_disable_reg_crit_edge:              ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_disable_reg

if.else:                                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %mclk, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else, %da7219_handle_pdata.exit.if.end65_crit_edge
  %103 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 27
  %105 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %of_node.i, align 8
  %driver_data.i.i.i154 = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 8
  %107 = ptrtoint ptr %driver_data.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %driver_data.i.i.i154, align 4
  %pdata2.i = getelementptr inbounds %struct.da7219_priv, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %pdata2.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pdata2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.i) #10
  %111 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name.i, align 4, !annotation !783
  %tobool.not.i155 = icmp eq ptr %106, null
  br i1 %tobool.not.i155, label %if.end65.sw.bb.i_crit_edge, label %if.then.i156

if.end65.sw.bb.i_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i156:                                     ; preds = %if.end65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %112 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 3520, i32 noundef 12) #16
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %da7219_register_dai_clks.exit.thread164, label %if.end.i157

da7219_register_dai_clks.exit.thread164:          ; preds = %if.then.i156
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #10
  br label %err_put_clk

if.end.i157:                                      ; preds = %if.then.i156
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 2, ptr %call7.i.i.i, align 8
  %clk_hw_data.i = getelementptr inbounds %struct.da7219_priv, ptr %108, i32 0, i32 9
  %114 = ptrtoint ptr %clk_hw_data.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call7.i.i.i, ptr %clk_hw_data.i, align 4
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i157, %if.end65.sw.bb.i_crit_edge
  %dai_clks.i = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 11
  %parent_names18.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents19.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %clk_hw_data35.i = getelementptr inbounds %struct.da7219_priv, ptr %108, i32 0, i32 9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %115 = call ptr @memset(ptr %parent_names18.i, i32 0, i32 16)
  %arrayidx.i = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 8, i32 0
  %mclk.i = getelementptr inbounds %struct.da7219_priv, ptr %108, i32 0, i32 12
  %116 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mclk.i, align 4
  %tobool8.not.i = icmp eq ptr %117, null
  br i1 %tobool8.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %if.then9.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then9.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = call ptr @__clk_get_name(ptr noundef nonnull %117) #10
  %118 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call11.i, ptr %parent_name.i, align 4
  %119 = ptrtoint ptr %parent_names18.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %parent_name.i, ptr %parent_names18.i, align 4
  %120 = ptrtoint ptr %num_parents19.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %num_parents19.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then9.i, %sw.bb.i.sw.epilog.i_crit_edge
  %arrayidx20.i = getelementptr %struct.da7219_pdata, ptr %110, i32 0, i32 1, i32 0
  %121 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx20.i, align 4
  %123 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %init.i, align 4
  %124 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @da7219_dai_clk_ops, ptr %ops.i, align 4
  %125 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 65, ptr %flags.i, align 4
  %init22.i = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 8, i32 0, i32 2
  %126 = ptrtoint ptr %init22.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %init.i, ptr %init22.i, align 4
  %call23.i = call i32 @clk_hw_register(ptr noundef %104, ptr noundef %arrayidx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end30.i, label %sw.epilog.i.do.end28.i_crit_edge

sw.epilog.i.do.end28.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

do.end28.i:                                       ; preds = %sw.epilog.1.i.do.end28.i_crit_edge, %sw.epilog.i.do.end28.i_crit_edge
  %call23.lcssa.i = phi i32 [ %call23.i, %sw.epilog.i.do.end28.i_crit_edge ], [ %call23.1.i, %sw.epilog.1.i.do.end28.i_crit_edge ]
  %i.0142.lcssa144.i = phi i32 [ 0, %sw.epilog.i.do.end28.i_crit_edge ], [ 1, %sw.epilog.1.i.do.end28.i_crit_edge ]
  %127 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %init.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %104, ptr noundef nonnull @.str.326, ptr noundef %128, i32 noundef %call23.lcssa.i) #13
  br label %cleanup.thread.i

if.end30.i:                                       ; preds = %sw.epilog.i
  %clk.i = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 8, i32 0, i32 1
  %129 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %clk.i, align 4
  %131 = ptrtoint ptr %dai_clks.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %130, ptr %dai_clks.i, align 4
  br i1 %tobool.not.i155, label %if.else37.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %clk_hw_data35.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %clk_hw_data35.i, align 4
  %arrayidx36.i = getelementptr %struct.clk_hw_onecell_data, ptr %133, i32 0, i32 1, i32 0
  %134 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %arrayidx.i, ptr %arrayidx36.i, align 4
  br label %sw.epilog.1.i

if.else37.i:                                      ; preds = %if.end30.i
  %135 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %init.i, align 4
  %137 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else37.i.dev_name.exit.i_crit_edge

if.else37.i.dev_name.exit.i_crit_edge:            ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %104, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.else37.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %140, %if.end.i.i ], [ %138, %if.else37.i.dev_name.exit.i_crit_edge ]
  %call40.i = call ptr (ptr, ptr, ptr, ...) @clkdev_hw_create(ptr noundef %arrayidx.i, ptr noundef %136, ptr noundef nonnull @.str.328, ptr noundef %retval.0.i.i) #10
  %tobool41.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool41.not.i, label %dev_name.exit.i.cleanup.thread.i_crit_edge, label %if.else43.i

dev_name.exit.i.cleanup.thread.i_crit_edge:       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.else43.i:                                      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx44.i = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 10, i32 0
  %141 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call40.i, ptr %arrayidx44.i, align 4
  br label %sw.epilog.1.i

cleanup.thread.i:                                 ; preds = %dev_name.exit.1.i.cleanup.thread.i_crit_edge, %dev_name.exit.i.cleanup.thread.i_crit_edge, %do.end28.i
  %i.0142147.i = phi i32 [ %i.0142.lcssa144.i, %do.end28.i ], [ 0, %dev_name.exit.i.cleanup.thread.i_crit_edge ], [ 1, %dev_name.exit.1.i.cleanup.thread.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call23.lcssa.i, %do.end28.i ], [ -12, %dev_name.exit.i.cleanup.thread.i_crit_edge ], [ -12, %dev_name.exit.1.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  br label %do.body61.i

sw.epilog.1.i:                                    ; preds = %if.else43.i, %if.then34.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %142 = call ptr @memset(ptr %init.i, i32 0, i32 28)
  %arrayidx.1.i = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 8, i32 1
  %143 = ptrtoint ptr %dai_clks.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dai_clks.i, align 4
  %call17.1.i = call ptr @__clk_get_name(ptr noundef %144) #10
  %145 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call17.1.i, ptr %parent_name.i, align 4
  %146 = ptrtoint ptr %parent_names18.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %parent_name.i, ptr %parent_names18.i, align 4
  %147 = ptrtoint ptr %num_parents19.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %num_parents19.i, align 4
  %arrayidx20.1.i = getelementptr %struct.da7219_pdata, ptr %110, i32 0, i32 1, i32 1
  %148 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx20.1.i, align 4
  %150 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %149, ptr %init.i, align 4
  %151 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr getelementptr inbounds ([2 x %struct.clk_ops], ptr @da7219_dai_clk_ops, i32 0, i32 1), ptr %ops.i, align 4
  %152 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 65, ptr %flags.i, align 4
  %init22.1.i = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 8, i32 1, i32 2
  %153 = ptrtoint ptr %init22.1.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %init.i, ptr %init22.1.i, align 4
  %call23.1.i = call i32 @clk_hw_register(ptr noundef %104, ptr noundef %arrayidx.1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.1.i)
  %tobool24.not.1.i = icmp eq i32 %call23.1.i, 0
  br i1 %tobool24.not.1.i, label %if.end30.1.i, label %sw.epilog.1.i.do.end28.i_crit_edge

sw.epilog.1.i.do.end28.i_crit_edge:               ; preds = %sw.epilog.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

if.end30.1.i:                                     ; preds = %sw.epilog.1.i
  %clk.1.i = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 8, i32 1, i32 1
  %154 = ptrtoint ptr %clk.1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %clk.1.i, align 4
  %arrayidx32.1.i = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 11, i32 1
  %156 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %155, ptr %arrayidx32.1.i, align 4
  br i1 %tobool.not.i155, label %if.else37.1.i, label %if.then50.i

if.else37.1.i:                                    ; preds = %if.end30.1.i
  %157 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %init.i, align 4
  %159 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.1.i = icmp eq ptr %160, null
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %if.else37.1.i.dev_name.exit.1.i_crit_edge

if.else37.1.i.dev_name.exit.1.i_crit_edge:        ; preds = %if.else37.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.1.i

if.end.i.1.i:                                     ; preds = %if.else37.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %104, align 4
  br label %dev_name.exit.1.i

dev_name.exit.1.i:                                ; preds = %if.end.i.1.i, %if.else37.1.i.dev_name.exit.1.i_crit_edge
  %retval.0.i.1.i = phi ptr [ %162, %if.end.i.1.i ], [ %160, %if.else37.1.i.dev_name.exit.1.i_crit_edge ]
  %call40.1.i = call ptr (ptr, ptr, ptr, ...) @clkdev_hw_create(ptr noundef %arrayidx.1.i, ptr noundef %158, ptr noundef nonnull @.str.328, ptr noundef %retval.0.i.1.i) #10
  %tobool41.not.1.i = icmp eq ptr %call40.1.i, null
  br i1 %tobool41.not.1.i, label %dev_name.exit.1.i.cleanup.thread.i_crit_edge, label %for.inc.1.thread.i

dev_name.exit.1.i.cleanup.thread.i_crit_edge:     ; preds = %dev_name.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

for.inc.1.thread.i:                               ; preds = %dev_name.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx44.1.i = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 10, i32 1
  %163 = ptrtoint ptr %arrayidx44.1.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call40.1.i, ptr %arrayidx44.1.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  br label %da7219_register_dai_clks.exit.thread

if.then50.i:                                      ; preds = %if.end30.1.i
  %164 = ptrtoint ptr %clk_hw_data35.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %clk_hw_data35.i, align 4
  %arrayidx36.1.i = getelementptr %struct.clk_hw_onecell_data, ptr %165, i32 0, i32 1, i32 1
  %166 = ptrtoint ptr %arrayidx36.1.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %arrayidx.1.i, ptr %arrayidx36.1.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  %167 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %of_node.i, align 8
  %169 = ptrtoint ptr %clk_hw_data35.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %clk_hw_data35.i, align 4
  %call53.i = call i32 @of_clk_add_hw_provider(ptr noundef %168, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %170) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.then50.i.da7219_register_dai_clks.exit.thread_crit_edge, label %do.end58.i

if.then50.i.da7219_register_dai_clks.exit.thread_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_register_dai_clks.exit.thread

do.end58.i:                                       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.330) #13
  br label %do.body61.i

do.body61.i:                                      ; preds = %do.end58.i, %cleanup.thread.i
  %i.0139.i = phi i32 [ 2, %do.end58.i ], [ %i.0142147.i, %cleanup.thread.i ]
  %ret.1.i = phi i32 [ %call53.i, %do.end58.i ], [ %ret.0.ph.i, %cleanup.thread.i ]
  %arrayidx63.i = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 10, i32 %i.0139.i
  %171 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx63.i, align 4
  %tobool64.not.i = icmp eq ptr %172, null
  br i1 %tobool64.not.i, label %do.body61.i.if.end68.i_crit_edge, label %if.then65.i

do.body61.i.if.end68.i_crit_edge:                 ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i

if.then65.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @clkdev_drop(ptr noundef nonnull %172) #10
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then65.i, %do.body61.i.if.end68.i_crit_edge
  %arrayidx70.i = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 8, i32 %i.0139.i
  call void @clk_hw_unregister(ptr noundef %arrayidx70.i) #10
  %dec.i = add nsw i32 %i.0139.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0139.i)
  %cmp72.i = icmp sgt i32 %i.0139.i, 0
  br i1 %cmp72.i, label %do.body61.i.1, label %if.end68.i.do.end73.i_crit_edge

if.end68.i.do.end73.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73.i

do.body61.i.1:                                    ; preds = %if.end68.i
  %arrayidx63.i.1 = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 10, i32 %dec.i
  %173 = ptrtoint ptr %arrayidx63.i.1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx63.i.1, align 4
  %tobool64.not.i.1 = icmp eq ptr %174, null
  br i1 %tobool64.not.i.1, label %do.body61.i.1.if.end68.i.1_crit_edge, label %if.then65.i.1

do.body61.i.1.if.end68.i.1_crit_edge:             ; preds = %do.body61.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i.1

if.then65.i.1:                                    ; preds = %do.body61.i.1
  call void @__sanitizer_cov_trace_pc() #12
  call void @clkdev_drop(ptr noundef nonnull %174) #10
  br label %if.end68.i.1

if.end68.i.1:                                     ; preds = %if.then65.i.1, %do.body61.i.1.if.end68.i.1_crit_edge
  %arrayidx70.i.1 = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 8, i32 %dec.i
  call void @clk_hw_unregister(ptr noundef %arrayidx70.i.1) #10
  %dec.i.1 = add nsw i32 %i.0139.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0139.i)
  %cmp72.i.1 = icmp sgt i32 %i.0139.i, 1
  br i1 %cmp72.i.1, label %do.body61.i.2, label %if.end68.i.1.do.end73.i_crit_edge

if.end68.i.1.do.end73.i_crit_edge:                ; preds = %if.end68.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73.i

do.body61.i.2:                                    ; preds = %if.end68.i.1
  %arrayidx63.i.2 = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 10, i32 %dec.i.1
  %175 = ptrtoint ptr %arrayidx63.i.2 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx63.i.2, align 4
  %tobool64.not.i.2 = icmp eq ptr %176, null
  br i1 %tobool64.not.i.2, label %do.body61.i.2.if.end68.i.2_crit_edge, label %if.then65.i.2

do.body61.i.2.if.end68.i.2_crit_edge:             ; preds = %do.body61.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i.2

if.then65.i.2:                                    ; preds = %do.body61.i.2
  call void @__sanitizer_cov_trace_pc() #12
  call void @clkdev_drop(ptr noundef nonnull %176) #10
  br label %if.end68.i.2

if.end68.i.2:                                     ; preds = %if.then65.i.2, %do.body61.i.2.if.end68.i.2_crit_edge
  %arrayidx70.i.2 = getelementptr %struct.da7219_priv, ptr %108, i32 0, i32 8, i32 %dec.i.1
  call void @clk_hw_unregister(ptr noundef %arrayidx70.i.2) #10
  br label %do.end73.i

do.end73.i:                                       ; preds = %if.end68.i.2, %if.end68.i.1.do.end73.i_crit_edge, %if.end68.i.do.end73.i_crit_edge
  br i1 %tobool.not.i155, label %do.end73.i.da7219_register_dai_clks.exit_crit_edge, label %if.then75.i

do.end73.i.da7219_register_dai_clks.exit_crit_edge: ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_register_dai_clks.exit

if.then75.i:                                      ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %clk_hw_data35.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %clk_hw_data35.i, align 4
  call void @kfree(ptr noundef %178) #10
  br label %da7219_register_dai_clks.exit

da7219_register_dai_clks.exit.thread:             ; preds = %if.then50.i.da7219_register_dai_clks.exit.thread_crit_edge, %for.inc.1.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #10
  br label %if.end69

da7219_register_dai_clks.exit:                    ; preds = %if.then75.i, %do.end73.i.da7219_register_dai_clks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool67.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool67.not, label %da7219_register_dai_clks.exit.if.end69_crit_edge, label %da7219_register_dai_clks.exit.err_put_clk_crit_edge

da7219_register_dai_clks.exit.err_put_clk_crit_edge: ; preds = %da7219_register_dai_clks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_clk

da7219_register_dai_clks.exit.if.end69_crit_edge: ; preds = %da7219_register_dai_clks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end69:                                         ; preds = %da7219_register_dai_clks.exit.if.end69_crit_edge, %da7219_register_dai_clks.exit.thread
  %call70 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 148, i32 noundef 1, i32 noundef 1) #10
  %call71 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 101, i32 noundef 32, i32 noundef 32) #10
  %call72 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 103, i32 noundef 32, i32 noundef 32) #10
  %call73 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 105, i32 noundef 32, i32 noundef 32) #10
  %call74 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 106, i32 noundef 32, i32 noundef 32) #10
  %call75 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 107, i32 noundef 32, i32 noundef 32) #10
  %call76 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 108, i32 noundef 32, i32 noundef 32) #10
  %call77 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 107, i32 noundef 4, i32 noundef 4) #10
  %call78 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 108, i32 noundef 4, i32 noundef 4) #10
  %call79 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 182, i32 noundef 7) #10
  %call80 = call i32 @da7219_aad_init(ptr noundef %component) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end69.cleanup_crit_edge, label %err_free_dai_clks

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_free_dai_clks:                                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @da7219_free_dai_clks(ptr noundef %component)
  br label %err_put_clk

err_put_clk:                                      ; preds = %err_free_dai_clks, %da7219_register_dai_clks.exit.err_put_clk_crit_edge, %da7219_register_dai_clks.exit.thread164
  %ret.0 = phi i32 [ %ret.1.i, %da7219_register_dai_clks.exit.err_put_clk_crit_edge ], [ %call80, %err_free_dai_clks ], [ -12, %da7219_register_dai_clks.exit.thread164 ]
  %179 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mclk, align 4
  call void @clk_put(ptr noundef %180) #10
  br label %err_disable_reg

err_disable_reg:                                  ; preds = %err_put_clk, %if.then55.err_disable_reg_crit_edge, %do.end48, %do.end40
  %ret.1 = phi i32 [ %call35, %do.end40 ], [ %call43, %do.end48 ], [ %ret.0, %err_put_clk ], [ %101, %if.then55.err_disable_reg_crit_edge ]
  %supplies = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 4
  %call85 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #10
  call void @regulator_bulk_free(i32 noundef 3, ptr noundef %supplies) #10
  br label %cleanup

cleanup:                                          ; preds = %err_disable_reg, %if.end69.cleanup_crit_edge, %do.end25.i, %do.end.i
  %retval.0 = phi i32 [ %ret.1, %err_disable_reg ], [ 0, %if.end69.cleanup_crit_edge ], [ %call20.i, %do.end25.i ], [ %call3.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %system_status) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %system_active) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da7219_remove(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @da7219_aad_exit(ptr noundef %component) #10
  tail call fastcc void @da7219_free_dai_clks(ptr noundef %component)
  %mclk = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk, align 4
  tail call void @clk_put(ptr noundef %5) #10
  %supplies = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 4
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #10
  tail call void @regulator_bulk_free(i32 noundef 3, ptr noundef %supplies) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_suspend(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %wakeup_source = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %wakeup_source to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wakeup_source, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @da7219_aad_suspend(ptr noundef %component) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_resume(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 1) #10
  %wakeup_source = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %wakeup_source to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wakeup_source, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @da7219_aad_resume(ptr noundef %component) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_set_bias_level(ptr noundef %component, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.374)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb24
    i32 2, label %sw.bb
    i32 1, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %mclk = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mclk, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %if.then2
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef nonnull %8) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then2.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then2.do.end_crit_edge ]
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.332) #13
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %dapm.i.i42 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %11 = ptrtoint ptr %dapm.i.i42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dapm.i.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then12, label %sw.bb9.if.end14_crit_edge

sw.bb9.if.end14_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 50, i32 noundef 8, i32 noundef 8) #10
  %13 = ptrtoint ptr %dapm.i.i42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %dapm.i.i42, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %sw.bb9.if.end14_crit_edge
  %14 = phi i32 [ %.pr, %if.then12 ], [ %12, %sw.bb9.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp16 = icmp eq i32 %14, 2
  br i1 %cmp16, label %if.then17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  %mclk18 = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %mclk18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mclk18, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %if.then17.cleanup_crit_edge, label %if.then20

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef nonnull %16) #10
  tail call void @clk_unprepare(ptr noundef nonnull %16) #10
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %wakeup_source = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %wakeup_source to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wakeup_source, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool25.not = icmp eq i8 %18, 0
  br i1 %tobool25.not, label %if.then26, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 50, i32 noundef 8, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %sw.bb24.cleanup_crit_edge, %if.then20, %if.then17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %sw.bb24.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_mixin_gain_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %call2 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %alc_en = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %alc_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %alc_en, align 2, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @da7219_alc_calib(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_range(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_range(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_range(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_alc_sw_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %alc_en = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 17
  %8 = ptrtoint ptr %alc_en to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %alc_en, align 2, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @da7219_alc_calib(ptr noundef %1)
  %10 = ptrtoint ptr %alc_en to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %alc_en, align 2
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %alc_en4 = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 17
  %11 = ptrtoint ptr %alc_en4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %alc_en4, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call5 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #10
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_volsw_locked_get(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %ctrl_lock = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #10
  %call2 = tail call i32 @snd_soc_get_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #10
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_volsw_locked_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %ctrl_lock = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #10
  %call2 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #10
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_enum_locked_get(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %ctrl_lock = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #10
  %call2 = tail call i32 @snd_soc_get_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #10
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_enum_locked_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %ctrl_lock = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #10
  %call2 = tail call i32 @snd_soc_put_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #10
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_tonegen_freq_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %reg2 = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #10
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %val, align 2, !annotation !783
  %ctrl_lock = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #10
  %regmap = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_raw_read(ptr noundef %13, i32 noundef %10, ptr noundef nonnull %val, i32 noundef 2) #10
  call void @mutex_unlock(ptr noundef %ctrl_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %val, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv = zext i16 %16 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #10
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_tonegen_freq_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %reg2 = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  %conv = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %val, align 2
  %ctrl_lock = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #10
  %regmap = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_raw_write(ptr noundef %16, i32 noundef %10, ptr noundef nonnull %val, i32 noundef 2) #10
  call void @mutex_unlock(ptr noundef %ctrl_lock) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #10
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @da7219_alc_calib(ptr noundef %component) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 99) #10
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 101) #10
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 103) #10
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 128, i32 noundef 128) #10
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 99, i32 noundef 64, i32 noundef 64) #10
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 101, i32 noundef 192, i32 noundef 128) #10
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 103, i32 noundef 192, i32 noundef 128) #10
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 47, i32 noundef 16, i32 noundef 16) #10
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 47) #10
  %and = and i32 %call10, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.body
  %and14 = and i32 %call10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.end.if.end_crit_edge, label %do.end18

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.141) #13
  br label %if.end

if.end:                                           ; preds = %do.end18, %do.end.if.end_crit_edge
  %.sink = phi i32 [ 0, %do.end18 ], [ 3, %do.end.if.end_crit_edge ]
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 47, i32 noundef 3, i32 noundef %.sink) #10
  %conv21 = and i32 %call3, 255
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 103, i32 noundef %conv21) #10
  %conv23 = and i32 %call1, 255
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 101, i32 noundef %conv23) #10
  %conv25 = and i32 %call, 255
  %call26 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 99, i32 noundef %conv25) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_mic_pga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %micbias_on_event = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %micbias_on_event to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %micbias_on_event, align 1, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %micbias_on_event to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %micbias_on_event, align 1
  %mic_pga_delay = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 19
  %9 = ptrtoint ptr %mic_pga_delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mic_pga_delay, align 4
  tail call void @msleep(i32 noundef %10) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_settling_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.375)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 8, label %entry.sw.bb_crit_edge1
  ]

entry.sw.bb_crit_edge1:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge1
  tail call void @msleep(i32 noundef 40) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_dai_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %arrayidx = getelementptr %struct.da7219_priv, ptr %5, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.376)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb37
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %master = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 15
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %master, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %sw.bb.if.end9_crit_edge, label %if.then

sw.bb.if.end9_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %sw.bb
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.do.end_crit_edge

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %if.then3
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9_crit_edge, label %if.then3.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef nonnull %7) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then3.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then3.do.end_crit_edge ]
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.286) #13
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 43, i32 noundef 128, i32 noundef 128) #10
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end.i.if.end9_crit_edge, %sw.bb.if.end9_crit_edge
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 148, i32 noundef 1, i32 noundef 0) #10
  %call11 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 32) #10
  %and = and i32 %call11, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and)
  %cmp.not = icmp eq i32 %and, 128
  br i1 %cmp.not, label %do.body16.preheader, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body16.preheader:                              ; preds = %if.end9
  %call17 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 37) #10
  %and20 = and i32 %call17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.cond25, label %do.body16.preheader.cleanup_crit_edge

do.body16.preheader.cleanup_crit_edge:            ; preds = %do.body16.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond25:                                        ; preds = %do.body16.preheader
  tail call void @msleep(i32 noundef 50) #10
  %call17.1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 37) #10
  %and20.1 = and i32 %call17.1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.1)
  %tobool21.not.1 = icmp eq i32 %and20.1, 0
  br i1 %tobool21.not.1, label %do.cond25.1, label %do.cond25.cleanup_crit_edge

do.cond25.cleanup_crit_edge:                      ; preds = %do.cond25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond25.1:                                      ; preds = %do.cond25
  tail call void @msleep(i32 noundef 50) #10
  %call17.2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 37) #10
  %and20.2 = and i32 %call17.2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.2)
  %tobool21.not.2 = icmp eq i32 %and20.2, 0
  br i1 %tobool21.not.2, label %do.cond25.2, label %do.cond25.1.cleanup_crit_edge

do.cond25.1.cleanup_crit_edge:                    ; preds = %do.cond25.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond25.2:                                      ; preds = %do.cond25.1
  tail call void @msleep(i32 noundef 50) #10
  %call17.3 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 37) #10
  %and20.3 = and i32 %call17.3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.3)
  %tobool21.not.3 = icmp eq i32 %and20.3, 0
  br i1 %tobool21.not.3, label %do.cond25.3, label %do.cond25.2.cleanup_crit_edge

do.cond25.2.cleanup_crit_edge:                    ; preds = %do.cond25.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond25.3:                                      ; preds = %do.cond25.2
  tail call void @msleep(i32 noundef 50) #10
  %call17.4 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 37) #10
  %and20.4 = and i32 %call17.4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.4)
  %tobool21.not.4 = icmp eq i32 %and20.4, 0
  br i1 %tobool21.not.4, label %do.cond25.4, label %do.cond25.3.cleanup_crit_edge

do.cond25.3.cleanup_crit_edge:                    ; preds = %do.cond25.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond25.4:                                      ; preds = %do.cond25.3
  tail call void @msleep(i32 noundef 50) #10
  %call17.5 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 37) #10
  %and20.5 = and i32 %call17.5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.5)
  %tobool21.not.5 = icmp eq i32 %and20.5, 0
  br i1 %tobool21.not.5, label %do.cond25.5, label %do.cond25.4.cleanup_crit_edge

do.cond25.4.cleanup_crit_edge:                    ; preds = %do.cond25.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond25.5:                                      ; preds = %do.cond25.4
  tail call void @msleep(i32 noundef 50) #10
  %call17.6 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 37) #10
  %and20.6 = and i32 %call17.6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.6)
  %tobool21.not.6 = icmp eq i32 %and20.6, 0
  br i1 %tobool21.not.6, label %do.cond25.6, label %do.cond25.5.cleanup_crit_edge

do.cond25.5.cleanup_crit_edge:                    ; preds = %do.cond25.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond25.6:                                      ; preds = %do.cond25.5
  tail call void @msleep(i32 noundef 50) #10
  %call17.7 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 37) #10
  %and20.7 = and i32 %call17.7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.7)
  %tobool21.not.7 = icmp eq i32 %and20.7, 0
  br i1 %tobool21.not.7, label %do.cond25.7, label %do.cond25.6.cleanup_crit_edge

do.cond25.6.cleanup_crit_edge:                    ; preds = %do.cond25.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.cond25.7:                                      ; preds = %do.cond25.6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 50) #10
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.289) #13
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  %call38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 148, i32 noundef 1, i32 noundef 1) #10
  %master39 = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 15
  %15 = ptrtoint ptr %master39 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %master39, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool40.not = icmp eq i8 %16, 0
  br i1 %tobool40.not, label %sw.bb37.cleanup_crit_edge, label %if.then41

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41:                                        ; preds = %sw.bb37
  %tobool42.not = icmp eq ptr %7, null
  br i1 %tobool42.not, label %if.else44, label %if.then43

if.then43:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef nonnull %7) #10
  tail call void @clk_unprepare(ptr noundef nonnull %7) #10
  br label %cleanup

if.else44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 43, i32 noundef 128, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else44, %if.then43, %sw.bb37.cleanup_crit_edge, %do.cond25.7, %do.cond25.6.cleanup_crit_edge, %do.cond25.5.cleanup_crit_edge, %do.cond25.4.cleanup_crit_edge, %do.cond25.3.cleanup_crit_edge, %do.cond25.2.cleanup_crit_edge, %do.cond25.1.cleanup_crit_edge, %do.cond25.cleanup_crit_edge, %do.body16.preheader.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %do.cond25.7 ], [ 0, %if.then43 ], [ 0, %if.else44 ], [ 0, %sw.bb37.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.cond25.6.cleanup_crit_edge ], [ 0, %do.cond25.5.cleanup_crit_edge ], [ 0, %do.cond25.4.cleanup_crit_edge ], [ 0, %do.cond25.3.cleanup_crit_edge ], [ 0, %do.cond25.2.cleanup_crit_edge ], [ 0, %do.cond25.1.cleanup_crit_edge ], [ 0, %do.cond25.cleanup_crit_edge ], [ 0, %do.body16.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_mixout_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %reg = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.377)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 110, label %entry.sw.epilog_crit_edge
    i32 111, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %hp_ctrl.0 = phi i32 [ 108, %sw.bb1 ], [ 107, %entry.sw.epilog_crit_edge ]
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.378)
  switch i32 %event, label %sw.epilog.cleanup_crit_edge [
    i32 4, label %sw.bb2
    i32 2, label %sw.bb6
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %hp_ctrl.0, i32 noundef 4, i32 noundef 4) #10
  tail call void @msleep(i32 noundef 30) #10
  br label %cleanup

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %hp_ctrl.0, i32 noundef 4, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb2, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb6 ], [ 0, %sw.bb2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_gain_ramp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.379)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge12
    i32 2, label %entry.sw.bb4_crit_edge
    i32 8, label %entry.sw.bb4_crit_edge13
  ]

entry.sw.bb4_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge12
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 146) #10
  %conv = trunc i32 %call2 to i8
  %gain_ramp_ctrl = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 20
  %7 = ptrtoint ptr %gain_ramp_ctrl to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %gain_ramp_ctrl, align 4
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge13
  %gain_ramp_ctrl5 = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %gain_ramp_ctrl5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gain_ramp_ctrl5, align 4
  %conv6 = zext i8 %9 to i32
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb
  %conv6.sink = phi i32 [ %conv6, %sw.bb4 ], [ 1, %sw.bb ]
  %call7 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 146, i32 noundef %conv6.sink) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_reinit_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da7219_aad_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @da7219_free_dai_clks(ptr nocapture noundef readonly %component) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @of_clk_del_provider(ptr noundef nonnull %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.da7219_priv, ptr %3, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clkdev_drop(ptr noundef nonnull %7) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %arrayidx6 = getelementptr %struct.da7219_priv, ptr %3, i32 0, i32 8, i32 1
  tail call void @clk_hw_unregister(ptr noundef %arrayidx6) #10
  %arrayidx.1 = getelementptr %struct.da7219_priv, ptr %3, i32 0, i32 10, i32 0
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool1.not.1 = icmp eq ptr %9, null
  br i1 %tobool1.not.1, label %if.end5.if.end5.1_crit_edge, label %if.then2.1

if.end5.if.end5.1_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.1

if.then2.1:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clkdev_drop(ptr noundef nonnull %9) #10
  br label %if.end5.1

if.end5.1:                                        ; preds = %if.then2.1, %if.end5.if.end5.1_crit_edge
  %arrayidx6.1 = getelementptr %struct.da7219_priv, ptr %3, i32 0, i32 8, i32 0
  tail call void @clk_hw_unregister(ptr noundef %arrayidx6.1) #10
  br i1 %tobool.not, label %if.end5.1.if.end9_crit_edge, label %if.then8

if.end5.1.if.end9_crit_edge:                      ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #12
  %clk_hw_data = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %clk_hw_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_hw_data, align 4
  tail call void @kfree(ptr noundef %11) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.1.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_free(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdev_hw_create(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdev_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_wclk_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr i8, ptr %hw, i32 56
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %master, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %hw, i32 -240
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 43, i32 noundef 128, i32 noundef 128) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da7219_wclk_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr i8, ptr %hw, i32 56
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %master, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %hw, i32 -240
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 43, i32 noundef 128, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_wclk_is_prepared(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr i8, ptr %hw, i32 56
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %master, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %hw, i32 -240
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 43) #10
  %and = lshr i32 %call, 7
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_wclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -240
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 23) #10
  %and = and i32 %call, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 15
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.da7219_wclk_recalc_rate, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @da7219_wclk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr i8, ptr %hw, i32 56
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %master, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11025, i32 %rate)
  %cmp = icmp ult i32 %rate, 11025
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %rate)
  %cmp2 = icmp ult i32 %rate, 12000
  br i1 %cmp2, label %if.else.cleanup_crit_edge, label %if.else4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %rate)
  %cmp5 = icmp ult i32 %rate, 16000
  br i1 %cmp5, label %if.else4.cleanup_crit_edge, label %if.else7

if.else4.cleanup_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else7:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22050, i32 %rate)
  %cmp8 = icmp ult i32 %rate, 22050
  br i1 %cmp8, label %if.else7.cleanup_crit_edge, label %if.else10

if.else7.cleanup_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %rate)
  %cmp11 = icmp ult i32 %rate, 24000
  br i1 %cmp11, label %if.else10.cleanup_crit_edge, label %if.else13

if.else10.cleanup_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %rate)
  %cmp14 = icmp ult i32 %rate, 32000
  br i1 %cmp14, label %if.else13.cleanup_crit_edge, label %if.else16

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else16:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %rate)
  %cmp17 = icmp ult i32 %rate, 44100
  br i1 %cmp17, label %if.else16.cleanup_crit_edge, label %if.else19

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp20 = icmp ult i32 %rate, 48000
  br i1 %cmp20, label %if.else19.cleanup_crit_edge, label %if.else22

if.else19.cleanup_crit_edge:                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %rate)
  %cmp23 = icmp ult i32 %rate, 88200
  br i1 %cmp23, label %if.else22.cleanup_crit_edge, label %if.else25

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else25:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %rate)
  %cmp26 = icmp ult i32 %rate, 96000
  %. = select i1 %cmp26, i32 88200, i32 96000
  br label %cleanup

cleanup:                                          ; preds = %if.else25, %if.else22.cleanup_crit_edge, %if.else19.cleanup_crit_edge, %if.else16.cleanup_crit_edge, %if.else13.cleanup_crit_edge, %if.else10.cleanup_crit_edge, %if.else7.cleanup_crit_edge, %if.else4.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 8000, %if.end.cleanup_crit_edge ], [ 11025, %if.else.cleanup_crit_edge ], [ 12000, %if.else4.cleanup_crit_edge ], [ 16000, %if.else7.cleanup_crit_edge ], [ 22050, %if.else10.cleanup_crit_edge ], [ 24000, %if.else13.cleanup_crit_edge ], [ 32000, %if.else16.cleanup_crit_edge ], [ 44100, %if.else19.cleanup_crit_edge ], [ 48000, %if.else22.cleanup_crit_edge ], [ %., %if.else25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_wclk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr i8, ptr %hw, i32 56
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %master, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %hw, i32 -240
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.380)
  switch i32 %rate, label %if.end.cleanup_crit_edge [
    i32 8000, label %if.end.sw.epilog.i_crit_edge
    i32 11025, label %sw.bb1.i
    i32 12000, label %sw.bb2.i
    i32 16000, label %sw.bb3.i
    i32 22050, label %sw.bb4.i
    i32 24000, label %sw.bb5.i
    i32 32000, label %sw.bb6.i
    i32 44100, label %sw.bb7.i
    i32 48000, label %sw.bb8.i
    i32 88200, label %sw.bb9.i
    i32 96000, label %sw.bb10.i
  ]

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.sw.epilog.i_crit_edge
  %fs.0.i = phi i32 [ 15, %sw.bb10.i ], [ 14, %sw.bb9.i ], [ 11, %sw.bb8.i ], [ 10, %sw.bb7.i ], [ 9, %sw.bb6.i ], [ 7, %sw.bb5.i ], [ 6, %sw.bb4.i ], [ 5, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %if.end.sw.epilog.i_crit_edge ]
  %call.i = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 23, i32 noundef %fs.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.i ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_bclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -252
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 43) #10
  %and = and i32 %call, 3
  %switch.offset = add nuw nsw i32 %and, 5
  %mul8 = shl i32 %parent_rate, %switch.offset
  ret i32 %mul8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @da7219_bclk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %master = getelementptr i8, ptr %hw, i32 44
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %master, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %div.i = udiv i32 %rate, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div.i)
  %cmp.i = icmp ult i32 %div.i, 64
  br i1 %cmp.i, label %if.end.da7219_bclk_get_factor.exit_crit_edge, label %if.else.i

if.end.da7219_bclk_get_factor.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_bclk_get_factor.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div.i)
  %cmp1.i = icmp ult i32 %div.i, 128
  br i1 %cmp1.i, label %if.else.i.da7219_bclk_get_factor.exit_crit_edge, label %if.else3.i

if.else.i.da7219_bclk_get_factor.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_bclk_get_factor.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i)
  %cmp4.i = icmp ult i32 %div.i, 256
  %..i = select i1 %cmp4.i, i32 128, i32 256
  br label %da7219_bclk_get_factor.exit

da7219_bclk_get_factor.exit:                      ; preds = %if.else3.i, %if.else.i.da7219_bclk_get_factor.exit_crit_edge, %if.end.da7219_bclk_get_factor.exit_crit_edge
  %retval.0.i = phi i32 [ 32, %if.end.da7219_bclk_get_factor.exit_crit_edge ], [ 64, %if.else.i.da7219_bclk_get_factor.exit_crit_edge ], [ %..i, %if.else3.i ]
  %mul = mul i32 %retval.0.i, %1
  br label %cleanup

cleanup:                                          ; preds = %da7219_bclk_get_factor.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %da7219_bclk_get_factor.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_bclk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr i8, ptr %hw, i32 44
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %master, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %hw, i32 -252
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %div.i = udiv i32 %rate, %parent_rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div.i)
  %cmp.i = icmp ult i32 %div.i, 64
  br i1 %cmp.i, label %if.end.sw.epilog.i_crit_edge, label %if.else.i

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div.i)
  %cmp1.i = icmp ult i32 %div.i, 128
  br i1 %cmp1.i, label %if.else.i.sw.epilog.i_crit_edge, label %if.else3.i

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i)
  %cmp4.i = icmp ult i32 %div.i, 256
  %spec.select = select i1 %cmp4.i, i32 2, i32 3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else3.i, %if.else.i.sw.epilog.i_crit_edge, %if.end.sw.epilog.i_crit_edge
  %bclks_per_wclk.0.i = phi i32 [ 1, %if.else.i.sw.epilog.i_crit_edge ], [ 0, %if.end.sw.epilog.i_crit_edge ], [ %spec.select, %if.else3.i ]
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 43, i32 noundef 3, i32 noundef %bclks_per_wclk.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @da7219_aad_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @da7219_aad_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @da7219_aad_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %clk_src = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %clk_id)
  %cmp = icmp eq i32 %7, %clk_id
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mclk_rate = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %freq)
  %cmp2 = icmp eq i32 %9, %freq
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = add i32 %freq, -54000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -52000001, i32 %10)
  %11 = icmp ult i32 %10, -52000001
  br i1 %11, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.335, i32 noundef %freq) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %pll_lock = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %pll_lock, i32 noundef 0) #10
  %14 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.381)
  switch i32 %clk_id, label %do.end12 [
    i32 1, label %if.end6.sw.epilog_crit_edge
    i32 0, label %sw.bb8
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %dev13 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 2
  %15 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.338, i32 noundef %clk_id) #13
  tail call void @mutex_unlock(ptr noundef %pll_lock) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %if.end6.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.bb8 ], [ 32, %if.end6.sw.epilog_crit_edge ]
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 32, i32 noundef 32, i32 noundef %.sink) #10
  %17 = ptrtoint ptr %clk_src to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %clk_id, ptr %clk_src, align 4
  %mclk = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 12
  %18 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mclk, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %sw.epilog.if.end29_crit_edge, label %if.then16

sw.epilog.if.end29_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then16:                                        ; preds = %sw.epilog
  %call18 = tail call i32 @clk_round_rate(ptr noundef nonnull %19, i32 noundef %freq) #10
  %20 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mclk, align 4
  %call20 = tail call i32 @clk_set_rate(ptr noundef %21, i32 noundef %call18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then16.if.end29_crit_edge, label %do.end25

if.then16.if.end29_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.end25:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %dev26 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 2
  %22 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.341, i32 noundef %call18) #13
  tail call void @mutex_unlock(ptr noundef %pll_lock) #10
  br label %cleanup

if.end29:                                         ; preds = %if.then16.if.end29_crit_edge, %sw.epilog.if.end29_crit_edge
  %freq.addr.0 = phi i32 [ %call18, %if.then16.if.end29_crit_edge ], [ %freq, %sw.epilog.if.end29_crit_edge ]
  %mclk_rate30 = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 13
  %24 = ptrtoint ptr %mclk_rate30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %freq.addr.0, ptr %mclk_rate30, align 4
  tail call void @mutex_unlock(ptr noundef %pll_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end25, %do.end12, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ %call20, %do.end25 ], [ 0, %if.end29 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_set_dai_pll(ptr nocapture noundef readonly %codec_dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %fref, i32 noundef %fout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %pll_lock = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %pll_lock, i32 noundef 0) #10
  %call2 = tail call i32 @da7219_set_pll(ptr noundef %1, i32 noundef %source, i32 noundef %fout)
  tail call void @mutex_unlock(ptr noundef %pll_lock) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.382)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %master3 = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %master3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %master3, align 4
  %and4 = and i32 %fmt, 15
  %9 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.383)
  switch i32 %and4, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.epilog.sw.bb5_crit_edge
    i32 3, label %sw.epilog.sw.bb5_crit_edge91
    i32 2, label %sw.epilog.sw.bb5_crit_edge92
    i32 5, label %sw.bb19
  ]

sw.epilog.sw.bb5_crit_edge92:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge91:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb5:                                           ; preds = %sw.epilog.sw.bb5_crit_edge, %sw.epilog.sw.bb5_crit_edge91, %sw.epilog.sw.bb5_crit_edge92
  %and6 = lshr i32 %fmt, 8
  %10 = and i32 %and6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %11 = icmp ult i32 %10, 5
  br i1 %11, label %switch.hole_check, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb19:                                          ; preds = %sw.epilog
  %and20 = lshr i32 %fmt, 8
  %12 = and i32 %and20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %switch.hole_check84, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb5
  %switch.maskindex = trunc i32 %10 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %14 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit.not = icmp eq i8 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.da7219_set_dai_fmt, i32 0, i32 %10
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %16 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.384)
  switch i32 %and4, label %switch.lookup.cleanup_crit_edge [
    i32 1, label %switch.lookup.sw.epilog55_crit_edge
    i32 3, label %sw.bb42
    i32 2, label %sw.bb46
  ]

switch.lookup.sw.epilog55_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog55

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb42:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog55

sw.bb46:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog55

switch.hole_check84:                              ; preds = %sw.bb19
  %switch.maskindex86 = trunc i32 %12 to i8
  %switch.shifted87 = lshr i8 29, %switch.maskindex86
  %17 = and i8 %switch.shifted87, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %switch.lobit88.not = icmp eq i8 %17, 0
  br i1 %switch.lobit88.not, label %switch.hole_check84.cleanup_crit_edge, label %switch.lookup85

switch.hole_check84.cleanup_crit_edge:            ; preds = %switch.hole_check84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup85:                                  ; preds = %switch.hole_check84
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep89 = getelementptr inbounds [5 x i32], ptr @switch.table.da7219_set_dai_fmt.371, i32 0, i32 %12
  %18 = ptrtoint ptr %switch.gep89 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load90 = load i32, ptr %switch.gep89, align 4
  br label %sw.epilog55

sw.epilog55:                                      ; preds = %switch.lookup85, %sw.bb46, %sw.bb42, %switch.lookup.sw.epilog55_crit_edge
  %dai_clk_mode.082 = phi i32 [ %switch.load, %sw.bb46 ], [ %switch.load, %sw.bb42 ], [ %switch.load, %switch.lookup.sw.epilog55_crit_edge ], [ %switch.load90, %switch.lookup85 ]
  %dai_ctrl.0 = phi i32 [ 2, %sw.bb46 ], [ 1, %sw.bb42 ], [ 0, %switch.lookup.sw.epilog55_crit_edge ], [ 3, %switch.lookup85 ]
  %call57 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 43, i32 noundef 12, i32 noundef %dai_clk_mode.082) #10
  %call59 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 44, i32 noundef 3, i32 noundef %dai_ctrl.0) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog55, %switch.hole_check84.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog55 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %sw.bb19.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ -22, %switch.hole_check84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_set_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #0 align 64 {
entry:
  %dai_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
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
  %dai_clks = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %dai_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai_clks, align 4
  %arrayidx3 = getelementptr %struct.da7219_priv, ptr %5, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dai_offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %tobool.not = icmp eq i32 %tx_mask, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 45, i32 noundef 131, i32 noundef 0) #10
  %tdm_en = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 16
  %10 = ptrtoint ptr %tdm_en to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %tdm_en, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = tail call i32 @llvm.cttz.i32(i32 %tx_mask, i1 true), !range !785
  %shr = lshr i32 %tx_mask, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp91 = icmp ugt i32 %shr, 3
  br i1 %cmp91, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.343, i32 noundef 2) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %mul = mul i32 %11, %slot_width
  %conv11 = trunc i32 %mul to i16
  %conv12 = and i32 %mul, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %conv12)
  %cmp13 = icmp ugt i32 %conv12, 767
  br i1 %cmp13, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.346, i32 noundef %conv12) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %master = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 15
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %master, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  br i1 %tobool22.not, label %if.end21.if.end46_crit_edge, label %if.then23

if.end21.if.end46_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then23:                                        ; preds = %if.end21
  %mul24 = mul i32 %slot_width, %slots
  %tobool25.not = icmp eq ptr %9, null
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then23
  %call27 = tail call i32 @clk_get_rate(ptr noundef %7) #10
  %mul28 = mul i32 %call27, %mul24
  %call29 = tail call i32 @clk_set_rate(ptr noundef nonnull %9, i32 noundef %mul28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then26.if.end46_crit_edge, label %do.end34

if.then26.if.end46_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end34:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.349, i32 noundef %mul28, i32 noundef %call29) #13
  br label %cleanup

if.else:                                          ; preds = %if.then23
  %16 = add i32 %mul24, -32
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %18 = icmp ult i32 %17, 8
  br i1 %18, label %switch.hole_check, label %if.else.do.end42_crit_edge

if.else.do.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

switch.hole_check:                                ; preds = %if.else
  %switch.maskindex = trunc i32 %17 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %19 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %switch.lobit.not = icmp eq i8 %19, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end42_crit_edge, label %switch.lookup

switch.hole_check.do.end42_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.da7219_set_dai_tdm_slot, i32 0, i32 %17
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 43, i32 noundef 3, i32 noundef %switch.load) #10
  br label %if.end46

do.end42:                                         ; preds = %switch.hole_check.do.end42_crit_edge, %if.else.do.end42_crit_edge
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.352, i32 noundef %mul24, i32 noundef -22) #13
  br label %cleanup

if.end46:                                         ; preds = %switch.lookup, %if.then26.if.end46_crit_edge, %if.end21.if.end46_crit_edge
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv11)
  %24 = ptrtoint ptr %dai_offset to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %dai_offset, align 2
  %regmap = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 5
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call47 = call i32 @regmap_bulk_write(ptr noundef %26, i32 noundef 48, ptr noundef nonnull %dai_offset, i32 noundef 2) #10
  %or = or i32 %shr, 128
  %call48 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 45, i32 noundef 131, i32 noundef %or) #10
  %tdm_en49 = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 16
  %27 = ptrtoint ptr %tdm_en49 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %tdm_en49, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end42, %do.end34, %do.end18, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ %call29, %do.end34 ], [ 0, %if.end46 ], [ -22, %do.end42 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dai_offset) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %dai_clks = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %dai_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai_clks, align 4
  %arrayidx3 = getelementptr %struct.da7219_priv, ptr %5, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %11, %entry.if.then.i.i.i_crit_edge ], [ %14, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #10, !range !785
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #10
  %15 = add i32 %call1.i, -16
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %17 = icmp ult i32 %16, 5
  br i1 %17, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %16 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %18 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %switch.lobit.not = icmp eq i8 %18, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.da7219_hw_params, i32 0, i32 %16
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %22 = add i32 %21, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %22)
  %23 = icmp ult i32 %22, -2
  br i1 %23, label %do.end, label %if.end

do.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.354, i32 noundef 2) #13
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %shl = shl nuw nsw i32 %21, 4
  %arrayidx.i.i150 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %arrayidx.i.i150 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i150, align 4
  %master = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 15
  %28 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %master, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  %tobool27.not = icmp eq ptr %7, null
  %or.cond149 = select i1 %tobool.not, i1 true, i1 %tobool27.not
  br i1 %or.cond149, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end
  %call29 = tail call i32 @clk_set_rate(ptr noundef nonnull %7, i32 noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end45_crit_edge, label %do.end34

if.then28.if.end45_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.357, i32 noundef %27, i32 noundef %call29) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %32 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.385)
  switch i32 %27, label %do.end42 [
    i32 8000, label %if.else.da7219_set_sr.exit.thread_crit_edge
    i32 11025, label %sw.bb1.i
    i32 12000, label %sw.bb2.i
    i32 16000, label %sw.bb3.i
    i32 22050, label %sw.bb4.i
    i32 24000, label %sw.bb5.i
    i32 32000, label %sw.bb6.i
    i32 44100, label %sw.bb7.i
    i32 48000, label %sw.bb8.i
    i32 88200, label %sw.bb9.i
    i32 96000, label %sw.bb10.i
  ]

if.else.da7219_set_sr.exit.thread_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_set_sr.exit.thread

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_set_sr.exit.thread

sw.bb2.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_set_sr.exit.thread

sw.bb3.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_set_sr.exit.thread

sw.bb4.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_set_sr.exit.thread

sw.bb5.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_set_sr.exit.thread

sw.bb6.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_set_sr.exit.thread

sw.bb7.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_set_sr.exit.thread

sw.bb8.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_set_sr.exit.thread

sw.bb9.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_set_sr.exit.thread

sw.bb10.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %da7219_set_sr.exit.thread

da7219_set_sr.exit.thread:                        ; preds = %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.else.da7219_set_sr.exit.thread_crit_edge
  %fs.0.i = phi i32 [ 15, %sw.bb10.i ], [ 14, %sw.bb9.i ], [ 11, %sw.bb8.i ], [ 10, %sw.bb7.i ], [ 9, %sw.bb6.i ], [ 7, %sw.bb5.i ], [ 6, %sw.bb4.i ], [ 5, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %if.else.da7219_set_sr.exit.thread_crit_edge ]
  %call.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 23, i32 noundef %fs.0.i) #10
  br label %if.end45

do.end42:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.360, i32 noundef %27, i32 noundef -22) #13
  br label %cleanup

if.end45:                                         ; preds = %da7219_set_sr.exit.thread, %if.then28.if.end45_crit_edge
  %35 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %master, align 4, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool47.not = icmp eq i8 %36, 0
  br i1 %tobool47.not, label %if.end45.if.end87_crit_edge, label %land.lhs.true49

if.end45.if.end87_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

land.lhs.true49:                                  ; preds = %if.end45
  %tdm_en = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 16
  %37 = ptrtoint ptr %tdm_en to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tdm_en, align 1, !range !784
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool50.not = icmp eq i8 %38, 0
  br i1 %tobool50.not, label %if.then51, label %land.lhs.true49.if.end87_crit_edge

land.lhs.true49.if.end87_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then51:                                        ; preds = %land.lhs.true49
  %mul = shl i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mul)
  %cmp52.inv = icmp sgt i32 %mul, 32
  %. = select i1 %cmp52.inv, i32 64, i32 32
  %tobool57.not = icmp eq ptr %9, null
  br i1 %tobool57.not, label %if.else77, label %if.then58

if.then58:                                        ; preds = %if.then51
  %mul59 = mul i32 %27, %.
  %call60 = tail call i32 @clk_round_rate(ptr noundef nonnull %9, i32 noundef %mul59) #10
  %div = udiv i32 %call60, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %.)
  %cmp61 = icmp ult i32 %div, %.
  br i1 %cmp61, label %do.end66, label %if.end68

do.end66:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.363) #13
  br label %cleanup

if.end68:                                         ; preds = %if.then58
  %call69 = tail call i32 @clk_set_rate(ptr noundef nonnull %9, i32 noundef %call60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end68.if.end87_crit_edge, label %do.end74

if.end68.if.end87_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.366, i32 noundef %call60, i32 noundef %call69) #13
  br label %cleanup

if.else77:                                        ; preds = %if.then51
  %43 = add nsw i32 %., -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %43)
  %switch = icmp ult i32 %43, 64
  br i1 %switch, label %da7219_set_bclks_per_wclk.exit.thread, label %do.end83

da7219_set_bclks_per_wclk.exit.thread:            ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #12
  %44 = lshr exact i32 %43, 5
  %call.i154 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 43, i32 noundef 3, i32 noundef %44) #10
  br label %if.end87

do.end83:                                         ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.369, i32 noundef %., i32 noundef -22) #13
  br label %cleanup

if.end87:                                         ; preds = %da7219_set_bclks_per_wclk.exit.thread, %if.end68.if.end87_crit_edge, %land.lhs.true49.if.end87_crit_edge, %if.end45.if.end87_crit_edge
  %shl.masked = and i32 %shl, 240
  %conv88 = or i32 %shl.masked, %switch.load
  %call89 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 44, i32 noundef 60, i32 noundef %conv88) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %do.end83, %do.end74, %do.end66, %do.end42, %do.end34, %do.end, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call29, %do.end34 ], [ 0, %if.end87 ], [ -22, %do.end66 ], [ %call69, %do.end74 ], [ -22, %do.end83 ], [ -22, %do.end42 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 450)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 450)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !25, !26, !28, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !217, !218, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !556, !558, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !614, !615, !616, !618, !619, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !639, !641, !643, !645, !647, !648, !650, !651, !653, !654, !655, !656, !658, !659, !660, !662, !664, !665, !666, !667, !669, !670, !671, !673, !674, !675, !677, !679, !681, !683, !685, !687, !688, !689, !690, !692, !693, !694, !696, !698, !699, !700, !702, !704, !705, !706, !707, !709, !711, !713, !715, !716, !717, !718, !720, !721, !722, !724, !725, !726, !728, !729, !730, !731, !733, !734, !735, !737, !738, !739, !741, !742, !743, !745, !746, !747, !748, !750, !751, !752, !754, !755, !756, !758, !759, !760, !762, !763, !764, !766, !767, !768, !770}
!llvm.module.flags = !{!772, !773, !774, !775, !776, !777, !778, !779}
!llvm.ident = !{!780}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/da7219.c", i32 1222, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @da7219_set_pll._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @da7219_set_pll._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/da7219.c", i32 1241, i32 3}
!10 = !{ptr @da7219_set_pll._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @da7219_set_pll._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/da7219.c", i32 1263, i32 3}
!14 = !{ptr @da7219_set_pll._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @da7219_set_pll._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_snd_soc_da7219__294_2713_da7219_i2c_driver_init6, !17, !"__initcall__kmod_snd_soc_da7219__294_2713_da7219_i2c_driver_init6", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/da7219.c", i32 2713, i32 1}
!18 = !{ptr @__exitcall_da7219_i2c_driver_exit, !17, !"__exitcall_da7219_i2c_driver_exit", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description295, !20, !"__UNIQUE_ID_description295", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/da7219.c", i32 2715, i32 1}
!21 = !{ptr @__UNIQUE_ID_author296, !22, !"__UNIQUE_ID_author296", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/da7219.c", i32 2716, i32 1}
!23 = !{ptr @__UNIQUE_ID_file297, !24, !"__UNIQUE_ID_file297", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/da7219.c", i32 2717, i32 1}
!25 = !{ptr @__UNIQUE_ID_license298, !24, !"__UNIQUE_ID_license298", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/da7219.c", i32 2704, i32 11}
!28 = !{ptr @da7219_i2c_driver, !29, !"da7219_i2c_driver", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/da7219.c", i32 2702, i32 26}
!30 = !{ptr @da7219_i2c_probe._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/da7219.c", i32 2666, i32 19}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/da7219.c", i32 2669, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @da7219_i2c_probe._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @da7219_i2c_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/da7219.c", i32 2686, i32 3}
!40 = !{ptr @da7219_i2c_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @da7219_i2c_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @da7219_regmap_config, !43, !"da7219_regmap_config", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/da7219.c", i32 2425, i32 35}
!44 = !{ptr @da7219_reg_defaults, !45, !"da7219_reg_defaults", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/da7219.c", i32 2305, i32 27}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/da7219.c", i32 1768, i32 56}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/da7219.c", i32 1770, i32 46}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/da7219.c", i32 1771, i32 46}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/da7219.c", i32 1772, i32 45}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/da7219.c", i32 1775, i32 3}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @da7219_fw_to_pdata._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @da7219_fw_to_pdata._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/da7219.c", i32 1779, i32 36}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/da7219.c", i32 1784, i32 40}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/da7219.c", i32 1738, i32 3}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @da7219_fw_micbias_lvl._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @da7219_fw_micbias_lvl._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/da7219.c", i32 1746, i32 19}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/da7219.c", i32 1748, i32 26}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/da7219.c", i32 1750, i32 26}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/da7219.c", i32 1753, i32 3}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @da7219_fw_mic_amp_in_sel._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @da7219_fw_mic_amp_in_sel._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @soc_component_dev_da7219, !81, !"soc_component_dev_da7219", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/da7219.c", i32 2629, i32 46}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/da7219.c", i32 473, i32 2}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/da7219.c", i32 476, i32 2}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/da7219.c", i32 481, i32 2}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/da7219.c", i32 486, i32 2}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/da7219.c", i32 489, i32 2}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/da7219.c", i32 492, i32 2}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/da7219.c", i32 497, i32 2}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/da7219.c", i32 501, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/da7219.c", i32 504, i32 2}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/da7219.c", i32 509, i32 2}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/da7219.c", i32 510, i32 2}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/da7219.c", i32 511, i32 2}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/da7219.c", i32 512, i32 2}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/da7219.c", i32 513, i32 2}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/da7219.c", i32 514, i32 2}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/da7219.c", i32 517, i32 2}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/da7219.c", i32 520, i32 2}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/da7219.c", i32 523, i32 2}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/da7219.c", i32 526, i32 2}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/da7219.c", i32 529, i32 2}
!122 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/da7219.c", i32 533, i32 2}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/da7219.c", i32 537, i32 2}
!126 = !{ptr @.str.71, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/da7219.c", i32 538, i32 2}
!128 = !{ptr @.str.73, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/da7219.c", i32 541, i32 2}
!130 = !{ptr @.str.75, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/da7219.c", i32 546, i32 2}
!132 = !{ptr @.str.76, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/da7219.c", i32 547, i32 2}
!134 = !{ptr @.str.77, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/da7219.c", i32 548, i32 2}
!136 = !{ptr @.str.78, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/da7219.c", i32 551, i32 2}
!138 = !{ptr @.str.80, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/da7219.c", i32 554, i32 2}
!140 = !{ptr @.str.82, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/da7219.c", i32 559, i32 2}
!142 = !{ptr @.str.84, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/da7219.c", i32 563, i32 2}
!144 = !{ptr @.str.85, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/da7219.c", i32 565, i32 2}
!146 = !{ptr @.str.87, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/da7219.c", i32 569, i32 2}
!148 = !{ptr @.str.88, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/da7219.c", i32 571, i32 2}
!150 = !{ptr @.str.90, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/da7219.c", i32 574, i32 2}
!152 = !{ptr @.str.92, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/da7219.c", i32 577, i32 2}
!154 = !{ptr @.str.94, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/da7219.c", i32 581, i32 2}
!156 = !{ptr @.str.96, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/da7219.c", i32 586, i32 2}
!158 = !{ptr @.str.97, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/da7219.c", i32 589, i32 2}
!160 = !{ptr @.str.98, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/da7219.c", i32 591, i32 2}
!162 = !{ptr @.str.99, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/da7219.c", i32 592, i32 2}
!164 = !{ptr @.str.100, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/da7219.c", i32 595, i32 2}
!166 = !{ptr @.str.102, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/da7219.c", i32 598, i32 2}
!168 = !{ptr @.str.104, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/da7219.c", i32 601, i32 2}
!170 = !{ptr @.str.106, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/da7219.c", i32 604, i32 2}
!172 = !{ptr @.str.108, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/da7219.c", i32 607, i32 2}
!174 = !{ptr @.str.110, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/da7219.c", i32 610, i32 2}
!176 = !{ptr @.str.112, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/da7219.c", i32 616, i32 2}
!178 = !{ptr @.str.113, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/da7219.c", i32 617, i32 2}
!180 = !{ptr @.str.115, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/da7219.c", i32 623, i32 2}
!182 = !{ptr @.str.116, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/da7219.c", i32 624, i32 2}
!184 = !{ptr @.str.117, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/da7219.c", i32 625, i32 2}
!186 = !{ptr @.str.118, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/da7219.c", i32 626, i32 2}
!188 = !{ptr @.str.120, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/da7219.c", i32 630, i32 2}
!190 = !{ptr @.str.122, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/da7219.c", i32 634, i32 2}
!192 = !{ptr @.str.124, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/da7219.c", i32 638, i32 2}
!194 = !{ptr @.str.126, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/da7219.c", i32 643, i32 2}
!196 = !{ptr @.str.128, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/da7219.c", i32 647, i32 2}
!198 = !{ptr @.str.130, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/da7219.c", i32 652, i32 2}
!200 = !{ptr @.str.131, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/da7219.c", i32 653, i32 2}
!202 = !{ptr @.str.133, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/da7219.c", i32 658, i32 2}
!204 = !{ptr @.str.135, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/da7219.c", i32 663, i32 2}
!206 = !{ptr @.str.137, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/da7219.c", i32 667, i32 2}
!208 = !{ptr @.str.139, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/da7219.c", i32 670, i32 2}
!210 = !{ptr @da7219_snd_controls, !211, !"da7219_snd_controls", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/da7219.c", i32 471, i32 38}
!212 = !{ptr @da7219_mic_gain_tlv, !213, !"da7219_mic_gain_tlv", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/da7219.c", i32 41, i32 14}
!214 = !{ptr @.str.141, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/da7219.c", i32 352, i32 3}
!216 = !{ptr @.str.142, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @da7219_alc_calib._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @da7219_alc_calib._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @da7219_mixin_gain_tlv, !220, !"da7219_mixin_gain_tlv", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/da7219.c", i32 42, i32 14}
!221 = !{ptr @da7219_adc_dig_gain_tlv, !222, !"da7219_adc_dig_gain_tlv", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/da7219.c", i32 43, i32 14}
!223 = !{ptr @da7219_alc_attack_rate, !224, !"da7219_alc_attack_rate", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/da7219.c", i32 69, i32 30}
!225 = !{ptr @.str.143, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/da7219.c", i32 64, i32 2}
!227 = !{ptr @.str.144, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/da7219.c", i32 64, i32 13}
!229 = !{ptr @.str.145, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/da7219.c", i32 64, i32 25}
!231 = !{ptr @.str.146, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/da7219.c", i32 64, i32 37}
!233 = !{ptr @.str.147, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/da7219.c", i32 64, i32 49}
!235 = !{ptr @.str.148, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/da7219.c", i32 64, i32 61}
!237 = !{ptr @.str.149, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/da7219.c", i32 65, i32 2}
!239 = !{ptr @.str.150, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/da7219.c", i32 65, i32 14}
!241 = !{ptr @.str.151, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/da7219.c", i32 65, i32 26}
!243 = !{ptr @.str.152, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/da7219.c", i32 65, i32 37}
!245 = !{ptr @.str.153, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/da7219.c", i32 65, i32 48}
!247 = !{ptr @.str.154, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/da7219.c", i32 65, i32 59}
!249 = !{ptr @.str.155, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/da7219.c", i32 66, i32 2}
!251 = !{ptr @da7219_alc_attack_rate_txt, !252, !"da7219_alc_attack_rate_txt", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/da7219.c", i32 63, i32 27}
!253 = !{ptr @da7219_alc_release_rate, !254, !"da7219_alc_release_rate", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/da7219.c", i32 78, i32 30}
!255 = !{ptr @.str.156, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/da7219.c", i32 74, i32 2}
!257 = !{ptr @.str.157, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/da7219.c", i32 74, i32 14}
!259 = !{ptr @.str.158, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/da7219.c", i32 74, i32 26}
!261 = !{ptr @.str.159, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/da7219.c", i32 74, i32 38}
!263 = !{ptr @.str.160, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/da7219.c", i32 74, i32 50}
!265 = !{ptr @.str.161, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/da7219.c", i32 74, i32 62}
!267 = !{ptr @.str.162, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/da7219.c", i32 75, i32 2}
!269 = !{ptr @.str.163, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/da7219.c", i32 75, i32 13}
!271 = !{ptr @.str.164, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/da7219.c", i32 75, i32 24}
!273 = !{ptr @.str.165, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/da7219.c", i32 75, i32 35}
!275 = !{ptr @.str.166, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/da7219.c", i32 75, i32 47}
!277 = !{ptr @da7219_alc_release_rate_txt, !278, !"da7219_alc_release_rate_txt", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/da7219.c", i32 73, i32 27}
!279 = !{ptr @da7219_alc_hold_time, !280, !"da7219_alc_hold_time", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/da7219.c", i32 88, i32 30}
!281 = !{ptr @.str.167, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/da7219.c", i32 83, i32 2}
!283 = !{ptr @.str.168, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/da7219.c", i32 83, i32 11}
!285 = !{ptr @.str.169, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/da7219.c", i32 83, i32 21}
!287 = !{ptr @.str.170, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/da7219.c", i32 83, i32 31}
!289 = !{ptr @.str.171, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/da7219.c", i32 83, i32 41}
!291 = !{ptr @.str.172, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/da7219.c", i32 83, i32 51}
!293 = !{ptr @.str.173, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/da7219.c", i32 83, i32 62}
!295 = !{ptr @.str.174, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/da7219.c", i32 84, i32 2}
!297 = !{ptr @.str.175, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/da7219.c", i32 84, i32 13}
!299 = !{ptr @.str.176, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/da7219.c", i32 84, i32 25}
!301 = !{ptr @.str.177, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/da7219.c", i32 84, i32 37}
!303 = !{ptr @.str.178, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/da7219.c", i32 84, i32 49}
!305 = !{ptr @.str.179, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/da7219.c", i32 85, i32 2}
!307 = !{ptr @.str.180, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/da7219.c", i32 85, i32 15}
!309 = !{ptr @.str.181, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/da7219.c", i32 85, i32 28}
!311 = !{ptr @.str.182, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/da7219.c", i32 85, i32 42}
!313 = !{ptr @da7219_alc_hold_time_txt, !314, !"da7219_alc_hold_time_txt", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/da7219.c", i32 82, i32 27}
!315 = !{ptr @da7219_alc_env_attack_rate, !316, !"da7219_alc_env_attack_rate", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/da7219.c", i32 96, i32 30}
!317 = !{ptr @.str.183, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/da7219.c", i32 93, i32 2}
!319 = !{ptr @.str.184, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/da7219.c", i32 93, i32 9}
!321 = !{ptr @.str.185, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/da7219.c", i32 93, i32 17}
!323 = !{ptr @.str.186, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/da7219.c", i32 93, i32 26}
!325 = !{ptr @da7219_alc_env_rate_txt, !326, !"da7219_alc_env_rate_txt", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/da7219.c", i32 92, i32 27}
!327 = !{ptr @da7219_alc_env_release_rate, !328, !"da7219_alc_env_release_rate", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/da7219.c", i32 100, i32 30}
!329 = !{ptr @da7219_alc_threshold_tlv, !330, !"da7219_alc_threshold_tlv", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/da7219.c", i32 44, i32 14}
!331 = !{ptr @da7219_alc_gain_tlv, !332, !"da7219_alc_gain_tlv", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/da7219.c", i32 45, i32 14}
!333 = !{ptr @da7219_alc_ana_gain_tlv, !334, !"da7219_alc_ana_gain_tlv", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/da7219.c", i32 46, i32 14}
!335 = !{ptr @da7219_alc_anticlip_step, !336, !"da7219_alc_anticlip_step", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/da7219.c", i32 108, i32 30}
!337 = !{ptr @.str.187, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/da7219.c", i32 105, i32 2}
!339 = !{ptr @.str.188, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/da7219.c", i32 105, i32 16}
!341 = !{ptr @.str.189, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/da7219.c", i32 105, i32 30}
!343 = !{ptr @.str.190, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/da7219.c", i32 105, i32 44}
!345 = !{ptr @da7219_alc_anticlip_step_txt, !346, !"da7219_alc_anticlip_step_txt", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/da7219.c", i32 104, i32 27}
!347 = !{ptr @da7219_adc_hpf_mode, !348, !"da7219_adc_hpf_mode", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/da7219.c", i32 132, i32 30}
!349 = !{ptr @.str.191, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/da7219.c", i32 125, i32 2}
!351 = !{ptr @.str.192, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/da7219.c", i32 125, i32 14}
!353 = !{ptr @.str.193, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/da7219.c", i32 125, i32 23}
!355 = !{ptr @da7219_hpf_mode_txt, !356, !"da7219_hpf_mode_txt", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/da7219.c", i32 124, i32 27}
!357 = !{ptr @da7219_hpf_mode_val, !358, !"da7219_hpf_mode_val", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/da7219.c", i32 128, i32 27}
!359 = !{ptr @da7219_adc_audio_hpf_corner, !360, !"da7219_adc_audio_hpf_corner", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/da7219.c", i32 146, i32 30}
!361 = !{ptr @.str.194, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/da7219.c", i32 143, i32 2}
!363 = !{ptr @.str.195, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/da7219.c", i32 143, i32 9}
!365 = !{ptr @.str.196, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/da7219.c", i32 143, i32 16}
!367 = !{ptr @.str.197, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/da7219.c", i32 143, i32 23}
!369 = !{ptr @da7219_audio_hpf_corner_txt, !370, !"da7219_audio_hpf_corner_txt", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/da7219.c", i32 142, i32 27}
!371 = !{ptr @da7219_adc_voice_hpf_corner, !372, !"da7219_adc_voice_hpf_corner", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/da7219.c", i32 162, i32 30}
!373 = !{ptr @.str.198, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/da7219.c", i32 159, i32 2}
!375 = !{ptr @.str.199, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/da7219.c", i32 159, i32 11}
!377 = !{ptr @.str.200, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/da7219.c", i32 159, i32 19}
!379 = !{ptr @.str.201, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/da7219.c", i32 159, i32 27}
!381 = !{ptr @.str.202, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/da7219.c", i32 159, i32 36}
!383 = !{ptr @.str.203, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/da7219.c", i32 159, i32 45}
!385 = !{ptr @.str.204, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/da7219.c", i32 159, i32 54}
!387 = !{ptr @.str.205, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/da7219.c", i32 159, i32 63}
!389 = !{ptr @da7219_voice_hpf_corner_txt, !390, !"da7219_voice_hpf_corner_txt", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/da7219.c", i32 158, i32 27}
!391 = !{ptr @da7219_sidetone_gain_tlv, !392, !"da7219_sidetone_gain_tlv", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/da7219.c", i32 47, i32 14}
!393 = !{ptr @da7219_tonegen_gain_tlv, !394, !"da7219_tonegen_gain_tlv", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/da7219.c", i32 48, i32 14}
!395 = !{ptr @da7219_tonegen_dtmf_key, !396, !"da7219_tonegen_dtmf_key", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/da7219.c", i32 179, i32 30}
!397 = !{ptr @.str.206, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 2}
!399 = !{ptr @.str.207, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 7}
!401 = !{ptr @.str.208, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 12}
!403 = !{ptr @.str.209, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 17}
!405 = !{ptr @.str.210, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 22}
!407 = !{ptr @.str.211, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 27}
!409 = !{ptr @.str.212, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 32}
!411 = !{ptr @.str.213, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 37}
!413 = !{ptr @.str.214, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 42}
!415 = !{ptr @.str.215, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 47}
!417 = !{ptr @.str.216, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 52}
!419 = !{ptr @.str.217, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 57}
!421 = !{ptr @.str.218, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 62}
!423 = !{ptr @.str.219, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/da7219.c", i32 175, i32 67}
!425 = !{ptr @.str.220, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/da7219.c", i32 176, i32 2}
!427 = !{ptr @.str.221, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/da7219.c", i32 176, i32 7}
!429 = !{ptr @da7219_tonegen_dtmf_key_txt, !430, !"da7219_tonegen_dtmf_key_txt", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/da7219.c", i32 174, i32 27}
!431 = !{ptr @da7219_tonegen_swg_sel, !432, !"da7219_tonegen_swg_sel", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/da7219.c", i32 187, i32 30}
!433 = !{ptr @.str.222, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/da7219.c", i32 184, i32 2}
!435 = !{ptr @.str.223, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/da7219.c", i32 184, i32 9}
!437 = !{ptr @.str.224, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/da7219.c", i32 184, i32 17}
!439 = !{ptr @.str.225, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/da7219.c", i32 184, i32 25}
!441 = !{ptr @da7219_tonegen_swg_sel_txt, !442, !"da7219_tonegen_swg_sel_txt", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/da7219.c", i32 183, i32 27}
!443 = !{ptr @da7219_gain_ramp_rate, !444, !"da7219_gain_ramp_rate", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/da7219.c", i32 120, i32 30}
!445 = !{ptr @.str.226, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/da7219.c", i32 116, i32 2}
!447 = !{ptr @.str.227, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/da7219.c", i32 116, i32 22}
!449 = !{ptr @.str.228, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/da7219.c", i32 116, i32 38}
!451 = !{ptr @.str.229, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/da7219.c", i32 117, i32 2}
!453 = !{ptr @da7219_gain_ramp_rate_txt, !454, !"da7219_gain_ramp_rate_txt", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/da7219.c", i32 115, i32 27}
!455 = !{ptr @da7219_dac_hpf_mode, !456, !"da7219_dac_hpf_mode", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/da7219.c", i32 137, i32 30}
!457 = !{ptr @da7219_dac_audio_hpf_corner, !458, !"da7219_dac_audio_hpf_corner", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/da7219.c", i32 152, i32 30}
!459 = !{ptr @da7219_dac_voice_hpf_corner, !460, !"da7219_dac_voice_hpf_corner", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/da7219.c", i32 168, i32 30}
!461 = !{ptr @da7219_dac_eq_band_tlv, !462, !"da7219_dac_eq_band_tlv", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/da7219.c", i32 51, i32 14}
!463 = !{ptr @da7219_dac_softmute_rate, !464, !"da7219_dac_softmute_rate", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/da7219.c", i32 197, i32 30}
!465 = !{ptr @.str.230, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/da7219.c", i32 193, i32 2}
!467 = !{ptr @.str.231, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/da7219.c", i32 193, i32 14}
!469 = !{ptr @.str.232, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/da7219.c", i32 193, i32 27}
!471 = !{ptr @.str.233, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/da7219.c", i32 193, i32 40}
!473 = !{ptr @.str.234, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/da7219.c", i32 193, i32 53}
!475 = !{ptr @.str.235, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/da7219.c", i32 194, i32 2}
!477 = !{ptr @.str.236, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/da7219.c", i32 194, i32 16}
!479 = !{ptr @da7219_dac_softmute_rate_txt, !480, !"da7219_dac_softmute_rate_txt", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/da7219.c", i32 192, i32 27}
!481 = !{ptr @da7219_dac_ng_setup_time, !482, !"da7219_dac_ng_setup_time", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/da7219.c", i32 206, i32 30}
!483 = !{ptr @.str.237, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/da7219.c", i32 203, i32 2}
!485 = !{ptr @.str.238, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/da7219.c", i32 203, i32 17}
!487 = !{ptr @.str.239, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/soc/codecs/da7219.c", i32 203, i32 32}
!489 = !{ptr @.str.240, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/da7219.c", i32 203, i32 48}
!491 = !{ptr @da7219_dac_ng_setup_time_txt, !492, !"da7219_dac_ng_setup_time_txt", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/da7219.c", i32 202, i32 27}
!493 = !{ptr @da7219_dac_ng_rampup_rate, !494, !"da7219_dac_ng_rampup_rate", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/da7219.c", i32 216, i32 30}
!495 = !{ptr @.str.241, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/da7219.c", i32 213, i32 2}
!497 = !{ptr @.str.242, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/da7219.c", i32 213, i32 15}
!499 = !{ptr @da7219_dac_ng_rampup_txt, !500, !"da7219_dac_ng_rampup_txt", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/da7219.c", i32 212, i32 27}
!501 = !{ptr @da7219_dac_ng_rampdown_rate, !502, !"da7219_dac_ng_rampdown_rate", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/da7219.c", i32 226, i32 30}
!503 = !{ptr @.str.243, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/da7219.c", i32 223, i32 2}
!505 = !{ptr @.str.244, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/da7219.c", i32 223, i32 15}
!507 = !{ptr @da7219_dac_ng_rampdown_txt, !508, !"da7219_dac_ng_rampdown_txt", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/da7219.c", i32 222, i32 27}
!509 = !{ptr @da7219_dac_ng_threshold_tlv, !510, !"da7219_dac_ng_threshold_tlv", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/da7219.c", i32 59, i32 14}
!511 = !{ptr @da7219_dac_dig_gain_tlv, !512, !"da7219_dac_dig_gain_tlv", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/da7219.c", i32 53, i32 14}
!513 = !{ptr @da7219_cp_track_mode, !514, !"da7219_cp_track_mode", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/da7219.c", i32 242, i32 30}
!515 = !{ptr @.str.245, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/da7219.c", i32 234, i32 2}
!517 = !{ptr @.str.246, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/da7219.c", i32 234, i32 20}
!519 = !{ptr @.str.247, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/da7219.c", i32 234, i32 34}
!521 = !{ptr @da7219_cp_track_mode_txt, !522, !"da7219_cp_track_mode_txt", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/da7219.c", i32 233, i32 27}
!523 = !{ptr @da7219_cp_track_mode_val, !524, !"da7219_cp_track_mode_val", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/da7219.c", i32 237, i32 27}
!525 = !{ptr @da7219_hp_gain_tlv, !526, !"da7219_hp_gain_tlv", i1 false, i1 false}
!526 = !{!"../sound/soc/codecs/da7219.c", i32 60, i32 14}
!527 = !{ptr @.str.248, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/da7219.c", i32 953, i32 2}
!529 = !{ptr @.str.249, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/da7219.c", i32 958, i32 2}
!531 = !{ptr @.str.250, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/da7219.c", i32 961, i32 2}
!533 = !{ptr @.str.251, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../sound/soc/codecs/da7219.c", i32 964, i32 2}
!535 = !{ptr @.str.252, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../sound/soc/codecs/da7219.c", i32 969, i32 2}
!537 = !{ptr @.str.253, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../sound/soc/codecs/da7219.c", i32 973, i32 2}
!539 = !{ptr @.str.254, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../sound/soc/codecs/da7219.c", i32 974, i32 2}
!541 = !{ptr @.str.255, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../sound/soc/codecs/da7219.c", i32 978, i32 2}
!543 = !{ptr @.str.256, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../sound/soc/codecs/da7219.c", i32 982, i32 2}
!545 = !{ptr @.str.257, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../sound/soc/codecs/da7219.c", i32 987, i32 2}
!547 = !{ptr @.str.258, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../sound/soc/codecs/da7219.c", i32 992, i32 2}
!549 = !{ptr @.str.259, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../sound/soc/codecs/da7219.c", i32 994, i32 2}
!551 = !{ptr @.str.260, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../sound/soc/codecs/da7219.c", i32 998, i32 2}
!553 = !{ptr @.str.261, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../sound/soc/codecs/da7219.c", i32 1003, i32 2}
!555 = !{ptr @.str.262, !554, !"<string literal>", i1 false, i1 false}
!556 = !{ptr @.str.263, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../sound/soc/codecs/da7219.c", i32 1005, i32 2}
!558 = !{ptr @.str.264, !557, !"<string literal>", i1 false, i1 false}
!559 = !{ptr @.str.265, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../sound/soc/codecs/da7219.c", i32 1008, i32 2}
!561 = !{ptr @.str.266, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../sound/soc/codecs/da7219.c", i32 1010, i32 2}
!563 = !{ptr @.str.267, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../sound/soc/codecs/da7219.c", i32 1014, i32 2}
!565 = !{ptr @.str.268, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../sound/soc/codecs/da7219.c", i32 1017, i32 2}
!567 = !{ptr @.str.269, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../sound/soc/codecs/da7219.c", i32 1022, i32 2}
!569 = !{ptr @.str.270, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../sound/soc/codecs/da7219.c", i32 1025, i32 2}
!571 = !{ptr @.str.271, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../sound/soc/codecs/da7219.c", i32 1030, i32 2}
!573 = !{ptr @.str.272, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../sound/soc/codecs/da7219.c", i32 1034, i32 2}
!575 = !{ptr @.str.273, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../sound/soc/codecs/da7219.c", i32 1040, i32 2}
!577 = !{ptr @.str.274, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../sound/soc/codecs/da7219.c", i32 1044, i32 2}
!579 = !{ptr @.str.275, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../sound/soc/codecs/da7219.c", i32 1048, i32 2}
!581 = !{ptr @.str.276, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../sound/soc/codecs/da7219.c", i32 1052, i32 2}
!583 = !{ptr @.str.277, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../sound/soc/codecs/da7219.c", i32 1058, i32 2}
!585 = !{ptr @.str.278, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../sound/soc/codecs/da7219.c", i32 1064, i32 2}
!587 = !{ptr @.str.279, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../sound/soc/codecs/da7219.c", i32 1065, i32 2}
!589 = !{ptr @.str.280, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../sound/soc/codecs/da7219.c", i32 1068, i32 2}
!591 = !{ptr @.str.281, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../sound/soc/codecs/da7219.c", i32 1069, i32 2}
!593 = !{ptr @da7219_dapm_widgets, !594, !"da7219_dapm_widgets", i1 false, i1 false}
!594 = !{!"../sound/soc/codecs/da7219.c", i32 951, i32 41}
!595 = !{ptr @da7219_mixin_controls, !596, !"da7219_mixin_controls", i1 false, i1 false}
!596 = !{!"../sound/soc/codecs/da7219.c", i32 725, i32 38}
!597 = !{ptr @da7219_out_dail_sel_mux, !598, !"da7219_out_dail_sel_mux", i1 false, i1 false}
!598 = !{!"../sound/soc/codecs/da7219.c", i32 690, i32 38}
!599 = !{ptr @da7219_out_dail_sel, !600, !"da7219_out_dail_sel", i1 false, i1 false}
!600 = !{!"../sound/soc/codecs/da7219.c", i32 684, i32 30}
!601 = !{ptr @.str.284, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../sound/soc/codecs/da7219.c", i32 681, i32 27}
!603 = !{ptr @.str.285, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../sound/soc/codecs/da7219.c", i32 681, i32 35}
!605 = !{ptr @da7219_out_sel_txt, !606, !"da7219_out_sel_txt", i1 false, i1 false}
!606 = !{!"../sound/soc/codecs/da7219.c", i32 680, i32 27}
!607 = !{ptr @da7219_out_dair_sel_mux, !608, !"da7219_out_dair_sel_mux", i1 false, i1 false}
!608 = !{!"../sound/soc/codecs/da7219.c", i32 699, i32 38}
!609 = !{ptr @da7219_out_dair_sel, !610, !"da7219_out_dair_sel", i1 false, i1 false}
!610 = !{!"../sound/soc/codecs/da7219.c", i32 693, i32 30}
!611 = !{ptr @.str.286, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../sound/soc/codecs/da7219.c", i32 808, i32 6}
!613 = !{ptr @.str.287, !612, !"<string literal>", i1 false, i1 false}
!614 = !{ptr @da7219_dai_event._entry, !612, !"_entry", i1 false, i1 false}
!615 = !{ptr @da7219_dai_event._entry_ptr, !612, !"_entry_ptr", i1 false, i1 false}
!616 = !{ptr @.str.289, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../sound/soc/codecs/da7219.c", i32 841, i32 4}
!618 = !{ptr @da7219_dai_event._entry.288, !617, !"_entry", i1 false, i1 false}
!619 = !{ptr @da7219_dai_event._entry_ptr.290, !617, !"_entry_ptr", i1 false, i1 false}
!620 = !{ptr @da7219_out_dacl_sel_mux, !621, !"da7219_out_dacl_sel_mux", i1 false, i1 false}
!621 = !{!"../sound/soc/codecs/da7219.c", i32 708, i32 38}
!622 = !{ptr @da7219_out_dacl_sel, !623, !"da7219_out_dacl_sel", i1 false, i1 false}
!623 = !{!"../sound/soc/codecs/da7219.c", i32 702, i32 30}
!624 = !{ptr @da7219_out_dacr_sel_mux, !625, !"da7219_out_dacr_sel_mux", i1 false, i1 false}
!625 = !{!"../sound/soc/codecs/da7219.c", i32 717, i32 38}
!626 = !{ptr @da7219_out_dacr_sel, !627, !"da7219_out_dacr_sel", i1 false, i1 false}
!627 = !{!"../sound/soc/codecs/da7219.c", i32 711, i32 30}
!628 = !{ptr @.str.291, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../sound/soc/codecs/da7219.c", i32 732, i32 2}
!630 = !{ptr @da7219_mixout_l_controls, !631, !"da7219_mixout_l_controls", i1 false, i1 false}
!631 = !{!"../sound/soc/codecs/da7219.c", i32 731, i32 38}
!632 = !{ptr @.str.293, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../sound/soc/codecs/da7219.c", i32 738, i32 2}
!634 = !{ptr @da7219_mixout_r_controls, !635, !"da7219_mixout_r_controls", i1 false, i1 false}
!635 = !{!"../sound/soc/codecs/da7219.c", i32 737, i32 38}
!636 = !{ptr @.str.295, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../sound/soc/codecs/da7219.c", i32 755, i32 2}
!638 = !{ptr @.str.297, !637, !"<string literal>", i1 false, i1 false}
!639 = !{ptr @da7219_st_out_filtl_mix_controls, !640, !"da7219_st_out_filtl_mix_controls", i1 false, i1 false}
!640 = !{!"../sound/soc/codecs/da7219.c", i32 754, i32 38}
!641 = !{ptr @da7219_st_out_filtr_mix_controls, !642, !"da7219_st_out_filtr_mix_controls", i1 false, i1 false}
!642 = !{!"../sound/soc/codecs/da7219.c", i32 758, i32 38}
!643 = !{ptr @da7219_audio_map, !644, !"da7219_audio_map", i1 false, i1 false}
!644 = !{!"../sound/soc/codecs/da7219.c", i32 1103, i32 40}
!645 = !{ptr @da7219_probe.__key, !646, !"__key", i1 false, i1 false}
!646 = !{!"../sound/soc/codecs/da7219.c", i32 2448, i32 2}
!647 = !{ptr @.str.303, !646, !"<string literal>", i1 false, i1 false}
!648 = !{ptr @da7219_probe.__key.304, !649, !"__key", i1 false, i1 false}
!649 = !{!"../sound/soc/codecs/da7219.c", i32 2449, i32 2}
!650 = !{ptr @.str.305, !649, !"<string literal>", i1 false, i1 false}
!651 = !{ptr @.str.306, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../sound/soc/codecs/da7219.c", i32 2495, i32 3}
!653 = !{ptr @.str.307, !652, !"<string literal>", i1 false, i1 false}
!654 = !{ptr @da7219_probe._entry, !652, !"_entry", i1 false, i1 false}
!655 = !{ptr @da7219_probe._entry_ptr, !652, !"_entry_ptr", i1 false, i1 false}
!656 = !{ptr @.str.309, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../sound/soc/codecs/da7219.c", i32 2504, i32 4}
!658 = !{ptr @da7219_probe._entry.308, !657, !"_entry", i1 false, i1 false}
!659 = !{ptr @da7219_probe._entry_ptr.310, !657, !"_entry_ptr", i1 false, i1 false}
!660 = !{ptr @.str.311, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../sound/soc/codecs/da7219.c", i32 2517, i32 41}
!662 = !{ptr @.str.312, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../sound/soc/codecs/da7219.c", i32 1865, i32 3}
!664 = !{ptr @.str.313, !663, !"<string literal>", i1 false, i1 false}
!665 = !{ptr @da7219_handle_supplies._entry, !663, !"_entry", i1 false, i1 false}
!666 = !{ptr @da7219_handle_supplies._entry_ptr, !663, !"_entry_ptr", i1 false, i1 false}
!667 = !{ptr @.str.315, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../sound/soc/codecs/da7219.c", i32 1876, i32 3}
!669 = !{ptr @da7219_handle_supplies._entry.314, !668, !"_entry", i1 false, i1 false}
!670 = !{ptr @da7219_handle_supplies._entry_ptr.316, !668, !"_entry_ptr", i1 false, i1 false}
!671 = !{ptr @.str.318, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../sound/soc/codecs/da7219.c", i32 1883, i32 3}
!673 = !{ptr @da7219_handle_supplies._entry.317, !672, !"_entry", i1 false, i1 false}
!674 = !{ptr @da7219_handle_supplies._entry_ptr.319, !672, !"_entry_ptr", i1 false, i1 false}
!675 = !{ptr @.str.320, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../sound/soc/codecs/da7219.c", i32 1846, i32 24}
!677 = !{ptr @.str.321, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../sound/soc/codecs/da7219.c", i32 1847, i32 27}
!679 = !{ptr @.str.322, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../sound/soc/codecs/da7219.c", i32 1848, i32 26}
!681 = distinct !{null, !682, !"da7219_supply_names", i1 false, i1 false}
!682 = !{!"../sound/soc/codecs/da7219.c", i32 1845, i32 20}
!683 = !{ptr @da7219_rev_aa_patch, !684, !"da7219_rev_aa_patch", i1 false, i1 false}
!684 = !{!"../sound/soc/codecs/da7219.c", i32 2436, i32 28}
!685 = !{ptr @.str.323, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../sound/soc/codecs/da7219.c", i32 2168, i32 4}
!687 = !{ptr @.str.324, !686, !"<string literal>", i1 false, i1 false}
!688 = !{ptr @da7219_register_dai_clks._entry, !686, !"_entry", i1 false, i1 false}
!689 = !{ptr @da7219_register_dai_clks._entry_ptr, !686, !"_entry_ptr", i1 false, i1 false}
!690 = !{ptr @.str.326, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../sound/soc/codecs/da7219.c", i32 2180, i32 4}
!692 = !{ptr @da7219_register_dai_clks._entry.325, !691, !"_entry", i1 false, i1 false}
!693 = !{ptr @da7219_register_dai_clks._entry_ptr.327, !691, !"_entry_ptr", i1 false, i1 false}
!694 = !{ptr @.str.328, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../sound/soc/codecs/da7219.c", i32 2191, i32 10}
!696 = !{ptr @.str.330, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../sound/soc/codecs/da7219.c", i32 2206, i32 4}
!698 = !{ptr @da7219_register_dai_clks._entry.329, !697, !"_entry", i1 false, i1 false}
!699 = !{ptr @da7219_register_dai_clks._entry_ptr.331, !697, !"_entry_ptr", i1 false, i1 false}
!700 = !{ptr @da7219_dai_clk_ops, !701, !"da7219_dai_clk_ops", i1 false, i1 false}
!701 = !{!"../sound/soc/codecs/da7219.c", i32 2104, i32 29}
!702 = !{ptr @.str.332, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../sound/soc/codecs/da7219.c", i32 1812, i32 6}
!704 = !{ptr @.str.333, !703, !"<string literal>", i1 false, i1 false}
!705 = !{ptr @da7219_set_bias_level._entry, !703, !"_entry", i1 false, i1 false}
!706 = !{ptr @da7219_set_bias_level._entry_ptr, !703, !"_entry_ptr", i1 false, i1 false}
!707 = !{ptr @.str.334, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../sound/soc/codecs/da7219.c", i32 1679, i32 10}
!709 = !{ptr @da7219_dai, !710, !"da7219_dai", i1 false, i1 false}
!710 = !{!"../sound/soc/codecs/da7219.c", i32 1678, i32 34}
!711 = !{ptr @da7219_dai_ops, !712, !"da7219_dai_ops", i1 false, i1 false}
!712 = !{!"../sound/soc/codecs/da7219.c", i32 1661, i32 37}
!713 = !{ptr @.str.335, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../sound/soc/codecs/da7219.c", i32 1168, i32 3}
!715 = !{ptr @.str.336, !714, !"<string literal>", i1 false, i1 false}
!716 = !{ptr @da7219_set_dai_sysclk._entry, !714, !"_entry", i1 false, i1 false}
!717 = !{ptr @da7219_set_dai_sysclk._entry_ptr, !714, !"_entry_ptr", i1 false, i1 false}
!718 = !{ptr @.str.338, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../sound/soc/codecs/da7219.c", i32 1186, i32 3}
!720 = !{ptr @da7219_set_dai_sysclk._entry.337, !719, !"_entry", i1 false, i1 false}
!721 = !{ptr @da7219_set_dai_sysclk._entry_ptr.339, !719, !"_entry_ptr", i1 false, i1 false}
!722 = !{ptr @.str.341, !723, !"<string literal>", i1 false, i1 false}
!723 = !{!"../sound/soc/codecs/da7219.c", i32 1197, i32 4}
!724 = !{ptr @da7219_set_dai_sysclk._entry.340, !723, !"_entry", i1 false, i1 false}
!725 = !{ptr @da7219_set_dai_sysclk._entry_ptr.342, !723, !"_entry_ptr", i1 false, i1 false}
!726 = !{ptr @.str.343, !727, !"<string literal>", i1 false, i1 false}
!727 = !{!"../sound/soc/codecs/da7219.c", i32 1443, i32 3}
!728 = !{ptr @.str.344, !727, !"<string literal>", i1 false, i1 false}
!729 = !{ptr @da7219_set_dai_tdm_slot._entry, !727, !"_entry", i1 false, i1 false}
!730 = !{ptr @da7219_set_dai_tdm_slot._entry_ptr, !727, !"_entry_ptr", i1 false, i1 false}
!731 = !{ptr @.str.346, !732, !"<string literal>", i1 false, i1 false}
!732 = !{!"../sound/soc/codecs/da7219.c", i32 1455, i32 3}
!733 = !{ptr @da7219_set_dai_tdm_slot._entry.345, !732, !"_entry", i1 false, i1 false}
!734 = !{ptr @da7219_set_dai_tdm_slot._entry_ptr.347, !732, !"_entry_ptr", i1 false, i1 false}
!735 = !{ptr @.str.349, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../sound/soc/codecs/da7219.c", i32 1471, i32 5}
!737 = !{ptr @da7219_set_dai_tdm_slot._entry.348, !736, !"_entry", i1 false, i1 false}
!738 = !{ptr @da7219_set_dai_tdm_slot._entry_ptr.350, !736, !"_entry_ptr", i1 false, i1 false}
!739 = !{ptr @.str.352, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../sound/soc/codecs/da7219.c", i32 1479, i32 5}
!741 = !{ptr @da7219_set_dai_tdm_slot._entry.351, !740, !"_entry", i1 false, i1 false}
!742 = !{ptr @da7219_set_dai_tdm_slot._entry_ptr.353, !740, !"_entry_ptr", i1 false, i1 false}
!743 = !{ptr @.str.354, !744, !"<string literal>", i1 false, i1 false}
!744 = !{!"../sound/soc/codecs/da7219.c", i32 1583, i32 3}
!745 = !{ptr @.str.355, !744, !"<string literal>", i1 false, i1 false}
!746 = !{ptr @da7219_hw_params._entry, !744, !"_entry", i1 false, i1 false}
!747 = !{ptr @da7219_hw_params._entry_ptr, !744, !"_entry_ptr", i1 false, i1 false}
!748 = !{ptr @.str.357, !749, !"<string literal>", i1 false, i1 false}
!749 = !{!"../sound/soc/codecs/da7219.c", i32 1594, i32 4}
!750 = !{ptr @da7219_hw_params._entry.356, !749, !"_entry", i1 false, i1 false}
!751 = !{ptr @da7219_hw_params._entry_ptr.358, !749, !"_entry_ptr", i1 false, i1 false}
!752 = !{ptr @.str.360, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../sound/soc/codecs/da7219.c", i32 1601, i32 4}
!754 = !{ptr @da7219_hw_params._entry.359, !753, !"_entry", i1 false, i1 false}
!755 = !{ptr @da7219_hw_params._entry_ptr.361, !753, !"_entry_ptr", i1 false, i1 false}
!756 = !{ptr @.str.363, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../sound/soc/codecs/da7219.c", i32 1630, i32 5}
!758 = !{ptr @da7219_hw_params._entry.362, !757, !"_entry", i1 false, i1 false}
!759 = !{ptr @da7219_hw_params._entry_ptr.364, !757, !"_entry_ptr", i1 false, i1 false}
!760 = !{ptr @.str.366, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../sound/soc/codecs/da7219.c", i32 1637, i32 5}
!762 = !{ptr @da7219_hw_params._entry.365, !761, !"_entry", i1 false, i1 false}
!763 = !{ptr @da7219_hw_params._entry_ptr.367, !761, !"_entry_ptr", i1 false, i1 false}
!764 = !{ptr @.str.369, !765, !"<string literal>", i1 false, i1 false}
!765 = !{!"../sound/soc/codecs/da7219.c", i32 1645, i32 5}
!766 = !{ptr @da7219_hw_params._entry.368, !765, !"_entry", i1 false, i1 false}
!767 = !{ptr @da7219_hw_params._entry_ptr.370, !765, !"_entry_ptr", i1 false, i1 false}
!768 = !{ptr @da7219_of_match, !769, !"da7219_of_match", i1 false, i1 false}
!769 = !{!"../sound/soc/codecs/da7219.c", i32 1706, i32 34}
!770 = !{ptr @da7219_i2c_id, !771, !"da7219_i2c_id", i1 false, i1 false}
!771 = !{!"../sound/soc/codecs/da7219.c", i32 2696, i32 35}
!772 = !{i32 1, !"wchar_size", i32 2}
!773 = !{i32 1, !"min_enum_size", i32 4}
!774 = !{i32 8, !"branch-target-enforcement", i32 0}
!775 = !{i32 8, !"sign-return-address", i32 0}
!776 = !{i32 8, !"sign-return-address-all", i32 0}
!777 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!778 = !{i32 7, !"uwtable", i32 1}
!779 = !{i32 7, !"frame-pointer", i32 2}
!780 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!781 = !{!"branch_weights", i32 2000, i32 1}
!782 = !{i64 2149050184, i64 2149050464, i64 2149050798, i64 2149051132}
!783 = !{!"auto-init"}
!784 = !{i8 0, i8 2}
!785 = !{i32 0, i32 33}
