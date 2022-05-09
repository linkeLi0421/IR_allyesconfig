; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8904.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8904.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.atomic_t = type { i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.108 = type { i32, i32, i16, i32 }
%struct.anon.109 = type { i32, i32 }
%struct.anon.110 = type { i32, i32 }
%struct.anon.111 = type { i32, i32 }
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
%struct.wm8904_priv = type { ptr, ptr, i32, [5 x %struct.regulator_bulk_data], ptr, i32, ptr, i32, %struct.soc_enum, i32, ptr, i32, %struct.soc_enum, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.wm8904_pdata = type { i32, ptr, i32, ptr, [4 x i32], [2 x i32] }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.wm8904_drc_cfg = type { ptr, [4 x i16] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }
%struct.wm8904_retune_mobile_cfg = type { ptr, i32, [24 x i16] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct._fll_div = type { i16, i16, i16, i16, i16 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_wm8904__319_2335_wm8904_i2c_driver_init6 = internal global ptr @wm8904_i2c_driver_init, section ".initcall6.init", align 4
@wm8904_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8904_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8904_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8904_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8904_i2c_driver_exit = internal global ptr @wm8904_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description320 = internal constant [46 x i8] c"snd_soc_wm8904.description=ASoC WM8904 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author321 = internal constant [71 x i8] c"snd_soc_wm8904.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [52 x i8] c"snd_soc_wm8904.file=sound/soc/codecs/snd-soc-wm8904\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [27 x i8] c"snd_soc_wm8904.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8904\00", [25 x i8] zeroinitializer }, align 32
@wm8904_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8904\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8912\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@wm8904_i2c_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8904\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"wm8912\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"wm8918\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@wm8904_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to get MCLK\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8904_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8904.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8904_i2c_probe._entry_ptr = internal global ptr @wm8904_i2c_probe._entry, section ".printk_index", align 4
@wm8904_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8904_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @wm8904_readable_register, ptr @wm8904_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 248, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8904_reg_defaults, i32 93, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wm8904:2184:(&wm8904_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@wm8904_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 2188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wm8904_i2c_probe._entry_ptr.10 = internal global ptr @wm8904_i2c_probe._entry.8, section ".printk_index", align 4
@wm8904_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 2212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8904_i2c_probe._entry_ptr.13 = internal global ptr @wm8904_i2c_probe._entry.11, section ".printk_index", align 4
@wm8904_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 2219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8904_i2c_probe._entry_ptr.16 = internal global ptr @wm8904_i2c_probe._entry.14, section ".printk_index", align 4
@wm8904_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 2225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read ID register: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8904_i2c_probe._entry_ptr.19 = internal global ptr @wm8904_i2c_probe._entry.17, section ".printk_index", align 4
@wm8904_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 2229, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device is not a WM8904, ID is %x\0A\00", [62 x i8] zeroinitializer }, align 32
@wm8904_i2c_probe._entry_ptr.22 = internal global ptr @wm8904_i2c_probe._entry.20, section ".printk_index", align 4
@wm8904_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 2237, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read device revision: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wm8904_i2c_probe._entry_ptr.25 = internal global ptr @wm8904_i2c_probe._entry.23, section ".printk_index", align 4
@wm8904_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 2240, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"revision %c\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm8904_i2c_probe._entry_ptr.29 = internal global ptr @wm8904_i2c_probe._entry.26, section ".printk_index", align 4
@wm8904_i2c_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 2244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to issue reset: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8904_i2c_probe._entry_ptr.32 = internal global ptr @wm8904_i2c_probe._entry.30, section ".printk_index", align 4
@soc_component_dev_wm8904 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @wm8904_probe, ptr @wm8904_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8904_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8904_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.184, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8904_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.130, i64 68719477828, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.139, i64 68719477828, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm8904_reg_defaults = internal constant { [93 x %struct.reg_default], [184 x i8] } { [93 x %struct.reg_default] [%struct.reg_default { i32 4, i32 24 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 1 }, %struct.reg_default { i32 9, i32 38550 }, %struct.reg_default { i32 10, i32 1 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 20, i32 37982 }, %struct.reg_default { i32 21, i32 3077 }, %struct.reg_default { i32 22, i32 6 }, %struct.reg_default { i32 24, i32 80 }, %struct.reg_default { i32 25, i32 10 }, %struct.reg_default { i32 26, i32 228 }, %struct.reg_default { i32 27, i32 64 }, %struct.reg_default { i32 30, i32 192 }, %struct.reg_default { i32 31, i32 192 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 8 }, %struct.reg_default { i32 36, i32 192 }, %struct.reg_default { i32 37, i32 192 }, %struct.reg_default { i32 38, i32 16 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 431 }, %struct.reg_default { i32 41, i32 12872 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 133 }, %struct.reg_default { i32 45, i32 133 }, %struct.reg_default { i32 46, i32 68 }, %struct.reg_default { i32 47, i32 68 }, %struct.reg_default { i32 57, i32 45 }, %struct.reg_default { i32 58, i32 45 }, %struct.reg_default { i32 59, i32 57 }, %struct.reg_default { i32 60, i32 57 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 69, i32 43690 }, %struct.reg_default { i32 71, i32 43690 }, %struct.reg_default { i32 72, i32 43690 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 104, i32 4 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 7 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 12000 }, %struct.reg_default { i32 120, i32 4 }, %struct.reg_default { i32 121, i32 20 }, %struct.reg_default { i32 122, i32 16 }, %struct.reg_default { i32 123, i32 16 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 128, i32 65535 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 134, i32 0 }, %struct.reg_default { i32 135, i32 12 }, %struct.reg_default { i32 136, i32 12 }, %struct.reg_default { i32 137, i32 12 }, %struct.reg_default { i32 138, i32 12 }, %struct.reg_default { i32 139, i32 12 }, %struct.reg_default { i32 140, i32 4042 }, %struct.reg_default { i32 141, i32 1024 }, %struct.reg_default { i32 142, i32 216 }, %struct.reg_default { i32 143, i32 7861 }, %struct.reg_default { i32 144, i32 61765 }, %struct.reg_default { i32 145, i32 2933 }, %struct.reg_default { i32 146, i32 453 }, %struct.reg_default { i32 147, i32 7256 }, %struct.reg_default { i32 148, i32 62323 }, %struct.reg_default { i32 149, i32 2644 }, %struct.reg_default { i32 150, i32 1368 }, %struct.reg_default { i32 151, i32 5774 }, %struct.reg_default { i32 152, i32 63529 }, %struct.reg_default { i32 153, i32 1965 }, %struct.reg_default { i32 154, i32 4355 }, %struct.reg_default { i32 155, i32 1380 }, %struct.reg_default { i32 156, i32 1369 }, %struct.reg_default { i32 157, i32 16384 }, %struct.reg_default { i32 161, i32 0 }, %struct.reg_default { i32 204, i32 0 }, %struct.reg_default { i32 247, i32 0 }, %struct.reg_default { i32 248, i32 25 }], [184 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CPVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MICVDD\00", [25 x i8] zeroinitializer }, align 32
@wm8904_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 2109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown device type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8904_probe\00", [19 x i8] zeroinitializer }, align 32
@wm8904_probe._entry_ptr = internal global ptr @wm8904_probe._entry, section ".printk_index", align 4
@wm8904_eq_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }], [48 x i8] zeroinitializer }, align 32
@wm8904_handle_pdata.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 2, i8 2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8904\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm8904_handle_pdata\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%d DRC configurations\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DRC Mode\00", [23 x i8] zeroinitializer }, align 32
@wm8904_handle_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.4, i32 2081, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to add DRC mode control: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wm8904_handle_pdata._entry_ptr = internal global ptr @wm8904_handle_pdata._entry, section ".printk_index", align 4
@wm8904_handle_pdata.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.4, ptr @.str.45, i8 2, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%d ReTune Mobile configurations\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ1 Volume\00", [21 x i8] zeroinitializer }, align 32
@eq_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 135, i32 135, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ2 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 136, i32 136, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ3 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 137, i32 137, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ4 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 138, i32 138, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ5 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 139, i32 139, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EQ Mode\00", [24 x i8] zeroinitializer }, align 32
@wm8904_handle_retune_mobile_pdata.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.56, ptr @.str.4, ptr @.str.57, i8 1, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wm8904_handle_retune_mobile_pdata\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Allocated %d unique ReTune Mobile names\0A\00", [55 x i8] zeroinitializer }, align 32
@wm8904_handle_retune_mobile_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.4, i32 2043, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to add ReTune Mobile control: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@wm8904_handle_retune_mobile_pdata._entry_ptr = internal global ptr @wm8904_handle_retune_mobile_pdata._entry, section ".printk_index", align 4
@wm8904_set_retune_mobile.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.59, ptr @.str.4, ptr @.str.60, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wm8904_set_retune_mobile\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ReTune Mobile %s/%dHz for %dHz sample rate\0A\00", [52 x i8] zeroinitializer }, align 32
@core_intercon = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@wm8904_adc_snd_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @hpf_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8904_adc_osr_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }], [64 x i8] zeroinitializer }, align 32
@wm8904_dac_snd_controls = internal constant { [13 x %struct.snd_kcontrol_new], [144 x i8] } { [13 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_path to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8904_get_deemph, ptr @wm8904_put_deemph, %union.anon.98 zeroinitializer, i32 0 }], [144 x i8] zeroinitializer }, align 32
@wm8904_snd_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sidetone_tlv }, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }], [48 x i8] zeroinitializer }, align 32
@adc_intercon = internal constant { [34 x %struct.snd_soc_dapm_route], [440 x i8] } { [34 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.117, ptr @.str.110, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr @.str.112, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr @.str.114, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr @.str.110, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr @.str.112, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr @.str.114, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.133, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.134, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.134, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.135, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.135, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.111, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.113, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.115, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.111, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.113, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.115, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.133, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.134, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.134, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.135, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.135, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.136, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.137, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.136, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.137, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }], [440 x i8] zeroinitializer }, align 32
@dac_intercon = internal constant { [21 x %struct.snd_soc_dapm_route], [284 x i8] } { [21 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.136, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.137, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.136, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.137, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }], [284 x i8] zeroinitializer }, align 32
@wm8904_intercon = internal constant { [22 x %struct.snd_soc_dapm_route], [264 x i8] } { [22 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.136, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.137, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.136, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.137, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.105, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.179, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.105, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.179, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.105, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.179, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.105, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.179, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }], [264 x i8] zeroinitializer }, align 32
@wm8912_intercon = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SYSCLK\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLK_DSP\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TOCLK\00", [26 x i8] zeroinitializer }, align 32
@wm8904_core_dapm_widgets = internal constant { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [132 x i8] } { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @sysclk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [132 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Digital Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7200, i32 65611], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 119, i32 119, i32 36, i32 37, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 44, i32 45, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 45, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"High Pass Filter Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"High Pass Filter Mode\00", [42 x i8] zeroinitializer }, align 32
@hpf_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 5, i8 5, i32 4, i32 3, ptr @hpf_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC 128x OSR Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@hpf_mode_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Hi-fi\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voice 1\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voice 2\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voice 3\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Digital Playback Boost Volume\00", [34 x i8] zeroinitializer }, align 32
@dac_boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 24, i32 24, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 30, i32 31, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@out_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5700, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 57, i32 58, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 58, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone ZC Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 58, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Line Output Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 59, i32 60, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Line Output Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 60, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Line Output ZC Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 60, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EQ Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 134, i32 134, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DRC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 15, i32 15, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DRC Path\00", [23 x i8] zeroinitializer }, align 32
@drc_path = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 14, i8 14, i32 2, i32 1, ptr @drc_path_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAC OSRx2 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Deemphasis Switch\00", [42 x i8] zeroinitializer }, align 32
@drc_path_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.104, ptr @.str.105], [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@deemph_settings = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 32000, i32 44100, i32 48000], [16 x i8] zeroinitializer }, align 32
@wm8904_set_deemph.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.106, ptr @.str.4, ptr @.str.107, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8904_set_deemph\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set deemphasis %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Sidetone Volume\00", [40 x i8] zeroinitializer }, align 32
@sidetone_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3600, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 32, i32 32, i32 4, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1L\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1R\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2L\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2R\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN3L\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN3R\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left Capture Mux\00", [47 x i8] zeroinitializer }, align 32
@lin_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @lin_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Left Capture Inverting Mux\00", [37 x i8] zeroinitializer }, align 32
@lin_inv_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @lin_inv_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left Capture Mode\00", [46 x i8] zeroinitializer }, align 32
@lin_mode = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @lin_mode_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right Capture Mux\00", [46 x i8] zeroinitializer }, align 32
@rin_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rin_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Right Capture Inverting Mux\00", [36 x i8] zeroinitializer }, align 32
@rin_inv_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rin_inv_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right Capture Mode\00", [45 x i8] zeroinitializer }, align 32
@rin_mode = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rin_mode_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left Capture PGA\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right Capture PGA\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIFOUTL Mux\00", [20 x i8] zeroinitializer }, align 32
@aifoutl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @aifoutl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIFOUTR Mux\00", [20 x i8] zeroinitializer }, align 32
@aifoutr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @aifoutr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIFOUTL\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIFOUTR\00", [24 x i8] zeroinitializer }, align 32
@wm8904_adc_dapm_widgets = internal constant { [21 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [956 x i8] } { [21 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lin_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lin_inv_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lin_mode, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rin_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rin_inv_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rin_mode, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aifoutl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aifoutr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.129, ptr @.str.130, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.131, ptr @.str.130, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }], [956 x i8] zeroinitializer }, align 32
@lin_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 2, i8 2, i32 3, i32 3, ptr @lin_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@lin_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.110, ptr @.str.112, ptr @.str.114], [20 x i8] zeroinitializer }, align 32
@lin_inv_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 4, i8 4, i32 3, i32 3, ptr @lin_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@lin_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 0, i8 0, i32 3, i32 3, ptr @input_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@input_mode_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.133, ptr @.str.134, ptr @.str.135], [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Single-Ended\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Differential Line\00", [46 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Differential Mic\00", [47 x i8] zeroinitializer }, align 32
@rin_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 2, i8 2, i32 3, i32 3, ptr @rin_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rin_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.111, ptr @.str.113, ptr @.str.115], [20 x i8] zeroinitializer }, align 32
@rin_inv_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 4, i8 4, i32 3, i32 3, ptr @rin_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rin_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 47, i8 0, i8 0, i32 3, i32 3, ptr @input_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aifoutl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 7, i8 7, i32 2, i32 1, ptr @aif_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aif_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.136, ptr @.str.137], [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@aifoutr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 6, i8 6, i32 2, i32 1, ptr @aif_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFINL\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFINR\00", [25 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DACL Mux\00", [23 x i8] zeroinitializer }, align 32
@aifinl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.157, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @aifinl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DACR Mux\00", [23 x i8] zeroinitializer }, align 32
@aifinr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @aifinr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge pump\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPL PGA\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPR PGA\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LINEL PGA\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LINER PGA\00", [22 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Output\00", [47 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line Output\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTL\00", [25 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTR\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LINEOUTL\00", [23 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LINEOUTR\00", [23 x i8] zeroinitializer }, align 32
@wm8904_dac_dapm_widgets = internal constant { [17 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [748 x i8] } { [17 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.138, ptr @.str.139, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.140, ptr @.str.139, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aifinl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aifinr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @cp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 90, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @out_pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 94, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @out_pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [748 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIFINL Mux\00", [21 x i8] zeroinitializer }, align 32
@aifinl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 5, i8 5, i32 2, i32 1, ptr @aif_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIFINR Mux\00", [21 x i8] zeroinitializer }, align 32
@aifinr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 4, i8 4, i32 2, i32 1, ptr @aif_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid reg %d\0A\00", [16 x i8] zeroinitializer }, align 32
@out_pga_event.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.160, ptr @.str.4, ptr @.str.161, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"out_pga_event\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Restoring DC servo state\0A\00", [38 x i8] zeroinitializer }, align 32
@out_pga_event.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.160, ptr @.str.4, ptr @.str.162, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Calibrating DC servo\0A\00", [42 x i8] zeroinitializer }, align 32
@out_pga_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.160, ptr @.str.4, i32 787, ptr @.str.164, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC servo timed out\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@out_pga_event._entry_ptr = internal global ptr @out_pga_event._entry, section ".printk_index", align 4
@out_pga_event.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.160, ptr @.str.4, ptr @.str.165, i8 0, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DC servo ready\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Class G\00", [24 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Left Bypass\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Right Bypass\00", [19 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Sidetone\00", [18 x i8] zeroinitializer }, align 32
@dacl_sidetone_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dacl_sidetone_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Sidetone\00", [17 x i8] zeroinitializer }, align 32
@dacr_sidetone_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dacr_sidetone_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPL Mux\00", [24 x i8] zeroinitializer }, align 32
@hpl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @hpl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPR Mux\00", [24 x i8] zeroinitializer }, align 32
@hpr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @hpr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LINEL Mux\00", [22 x i8] zeroinitializer }, align 32
@linel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @linel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LINER Mux\00", [22 x i8] zeroinitializer }, align 32
@liner_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @liner_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@wm8904_dapm_widgets = internal constant { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [396 x i8] } { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 104, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dacl_sidetone_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dacr_sidetone_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hpl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hpr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @linel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @liner_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [396 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left Sidetone Mux\00", [46 x i8] zeroinitializer }, align 32
@dacl_sidetone_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 2, i8 2, i32 3, i32 3, ptr @sidetone_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@sidetone_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.177, ptr @.str.136, ptr @.str.137], [20 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right Sidetone Mux\00", [45 x i8] zeroinitializer }, align 32
@dacr_sidetone_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 0, i8 0, i32 3, i32 3, ptr @sidetone_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hpl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 61, i8 3, i8 3, i32 2, i32 1, ptr @out_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@out_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.105, ptr @.str.179], [24 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Bypass\00", [25 x i8] zeroinitializer }, align 32
@hpr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 61, i8 2, i8 2, i32 2, i32 1, ptr @out_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@linel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 61, i8 1, i8 1, i32 2, i32 1, ptr @out_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@liner_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 61, i8 0, i8 0, i32 2, i32 1, ptr @out_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@wm8904_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.180, ptr @.str.4, i32 1892, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8904_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@wm8904_set_bias_level._entry_ptr = internal global ptr @wm8904_set_bias_level._entry, section ".printk_index", align 4
@wm8904_set_bias_level._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.4, i32 1899, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable MCLK: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8904_set_bias_level._entry_ptr.183 = internal global ptr @wm8904_set_bias_level._entry.181, section ".printk_index", align 4
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8904-hifi\00", [20 x i8] zeroinitializer }, align 32
@wm8904_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8904_set_sysclk, ptr @wm8904_set_fll, ptr null, ptr null, ptr @wm8904_set_fmt, ptr null, ptr @wm8904_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8904_mute, ptr null, ptr null, ptr @wm8904_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@wm8904_set_sysclk.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.185, ptr @.str.4, ptr @.str.186, i8 1, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8904_set_sysclk\00", [46 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Clock source is %d at %uHz\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8904_configure_clocking.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.187, ptr @.str.4, ptr @.str.188, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wm8904_configure_clocking\00", [38 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Using %dHz MCLK\0A\00", [47 x i8] zeroinitializer }, align 32
@wm8904_configure_clocking.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.187, ptr @.str.4, ptr @.str.189, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Using %dHz FLL clock\0A\00", [42 x i8] zeroinitializer }, align 32
@wm8904_configure_clocking._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.187, ptr @.str.4, i32 346, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"System clock not configured\0A\00", [35 x i8] zeroinitializer }, align 32
@wm8904_configure_clocking._entry_ptr = internal global ptr @wm8904_configure_clocking._entry, section ".printk_index", align 4
@wm8904_configure_clocking.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.187, ptr @.str.4, ptr @.str.191, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.191 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CLK_SYS is %dHz\0A\00", [47 x i8] zeroinitializer }, align 32
@wm8904_set_fll.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.192, ptr @.str.4, ptr @.str.193, i8 1, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.192 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8904_set_fll\00", [17 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@wm8904_set_fll.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.192, ptr @.str.4, ptr @.str.194, i8 1, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.194 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Using free running FLL\0A\00", [40 x i8] zeroinitializer }, align 32
@wm8904_set_fll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.192, ptr @.str.4, i32 1713, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown FLL ID %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wm8904_set_fll._entry_ptr = internal global ptr @wm8904_set_fll._entry, section ".printk_index", align 4
@wm8904_set_fll.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.192, ptr @.str.4, ptr @.str.196, i8 1, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.196 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FLL configured for %dHz->%dHz\0A\00", [33 x i8] zeroinitializer }, align 32
@fll_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.4, i32 1594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Can't scale %dMHz input down to <=13.5MHz\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fll_factors\00", [20 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr = internal global ptr @fll_factors._entry, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.198, ptr @.str.4, ptr @.str.199, i8 1, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.199 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Fref=%u Fout=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@fll_factors._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.198, ptr @.str.4, i32 1610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to find FLL_OUTDIV for Fout=%uHz\0A\00", [53 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr.202 = internal global ptr @fll_factors._entry.200, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.198, ptr @.str.4, ptr @.str.203, i8 1, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Fvco=%dHz\0A\00", [21 x i8] zeroinitializer }, align 32
@fll_fratios = internal constant { [5 x %struct.anon.108], [48 x i8] } { [5 x %struct.anon.108] [%struct.anon.108 { i32 0, i32 64000, i16 4, i32 16 }, %struct.anon.108 { i32 64000, i32 128000, i16 3, i32 8 }, %struct.anon.108 { i32 128000, i32 256000, i16 2, i32 4 }, %struct.anon.108 { i32 256000, i32 1000000, i16 1, i32 2 }, %struct.anon.108 { i32 1000000, i32 13500000, i16 0, i32 1 }], [48 x i8] zeroinitializer }, align 32
@fll_factors._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.198, ptr @.str.4, i32 1628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to find FLL_FRATIO for Fref=%uHz\0A\00", [53 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr.206 = internal global ptr @fll_factors._entry.204, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.198, ptr @.str.4, ptr @.str.207, i8 1, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.207 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Nmod=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@fll_factors.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.198, ptr @.str.4, ptr @.str.208, i8 1, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.208 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"N=%x K=%x FLL_FRATIO=%x FLL_OUTDIV=%x FLL_CLK_REF_DIV=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8904_hw_params.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.209, ptr @.str.4, ptr @.str.210, i8 1, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.209 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8904_hw_params\00", [47 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Configuring for %d %d bit TDM slots\0A\00", [59 x i8] zeroinitializer }, align 32
@wm8904_hw_params.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.209, ptr @.str.4, ptr @.str.211, i8 1, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.211 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Target BCLK is %dHz\0A\00", [43 x i8] zeroinitializer }, align 32
@clk_sys_rates = internal constant { [10 x %struct.anon.109], [48 x i8] } { [10 x %struct.anon.109] [%struct.anon.109 { i32 64, i32 0 }, %struct.anon.109 { i32 128, i32 1 }, %struct.anon.109 { i32 192, i32 2 }, %struct.anon.109 { i32 256, i32 3 }, %struct.anon.109 { i32 384, i32 4 }, %struct.anon.109 { i32 512, i32 5 }, %struct.anon.109 { i32 786, i32 6 }, %struct.anon.109 { i32 1024, i32 7 }, %struct.anon.109 { i32 1408, i32 8 }, %struct.anon.109 { i32 1536, i32 9 }], [48 x i8] zeroinitializer }, align 32
@wm8904_hw_params.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.209, ptr @.str.4, ptr @.str.212, i8 1, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.212 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Selected CLK_SYS_RATIO of %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sample_rates = internal constant { [9 x %struct.anon.110], [56 x i8] } { [9 x %struct.anon.110] [%struct.anon.110 { i32 8000, i32 0 }, %struct.anon.110 { i32 11025, i32 1 }, %struct.anon.110 { i32 12000, i32 1 }, %struct.anon.110 { i32 16000, i32 2 }, %struct.anon.110 { i32 22050, i32 3 }, %struct.anon.110 { i32 24000, i32 3 }, %struct.anon.110 { i32 32000, i32 4 }, %struct.anon.110 { i32 44100, i32 5 }, %struct.anon.110 { i32 48000, i32 5 }], [56 x i8] zeroinitializer }, align 32
@wm8904_hw_params.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.209, ptr @.str.4, ptr @.str.213, i8 1, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.213 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Selected SAMPLE_RATE of %dHz\0A\00", [34 x i8] zeroinitializer }, align 32
@bclk_divs = internal constant { [20 x %struct.anon.111], [32 x i8] } { [20 x %struct.anon.111] [%struct.anon.111 { i32 10, i32 0 }, %struct.anon.111 { i32 15, i32 1 }, %struct.anon.111 { i32 20, i32 2 }, %struct.anon.111 { i32 30, i32 3 }, %struct.anon.111 { i32 40, i32 4 }, %struct.anon.111 { i32 50, i32 5 }, %struct.anon.111 { i32 55, i32 6 }, %struct.anon.111 { i32 60, i32 7 }, %struct.anon.111 { i32 80, i32 8 }, %struct.anon.111 { i32 100, i32 9 }, %struct.anon.111 { i32 110, i32 10 }, %struct.anon.111 { i32 120, i32 11 }, %struct.anon.111 { i32 160, i32 12 }, %struct.anon.111 { i32 200, i32 13 }, %struct.anon.111 { i32 220, i32 14 }, %struct.anon.111 { i32 240, i32 16 }, %struct.anon.111 { i32 200, i32 17 }, %struct.anon.111 { i32 320, i32 18 }, %struct.anon.111 { i32 440, i32 19 }, %struct.anon.111 { i32 480, i32 20 }], [32 x i8] zeroinitializer }, align 32
@wm8904_hw_params.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.209, ptr @.str.4, ptr @.str.214, i8 1, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.214 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Selected BCLK_DIV of %d for %dHz BCLK\0A\00", [57 x i8] zeroinitializer }, align 32
@wm8904_hw_params.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.209, ptr @.str.4, ptr @.str.215, i8 1, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.215 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LRCLK_RATE is %d\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.wm8904_set_fll = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 2, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.wm8904_set_fmt = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 64, i32 0, i32 64, i32 0], [16 x i8] zeroinitializer }, align 32
@switch.table.wm8904_set_fmt.216 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2048, i32 2048, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@switch.table.wm8904_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 64, i32 128, i32 0, i32 192], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [105 x i64] [i64 103, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 14, i64 15, i64 18, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26, i64 27, i64 30, i64 31, i64 32, i64 33, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 57, i64 58, i64 59, i64 60, i64 61, i64 67, i64 68, i64 69, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 90, i64 94, i64 98, i64 104, i64 108, i64 109, i64 110, i64 111, i64 112, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 126, i64 127, i64 128, i64 129, i64 130, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 161, i64 198, i64 204, i64 247, i64 248]
@__sancov_gen_cov_switch_values.217 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 68, i64 73, i64 74, i64 75, i64 76, i64 77, i64 127]
@__sancov_gen_cov_switch_values.218 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.219 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.220 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.222 = internal global [4 x i64] [i64 2, i64 8, i64 90, i64 94]
@__sancov_gen_cov_switch_values.223 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.224 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.225 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.226 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.228 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.229 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 12]
@__sancov_gen_cov_switch_values.230 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 12]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.232 = private unnamed_addr constant [18 x i8] c"wm8904_i2c_driver\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2326, i32 26 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2328, i32 11 }
@___asan_gen_.238 = private unnamed_addr constant [16 x i8] c"wm8904_of_match\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2151, i32 34 }
@___asan_gen_.241 = private unnamed_addr constant [14 x i8] c"wm8904_i2c_id\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2318, i32 35 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2177, i32 41 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2180, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [14 x i8] c"wm8904_regmap\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2137, i32 35 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2184, i32 19 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2187, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2212, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2219, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2225, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2229, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2236, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2240, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2244, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8904\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2128, i32 46 }
@___asan_gen_.328 = private unnamed_addr constant [11 x i8] c"wm8904_dai\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1969, i32 34 }
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c"wm8904_reg_defaults\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 88, i32 33 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 38, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 39, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 40, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 41, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 42, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2108, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant [19 x i8] c"wm8904_eq_controls\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 633, i32 38 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2058, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2062, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2080, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2086, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 634, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant [7 x i8] c"eq_tlv\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 546, i32 14 }
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 635, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 636, i32 1 }
@___asan_gen_.396 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 637, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 638, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1994, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2034, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 2042, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 442, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [14 x i8] c"core_intercon\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1051, i32 40 }
@___asan_gen_.429 = private unnamed_addr constant [24 x i8] c"wm8904_adc_snd_controls\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 578, i32 38 }
@___asan_gen_.432 = private unnamed_addr constant [24 x i8] c"wm8904_dac_snd_controls\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 600, i32 38 }
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c"wm8904_snd_controls\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 628, i32 38 }
@___asan_gen_.438 = private unnamed_addr constant [13 x i8] c"adc_intercon\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1056, i32 40 }
@___asan_gen_.441 = private unnamed_addr constant [13 x i8] c"dac_intercon\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1103, i32 40 }
@___asan_gen_.444 = private unnamed_addr constant [16 x i8] c"wm8904_intercon\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1135, i32 40 }
@___asan_gen_.447 = private unnamed_addr constant [16 x i8] c"wm8912_intercon\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1169, i32 40 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 919, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 921, i32 1 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 922, i32 1 }
@___asan_gen_.459 = private unnamed_addr constant [25 x i8] c"wm8904_core_dapm_widgets\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 918, i32 41 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 579, i32 1 }
@___asan_gen_.465 = private unnamed_addr constant [12 x i8] c"digital_tlv\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 543, i32 14 }
@___asan_gen_.468 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 583, i32 1 }
@___asan_gen_.472 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 585, i32 1 }
@___asan_gen_.476 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 588, i32 1 }
@___asan_gen_.480 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 589, i32 1 }
@___asan_gen_.484 = private unnamed_addr constant [9 x i8] c"hpf_mode\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 552, i32 8 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 590, i32 1 }
@___asan_gen_.490 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [14 x i8] c"hpf_mode_text\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 548, i32 20 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 549, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 549, i32 11 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 549, i32 22 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 549, i32 33 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 601, i32 1 }
@___asan_gen_.509 = private unnamed_addr constant [14 x i8] c"dac_boost_tlv\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 542, i32 14 }
@___asan_gen_.512 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 603, i32 1 }
@___asan_gen_.516 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 606, i32 1 }
@___asan_gen_.520 = private unnamed_addr constant [8 x i8] c"out_tlv\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 544, i32 14 }
@___asan_gen_.523 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 608, i32 1 }
@___asan_gen_.527 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 610, i32 1 }
@___asan_gen_.531 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 613, i32 1 }
@___asan_gen_.535 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 615, i32 1 }
@___asan_gen_.539 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 617, i32 1 }
@___asan_gen_.543 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 620, i32 1 }
@___asan_gen_.547 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 621, i32 1 }
@___asan_gen_.551 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 622, i32 1 }
@___asan_gen_.555 = private unnamed_addr constant [9 x i8] c"drc_path\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 598, i32 8 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 623, i32 1 }
@___asan_gen_.561 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 624, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant [14 x i8] c"drc_path_text\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 594, i32 20 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 595, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 595, i32 9 }
@___asan_gen_.574 = private unnamed_addr constant [16 x i8] c"deemph_settings\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 488, i32 12 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 511, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 629, i32 1 }
@___asan_gen_.586 = private unnamed_addr constant [13 x i8] c"sidetone_tlv\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 545, i32 14 }
@___asan_gen_.589 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 926, i32 1 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 927, i32 1 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 928, i32 1 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 929, i32 1 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 930, i32 1 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 931, i32 1 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 933, i32 1 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 935, i32 1 }
@___asan_gen_.614 = private unnamed_addr constant [8 x i8] c"lin_mux\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 851, i32 38 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 936, i32 1 }
@___asan_gen_.620 = private unnamed_addr constant [12 x i8] c"lin_inv_mux\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 857, i32 38 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 938, i32 1 }
@___asan_gen_.626 = private unnamed_addr constant [9 x i8] c"lin_mode\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 864, i32 38 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 939, i32 1 }
@___asan_gen_.632 = private unnamed_addr constant [8 x i8] c"rin_mux\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 874, i32 38 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 940, i32 1 }
@___asan_gen_.638 = private unnamed_addr constant [12 x i8] c"rin_inv_mux\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 880, i32 38 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 942, i32 1 }
@___asan_gen_.644 = private unnamed_addr constant [9 x i8] c"rin_mode\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 887, i32 38 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 944, i32 1 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 946, i32 1 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 949, i32 1 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 950, i32 1 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 952, i32 1 }
@___asan_gen_.662 = private unnamed_addr constant [12 x i8] c"aifoutl_mux\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 897, i32 38 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 953, i32 1 }
@___asan_gen_.668 = private unnamed_addr constant [12 x i8] c"aifoutr_mux\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 903, i32 38 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 955, i32 1 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 956, i32 1 }
@___asan_gen_.680 = private unnamed_addr constant [24 x i8] c"wm8904_adc_dapm_widgets\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 925, i32 41 }
@___asan_gen_.683 = private unnamed_addr constant [9 x i8] c"lin_enum\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 848, i32 8 }
@___asan_gen_.686 = private unnamed_addr constant [9 x i8] c"lin_text\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 844, i32 20 }
@___asan_gen_.689 = private unnamed_addr constant [13 x i8] c"lin_inv_enum\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 854, i32 8 }
@___asan_gen_.692 = private unnamed_addr constant [14 x i8] c"lin_mode_enum\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 860, i32 8 }
@___asan_gen_.695 = private unnamed_addr constant [16 x i8] c"input_mode_text\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 840, i32 20 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 841, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 841, i32 18 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 841, i32 39 }
@___asan_gen_.707 = private unnamed_addr constant [9 x i8] c"rin_enum\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 871, i32 8 }
@___asan_gen_.710 = private unnamed_addr constant [9 x i8] c"rin_text\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 867, i32 20 }
@___asan_gen_.713 = private unnamed_addr constant [13 x i8] c"rin_inv_enum\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 877, i32 8 }
@___asan_gen_.716 = private unnamed_addr constant [14 x i8] c"rin_mode_enum\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 883, i32 8 }
@___asan_gen_.719 = private unnamed_addr constant [13 x i8] c"aifoutl_enum\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 894, i32 8 }
@___asan_gen_.722 = private unnamed_addr constant [9 x i8] c"aif_text\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 890, i32 20 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 891, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 891, i32 10 }
@___asan_gen_.731 = private unnamed_addr constant [13 x i8] c"aifoutr_enum\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 900, i32 8 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 960, i32 1 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 961, i32 1 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 963, i32 1 }
@___asan_gen_.746 = private unnamed_addr constant [11 x i8] c"aifinl_mux\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 909, i32 38 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 964, i32 1 }
@___asan_gen_.752 = private unnamed_addr constant [11 x i8] c"aifinr_mux\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 915, i32 38 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 966, i32 1 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 967, i32 1 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 969, i32 1 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 972, i32 1 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 973, i32 1 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 975, i32 1 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 976, i32 1 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 978, i32 1 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 982, i32 1 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 987, i32 1 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 988, i32 1 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 989, i32 1 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 990, i32 1 }
@___asan_gen_.794 = private unnamed_addr constant [24 x i8] c"wm8904_dac_dapm_widgets\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 959, i32 41 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 910, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant [12 x i8] c"aifinl_enum\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 906, i32 8 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 916, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant [12 x i8] c"aifinr_enum\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 912, i32 8 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 727, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 757, i32 4 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 768, i32 4 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 787, i32 4 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 789, i32 4 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1038, i32 1 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1039, i32 1 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1040, i32 1 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1042, i32 1 }
@___asan_gen_.845 = private unnamed_addr constant [18 x i8] c"dacl_sidetone_mux\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1028, i32 38 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1043, i32 1 }
@___asan_gen_.851 = private unnamed_addr constant [18 x i8] c"dacr_sidetone_mux\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1034, i32 38 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1045, i32 1 }
@___asan_gen_.857 = private unnamed_addr constant [8 x i8] c"hpl_mux\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1000, i32 38 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1046, i32 1 }
@___asan_gen_.863 = private unnamed_addr constant [8 x i8] c"hpr_mux\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1006, i32 38 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1047, i32 1 }
@___asan_gen_.869 = private unnamed_addr constant [10 x i8] c"linel_mux\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1012, i32 38 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1048, i32 1 }
@___asan_gen_.875 = private unnamed_addr constant [10 x i8] c"liner_mux\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1018, i32 38 }
@___asan_gen_.878 = private unnamed_addr constant [20 x i8] c"wm8904_dapm_widgets\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1037, i32 41 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1029, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant [19 x i8] c"dacl_sidetone_enum\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1025, i32 8 }
@___asan_gen_.887 = private unnamed_addr constant [14 x i8] c"sidetone_text\00", align 1
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1021, i32 20 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1022, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1035, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant [19 x i8] c"dacr_sidetone_enum\00", align 1
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1031, i32 8 }
@___asan_gen_.899 = private unnamed_addr constant [9 x i8] c"hpl_enum\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 997, i32 8 }
@___asan_gen_.902 = private unnamed_addr constant [13 x i8] c"out_mux_text\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 993, i32 20 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 994, i32 9 }
@___asan_gen_.908 = private unnamed_addr constant [9 x i8] c"hpr_enum\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1003, i32 8 }
@___asan_gen_.911 = private unnamed_addr constant [11 x i8] c"linel_enum\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1009, i32 8 }
@___asan_gen_.914 = private unnamed_addr constant [11 x i8] c"liner_enum\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1015, i32 8 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1890, i32 5 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1898, i32 5 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1970, i32 10 }
@___asan_gen_.932 = private unnamed_addr constant [15 x i8] c"wm8904_dai_ops\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1959, i32 37 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1842, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 327, i32 3 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 338, i32 3 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 346, i32 3 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 365, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1677, i32 3 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1703, i32 3 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1713, i32 3 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1779, i32 2 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1593, i32 4 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1599, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1609, i32 4 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1617, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant [12 x i8] c"fll_fratios\00", align 1
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1569, i32 3 }
@___asan_gen_.1001 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1628, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1637, i32 2 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1652, i32 2 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1302, i32 3 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1328, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant [14 x i8] c"clk_sys_rates\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1231, i32 3 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1346, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant [13 x i8] c"sample_rates\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1247, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1362, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant [10 x i8] c"bclk_divs\00", align 1
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1262, i32 3 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1385, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1041 = private constant [29 x i8] c"../sound/soc/codecs/wm8904.c\00", align 1
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 1390, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant [28 x i8] c"switch.table.wm8904_set_fll\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant [28 x i8] c"switch.table.wm8904_set_fmt\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant [32 x i8] c"switch.table.wm8904_set_fmt.216\00", align 1
@___asan_gen_.1046 = private unnamed_addr constant [30 x i8] c"switch.table.wm8904_hw_params\00", align 1
@llvm.compiler.used = appending global [316 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__exitcall_wm8904_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_wm8904__319_2335_wm8904_i2c_driver_init6, ptr @fll_factors._entry, ptr @fll_factors._entry.200, ptr @fll_factors._entry.204, ptr @fll_factors._entry_ptr, ptr @fll_factors._entry_ptr.202, ptr @fll_factors._entry_ptr.206, ptr @out_pga_event._entry, ptr @out_pga_event._entry_ptr, ptr @wm8904_configure_clocking._entry, ptr @wm8904_configure_clocking._entry_ptr, ptr @wm8904_handle_pdata._entry, ptr @wm8904_handle_pdata._entry_ptr, ptr @wm8904_handle_retune_mobile_pdata._entry, ptr @wm8904_handle_retune_mobile_pdata._entry_ptr, ptr @wm8904_i2c_driver_exit, ptr @wm8904_i2c_probe._entry, ptr @wm8904_i2c_probe._entry.11, ptr @wm8904_i2c_probe._entry.14, ptr @wm8904_i2c_probe._entry.17, ptr @wm8904_i2c_probe._entry.20, ptr @wm8904_i2c_probe._entry.23, ptr @wm8904_i2c_probe._entry.26, ptr @wm8904_i2c_probe._entry.30, ptr @wm8904_i2c_probe._entry.8, ptr @wm8904_i2c_probe._entry_ptr, ptr @wm8904_i2c_probe._entry_ptr.10, ptr @wm8904_i2c_probe._entry_ptr.13, ptr @wm8904_i2c_probe._entry_ptr.16, ptr @wm8904_i2c_probe._entry_ptr.19, ptr @wm8904_i2c_probe._entry_ptr.22, ptr @wm8904_i2c_probe._entry_ptr.25, ptr @wm8904_i2c_probe._entry_ptr.29, ptr @wm8904_i2c_probe._entry_ptr.32, ptr @wm8904_probe._entry, ptr @wm8904_probe._entry_ptr, ptr @wm8904_set_bias_level._entry, ptr @wm8904_set_bias_level._entry.181, ptr @wm8904_set_bias_level._entry_ptr, ptr @wm8904_set_bias_level._entry_ptr.183, ptr @wm8904_set_fll._entry, ptr @wm8904_set_fll._entry_ptr, ptr @wm8904_i2c_driver, ptr @.str, ptr @wm8904_of_match, ptr @wm8904_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @wm8904_i2c_probe._key, ptr @wm8904_regmap, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @soc_component_dev_wm8904, ptr @wm8904_dai, ptr @wm8904_reg_defaults, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @wm8904_eq_controls, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @eq_tlv, ptr @.compoundliteral, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @core_intercon, ptr @wm8904_adc_snd_controls, ptr @wm8904_dac_snd_controls, ptr @wm8904_snd_controls, ptr @adc_intercon, ptr @dac_intercon, ptr @wm8904_intercon, ptr @wm8912_intercon, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @wm8904_core_dapm_widgets, ptr @.str.65, ptr @digital_tlv, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @hpf_mode, ptr @.str.74, ptr @.compoundliteral.75, ptr @hpf_mode_text, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @dac_boost_tlv, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @out_tlv, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @drc_path, ptr @.str.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @drc_path_text, ptr @.str.104, ptr @.str.105, ptr @deemph_settings, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @sidetone_tlv, ptr @.compoundliteral.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @lin_mux, ptr @.str.118, ptr @lin_inv_mux, ptr @.str.119, ptr @lin_mode, ptr @.str.120, ptr @rin_mux, ptr @.str.121, ptr @rin_inv_mux, ptr @.str.122, ptr @rin_mode, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @aifoutl_mux, ptr @.str.128, ptr @aifoutr_mux, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @wm8904_adc_dapm_widgets, ptr @lin_enum, ptr @lin_text, ptr @lin_inv_enum, ptr @lin_mode_enum, ptr @input_mode_text, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @rin_enum, ptr @rin_text, ptr @rin_inv_enum, ptr @rin_mode_enum, ptr @aifoutl_enum, ptr @aif_text, ptr @.str.136, ptr @.str.137, ptr @aifoutr_enum, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @aifinl_mux, ptr @.str.142, ptr @aifinr_mux, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @wm8904_dac_dapm_widgets, ptr @.str.157, ptr @aifinl_enum, ptr @.str.158, ptr @aifinr_enum, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @dacl_sidetone_mux, ptr @.str.170, ptr @dacr_sidetone_mux, ptr @.str.171, ptr @hpl_mux, ptr @.str.172, ptr @hpr_mux, ptr @.str.173, ptr @linel_mux, ptr @.str.174, ptr @liner_mux, ptr @wm8904_dapm_widgets, ptr @.str.176, ptr @dacl_sidetone_enum, ptr @sidetone_text, ptr @.str.177, ptr @.str.178, ptr @dacr_sidetone_enum, ptr @hpl_enum, ptr @out_mux_text, ptr @.str.179, ptr @hpr_enum, ptr @linel_enum, ptr @liner_enum, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @wm8904_dai_ops, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.203, ptr @fll_fratios, ptr @.str.205, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @clk_sys_rates, ptr @.str.212, ptr @sample_rates, ptr @.str.213, ptr @bclk_divs, ptr @.str.214, ptr @.str.215, ptr @switch.table.wm8904_set_fll, ptr @switch.table.wm8904_set_fmt, ptr @switch.table.wm8904_set_fmt.216, ptr @switch.table.wm8904_hw_params], section "llvm.metadata"
@0 = internal global [289 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_i2c_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_i2c_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8904 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_reg_defaults to i32), i32 744, i32 928, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_eq_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_handle_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_handle_retune_mobile_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_intercon to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_adc_snd_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_dac_snd_controls to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_snd_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_intercon to i32), i32 1768, i32 2208, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_intercon to i32), i32 1092, i32 1376, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_intercon to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8912_intercon to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_core_dapm_widgets to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpf_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpf_mode_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_path to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_path_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deemph_settings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lin_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lin_inv_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lin_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rin_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rin_inv_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rin_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifoutl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifoutr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_adc_dapm_widgets to i32), i32 3780, i32 4736, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lin_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lin_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lin_inv_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lin_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_mode_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rin_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rin_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rin_inv_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rin_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifoutl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifoutr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifinl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifinr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_dac_dapm_widgets to i32), i32 3060, i32 3808, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifinl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aifinr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_pga_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacl_sidetone_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacr_sidetone_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @liner_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_dapm_widgets to i32), i32 1620, i32 2016, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacl_sidetone_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacr_sidetone_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @liner_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_set_bias_level._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_configure_clocking._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8904_set_fll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_fratios to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sys_rates to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_rates to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bclk_divs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8904_set_fll to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8904_set_fmt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8904_set_fmt.216 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8904_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8904_i2c_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8904_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8904_i2c_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !551
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 284, i32 noundef 3520) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup158_crit_edge, label %if.end

entry.cleanup158_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup158

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %mclk = getelementptr inbounds %struct.wm8904_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #14
  br label %cleanup158

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8904_regmap, ptr noundef nonnull @wm8904_i2c_probe._key, ptr noundef nonnull @.str.7) #11
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %call.i, align 4
  %cmp.i247 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %4) #14
  br label %cleanup158

if.end20:                                         ; preds = %if.end9
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  %call25 = tail call ptr @of_match_node(ptr noundef nonnull @wm8904_of_match, ptr noundef nonnull %6) #11
  %cmp26 = icmp eq ptr %call25, null
  br i1 %cmp26, label %if.then22.cleanup158_crit_edge, label %if.end28

if.then22.cleanup158_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup158

if.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.of_device_id, ptr %call25, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %if.end30

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end28
  %.sink = phi i32 [ %9, %if.end28 ], [ %11, %if.else ]
  %devtype = getelementptr inbounds %struct.wm8904_priv, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %devtype to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %devtype, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %14 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data, align 8
  %pdata = getelementptr inbounds %struct.wm8904_priv, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %pdata, align 4
  %arrayidx33 = getelementptr %struct.wm8904_priv, ptr %call.i, i32 0, i32 3, i32 0
  %17 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.33, ptr %arrayidx33, align 4
  %arrayidx33.1 = getelementptr %struct.wm8904_priv, ptr %call.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.34, ptr %arrayidx33.1, align 4
  %arrayidx33.2 = getelementptr %struct.wm8904_priv, ptr %call.i, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.35, ptr %arrayidx33.2, align 4
  %arrayidx33.3 = getelementptr %struct.wm8904_priv, ptr %call.i, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.36, ptr %arrayidx33.3, align 4
  %arrayidx33.4 = getelementptr %struct.wm8904_priv, ptr %call.i, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.37, ptr %arrayidx33.4, align 4
  %call36 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 5, ptr noundef %arrayidx33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call36) #14
  br label %cleanup158

if.end43:                                         ; preds = %if.end30
  %call46 = tail call i32 @regulator_bulk_enable(i32 noundef 5, ptr noundef %arrayidx33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call46) #14
  br label %cleanup158

if.end53:                                         ; preds = %if.end43
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %call55 = call i32 @regmap_read(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %do.end60, label %if.end62

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call55) #14
  br label %err_enable

if.end62:                                         ; preds = %if.end53
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35076, i32 %25)
  %cmp63.not = icmp eq i32 %25, 35076
  br i1 %cmp63.not, label %if.end69, label %do.end67

do.end67:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %25) #14
  br label %err_enable

if.end69:                                         ; preds = %if.end62
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %call71 = call i32 @regmap_read(ptr noundef %27, i32 noundef 1, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %do.end76, label %do.end81

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call71) #14
  br label %err_enable

do.end81:                                         ; preds = %if.end69
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %add = add i32 %29, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %add) #14
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %call84 = call i32 @regmap_write(ptr noundef %31, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end89, label %if.end91

do.end89:                                         ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call84) #14
  br label %err_enable

if.end91:                                         ; preds = %do.end81
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %call.i248 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 36, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %call.i249 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 37, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %call.i250 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 30, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %call.i251 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 31, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %call.i252 = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 57, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %call.i253 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 58, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %call.i254 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 59, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %call.i255 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 60, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %call.i256 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 20, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %50 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdata, align 4
  %tobool111.not = icmp eq ptr %51, null
  br i1 %tobool111.not, label %if.end91.if.end141_crit_edge, label %for.body115.preheader

if.end91.if.end141_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end141

for.body115.preheader:                            ; preds = %if.end91
  %52 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdata, align 4
  %arrayidx117 = getelementptr %struct.wm8904_pdata, ptr %53, i32 0, i32 4, i32 0
  %54 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool118.not = icmp eq i32 %55, 0
  br i1 %tobool118.not, label %for.body115.preheader.for.inc127_crit_edge, label %if.end120

for.body115.preheader.for.inc127_crit_edge:       ; preds = %for.body115.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127

if.end120:                                        ; preds = %for.body115.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %call.i257 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 121, i32 noundef 65535, i32 noundef %55, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc127

for.inc127:                                       ; preds = %if.end120, %for.body115.preheader.for.inc127_crit_edge
  %58 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdata, align 4
  %arrayidx117.1 = getelementptr %struct.wm8904_pdata, ptr %59, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %arrayidx117.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx117.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool118.not.1 = icmp eq i32 %61, 0
  br i1 %tobool118.not.1, label %for.inc127.for.inc127.1_crit_edge, label %if.end120.1

for.inc127.for.inc127.1_crit_edge:                ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.1

if.end120.1:                                      ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  %call.i257.1 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 122, i32 noundef 65535, i32 noundef %61, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc127.1

for.inc127.1:                                     ; preds = %if.end120.1, %for.inc127.for.inc127.1_crit_edge
  %64 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdata, align 4
  %arrayidx117.2 = getelementptr %struct.wm8904_pdata, ptr %65, i32 0, i32 4, i32 2
  %66 = ptrtoint ptr %arrayidx117.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx117.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool118.not.2 = icmp eq i32 %67, 0
  br i1 %tobool118.not.2, label %for.inc127.1.for.inc127.2_crit_edge, label %if.end120.2

for.inc127.1.for.inc127.2_crit_edge:              ; preds = %for.inc127.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.2

if.end120.2:                                      ; preds = %for.inc127.1
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %call.i257.2 = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 123, i32 noundef 65535, i32 noundef %67, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc127.2

for.inc127.2:                                     ; preds = %if.end120.2, %for.inc127.1.for.inc127.2_crit_edge
  %70 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdata, align 4
  %arrayidx117.3 = getelementptr %struct.wm8904_pdata, ptr %71, i32 0, i32 4, i32 3
  %72 = ptrtoint ptr %arrayidx117.3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx117.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool118.not.3 = icmp eq i32 %73, 0
  br i1 %tobool118.not.3, label %for.inc127.2.for.inc127.3_crit_edge, label %if.end120.3

for.inc127.2.for.inc127.3_crit_edge:              ; preds = %for.inc127.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc127.3

if.end120.3:                                      ; preds = %for.inc127.2
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  %call.i257.3 = call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 124, i32 noundef 65535, i32 noundef %73, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc127.3

for.inc127.3:                                     ; preds = %if.end120.3, %for.inc127.2.for.inc127.3_crit_edge
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %78 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdata, align 4
  %arrayidx136 = getelementptr %struct.wm8904_pdata, ptr %79, i32 0, i32 5, i32 0
  %80 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx136, align 4
  %call.i258 = call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 6, i32 noundef 65535, i32 noundef %81, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %82 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i, align 4
  %84 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdata, align 4
  %arrayidx136.1 = getelementptr %struct.wm8904_pdata, ptr %85, i32 0, i32 5, i32 1
  %86 = ptrtoint ptr %arrayidx136.1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx136.1, align 4
  %call.i258.1 = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 7, i32 noundef 65535, i32 noundef %87, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end141

if.end141:                                        ; preds = %for.inc127.3, %if.end91.if.end141_crit_edge
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i, align 4
  %call.i259 = call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 104, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call.i, align 4
  %call.i260 = call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 4, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %92 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call.i, align 4
  call void @regcache_cache_only(ptr noundef %93, i1 noundef zeroext true) #11
  %call149 = call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %arrayidx33) #11
  %call151 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8904, ptr noundef nonnull @wm8904_dai, i32 noundef 1) #11
  br label %cleanup158

err_enable:                                       ; preds = %do.end89, %do.end76, %do.end67, %do.end60
  %ret.0 = phi i32 [ %call55, %do.end60 ], [ -22, %do.end67 ], [ %call71, %do.end76 ], [ %call84, %do.end89 ]
  %call157 = call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %arrayidx33) #11
  br label %cleanup158

cleanup158:                                       ; preds = %err_enable, %if.end141, %do.end51, %do.end41, %if.then22.cleanup158_crit_edge, %if.then13, %if.then5, %entry.cleanup158_crit_edge
  %retval.1 = phi i32 [ %2, %if.then5 ], [ %4, %if.then13 ], [ %call36, %do.end41 ], [ %call46, %do.end51 ], [ %ret.0, %err_enable ], [ -12, %entry.cleanup158_crit_edge ], [ %call151, %if.end141 ], [ -22, %if.then22.cleanup158_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8904_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 4, label %entry.return_crit_edge2
    i32 5, label %entry.return_crit_edge3
    i32 6, label %entry.return_crit_edge4
    i32 7, label %entry.return_crit_edge5
    i32 8, label %entry.return_crit_edge6
    i32 9, label %entry.return_crit_edge7
    i32 10, label %entry.return_crit_edge8
    i32 12, label %entry.return_crit_edge9
    i32 14, label %entry.return_crit_edge10
    i32 15, label %entry.return_crit_edge11
    i32 18, label %entry.return_crit_edge12
    i32 20, label %entry.return_crit_edge13
    i32 21, label %entry.return_crit_edge14
    i32 22, label %entry.return_crit_edge15
    i32 24, label %entry.return_crit_edge16
    i32 25, label %entry.return_crit_edge17
    i32 26, label %entry.return_crit_edge18
    i32 27, label %entry.return_crit_edge19
    i32 30, label %entry.return_crit_edge20
    i32 31, label %entry.return_crit_edge21
    i32 32, label %entry.return_crit_edge22
    i32 33, label %entry.return_crit_edge23
    i32 36, label %entry.return_crit_edge24
    i32 37, label %entry.return_crit_edge25
    i32 38, label %entry.return_crit_edge26
    i32 39, label %entry.return_crit_edge27
    i32 40, label %entry.return_crit_edge28
    i32 41, label %entry.return_crit_edge29
    i32 42, label %entry.return_crit_edge30
    i32 43, label %entry.return_crit_edge31
    i32 44, label %entry.return_crit_edge32
    i32 45, label %entry.return_crit_edge33
    i32 46, label %entry.return_crit_edge34
    i32 47, label %entry.return_crit_edge35
    i32 57, label %entry.return_crit_edge36
    i32 58, label %entry.return_crit_edge37
    i32 59, label %entry.return_crit_edge38
    i32 60, label %entry.return_crit_edge39
    i32 61, label %entry.return_crit_edge40
    i32 67, label %entry.return_crit_edge41
    i32 68, label %entry.return_crit_edge42
    i32 69, label %entry.return_crit_edge43
    i32 71, label %entry.return_crit_edge44
    i32 72, label %entry.return_crit_edge45
    i32 73, label %entry.return_crit_edge46
    i32 74, label %entry.return_crit_edge47
    i32 75, label %entry.return_crit_edge48
    i32 76, label %entry.return_crit_edge49
    i32 77, label %entry.return_crit_edge50
    i32 90, label %entry.return_crit_edge51
    i32 94, label %entry.return_crit_edge52
    i32 98, label %entry.return_crit_edge53
    i32 104, label %entry.return_crit_edge54
    i32 108, label %entry.return_crit_edge55
    i32 109, label %entry.return_crit_edge56
    i32 110, label %entry.return_crit_edge57
    i32 111, label %entry.return_crit_edge58
    i32 112, label %entry.return_crit_edge59
    i32 116, label %entry.return_crit_edge60
    i32 117, label %entry.return_crit_edge61
    i32 118, label %entry.return_crit_edge62
    i32 119, label %entry.return_crit_edge63
    i32 120, label %entry.return_crit_edge64
    i32 121, label %entry.return_crit_edge65
    i32 122, label %entry.return_crit_edge66
    i32 123, label %entry.return_crit_edge67
    i32 124, label %entry.return_crit_edge68
    i32 126, label %entry.return_crit_edge69
    i32 127, label %entry.return_crit_edge70
    i32 128, label %entry.return_crit_edge71
    i32 129, label %entry.return_crit_edge72
    i32 130, label %entry.return_crit_edge73
    i32 134, label %entry.return_crit_edge74
    i32 135, label %entry.return_crit_edge75
    i32 136, label %entry.return_crit_edge76
    i32 137, label %entry.return_crit_edge77
    i32 138, label %entry.return_crit_edge78
    i32 139, label %entry.return_crit_edge79
    i32 140, label %entry.return_crit_edge80
    i32 141, label %entry.return_crit_edge81
    i32 142, label %entry.return_crit_edge82
    i32 143, label %entry.return_crit_edge83
    i32 144, label %entry.return_crit_edge84
    i32 145, label %entry.return_crit_edge85
    i32 146, label %entry.return_crit_edge86
    i32 147, label %entry.return_crit_edge87
    i32 148, label %entry.return_crit_edge88
    i32 149, label %entry.return_crit_edge89
    i32 150, label %entry.return_crit_edge90
    i32 151, label %entry.return_crit_edge91
    i32 152, label %entry.return_crit_edge92
    i32 153, label %entry.return_crit_edge93
    i32 154, label %entry.return_crit_edge94
    i32 155, label %entry.return_crit_edge95
    i32 156, label %entry.return_crit_edge96
    i32 157, label %entry.return_crit_edge97
    i32 161, label %entry.return_crit_edge98
    i32 198, label %entry.return_crit_edge99
    i32 204, label %entry.return_crit_edge100
    i32 247, label %entry.return_crit_edge101
    i32 248, label %entry.return_crit_edge102
  ]

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8904_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 68, label %entry.return_crit_edge2
    i32 73, label %entry.return_crit_edge3
    i32 74, label %entry.return_crit_edge4
    i32 75, label %entry.return_crit_edge5
    i32 76, label %entry.return_crit_edge6
    i32 77, label %entry.return_crit_edge7
    i32 127, label %entry.return_crit_edge8
  ]

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %devtype = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devtype, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %5, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = call ptr @memset(ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @wm8904_dai, i32 0, i32 10), i32 0, i32 40)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %5) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  tail call fastcc void @wm8904_handle_pdata(ptr noundef %component)
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call2.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @wm8904_core_dapm_widgets, i32 noundef 3) #11
  %call3.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @core_intercon, i32 noundef 2) #11
  %devtype.i = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devtype.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %13, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb13.i
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8904_adc_snd_controls, i32 noundef 6) #11
  %call5.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8904_dac_snd_controls, i32 noundef 13) #11
  %call6.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8904_snd_controls, i32 noundef 1) #11
  %call7.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @wm8904_adc_dapm_widgets, i32 noundef 21) #11
  %call8.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @wm8904_dac_dapm_widgets, i32 noundef 17) #11
  %call9.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @wm8904_dapm_widgets, i32 noundef 9) #11
  %call10.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @adc_intercon, i32 noundef 34) #11
  %call11.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @dac_intercon, i32 noundef 21) #11
  %call12.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @wm8904_intercon, i32 noundef 22) #11
  br label %cleanup

sw.bb13.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8904_dac_snd_controls, i32 noundef 13) #11
  %call15.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @wm8904_dac_dapm_widgets, i32 noundef 17) #11
  %call16.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @dac_intercon, i32 noundef 21) #11
  %call17.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @wm8912_intercon, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13.i, %sw.bb.i, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb13.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8904_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %retune_mobile_texts = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %retune_mobile_texts, align 4
  tail call void @kfree(ptr noundef %5) #11
  %drc_texts = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %drc_texts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drc_texts, align 4
  tail call void @kfree(ptr noundef %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb25
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 6, i32 noundef 2) #11
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 12, i32 noundef 8) #11
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb3.if.end22_crit_edge

sw.bb3.if.end22_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then:                                          ; preds = %sw.bb3
  %supplies = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 3
  %call5 = tail call i32 @regulator_bulk_enable(i32 noundef 5, ptr noundef %supplies) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %call5) #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %mclk = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end12_crit_edge

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end17, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %10) #11
  br label %do.end12

do.end12:                                         ; preds = %if.then3.i, %if.end.do.end12_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end12_crit_edge ]
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.182, i32 noundef %retval.0.i.ph) #14
  %call16 = tail call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %supplies) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  tail call void @regcache_cache_only(ptr noundef %14, i1 noundef zeroext false) #11
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %call19 = tail call i32 @regcache_sync(ptr noundef %16) #11
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 1, i32 noundef 1) #11
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 7, i32 noundef 7) #11
  tail call void @msleep(i32 noundef 1) #11
  br label %if.end22

if.end22:                                         ; preds = %if.end17, %sw.bb3.if.end22_crit_edge
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 6, i32 noundef 4) #11
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 12, i32 noundef 0) #11
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 7, i32 noundef 0) #11
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 1, i32 noundef 0) #11
  %call28 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 0) #11
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  tail call void @regcache_cache_only(ptr noundef %18, i1 noundef zeroext true) #11
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  tail call void @regcache_mark_dirty(ptr noundef %20) #11
  %supplies31 = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 3
  %call33 = tail call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %supplies31) #11
  %mclk34 = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %mclk34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mclk34, align 4
  tail call void @clk_disable(ptr noundef %22) #11
  tail call void @clk_unprepare(ptr noundef %22) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb25, %if.end22, %do.end12, %do.end, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %retval.0.i.ph, %do.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb25 ], [ 0, %if.end22 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8904_handle_pdata(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  %control = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8904_eq_controls, i32 noundef 5) #11
  br label %cleanup57

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_handle_pdata.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_handle_pdata, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !552

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_handle_pdata.__UNIQUE_ID_ddebug317, ptr noundef %7, ptr noundef nonnull @.str.42, i32 noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %do.end.do.body35_crit_edge, label %if.then11

do.end.do.body35_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35

if.then11:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %control) #11
  %12 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %control, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 1
  %13 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %device, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 2
  %14 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %subdevice, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 3
  %15 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.43, ptr %name, align 4
  %index = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 4
  %16 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %index, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 5
  %17 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %access, align 4
  %count = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 6
  %18 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %count, align 4
  %info = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 7
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @snd_soc_info_enum_double, ptr %info, align 4
  %get = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 8
  %20 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @wm8904_get_drc_enum, ptr %get, align 4
  %put = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 9
  %21 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @wm8904_put_drc_enum, ptr %put, align 4
  %tlv = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 10
  %22 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tlv, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 11
  %drc_enum = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %drc_enum to i32
  %24 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %private_value, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %5, align 4
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 4) #11
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !553

kmalloc_array.exit.thread:                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %drc_texts97 = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 6
  %29 = ptrtoint ptr %drc_texts97 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %drc_texts97, align 4
  br label %cleanup57.critedge

if.end7.i:                                        ; preds = %if.then11
  %30 = extractvalue { i32, i1 } %27, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3264) #15
  %drc_texts = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 6
  %31 = ptrtoint ptr %drc_texts to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i, ptr %drc_texts, align 4
  %tobool15.not = icmp eq ptr %call8.i, null
  br i1 %tobool15.not, label %if.end7.i.cleanup57.critedge_crit_edge, label %for.cond.preheader

if.end7.i.cleanup57.critedge_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57.critedge

for.cond.preheader:                               ; preds = %if.end7.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp100 = icmp sgt i32 %33, 0
  br i1 %cmp100, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %drc_cfgs = getelementptr inbounds %struct.wm8904_pdata, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %34 = ptrtoint ptr %drc_cfgs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drc_cfgs, align 4
  %arrayidx = getelementptr %struct.wm8904_drc_cfg, ptr %35, i32 %i.0101
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %38 = ptrtoint ptr %drc_texts to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drc_texts, align 4
  %arrayidx21 = getelementptr ptr, ptr %39, i32 %i.0101
  %40 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %arrayidx21, align 4
  %inc = add nuw nsw i32 %i.0101, 1
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %5, align 4
  %cmp = icmp slt i32 %inc, %42
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %33, %for.cond.preheader.for.end_crit_edge ], [ %42, %for.body.for.end_crit_edge ]
  %items = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 8, i32 3
  %43 = ptrtoint ptr %items to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.lcssa, ptr %items, align 4
  %44 = ptrtoint ptr %drc_texts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %drc_texts, align 4
  %texts = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 8, i32 5
  %46 = ptrtoint ptr %texts to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %texts, align 4
  %call26 = call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull %control, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %for.end.if.end33_crit_edge, label %do.end31

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.end31:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.44, i32 noundef %call26) #14
  br label %if.end33

if.end33:                                         ; preds = %do.end31, %for.end.if.end33_crit_edge
  call fastcc void @wm8904_set_drc(ptr noundef %component)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %control) #11
  br label %do.body35

do.body35:                                        ; preds = %if.end33, %do.end.do.body35_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_handle_pdata.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_handle_pdata, %if.then47)) #11
          to label %do.end51 [label %if.then47], !srcloc !552

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %num_retune_mobile_cfgs = getelementptr inbounds %struct.wm8904_pdata, ptr %5, i32 0, i32 2
  %51 = ptrtoint ptr %num_retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_retune_mobile_cfgs, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_handle_pdata.__UNIQUE_ID_ddebug318, ptr noundef %50, ptr noundef nonnull @.str.45, i32 noundef %52) #11
  br label %do.end51

do.end51:                                         ; preds = %if.then47, %do.body35
  %num_retune_mobile_cfgs52 = getelementptr inbounds %struct.wm8904_pdata, ptr %5, i32 0, i32 2
  %53 = ptrtoint ptr %num_retune_mobile_cfgs52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_retune_mobile_cfgs52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool53.not = icmp eq i32 %54, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @wm8904_handle_retune_mobile_pdata(ptr noundef %component)
  br label %cleanup57

if.else:                                          ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #13
  %call55 = call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8904_eq_controls, i32 noundef 5) #11
  br label %cleanup57

cleanup57.critedge:                               ; preds = %if.end7.i.cleanup57.critedge_crit_edge, %kmalloc_array.exit.thread
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %control) #11
  br label %cleanup57

cleanup57:                                        ; preds = %cleanup57.critedge, %if.else, %if.then54, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8904_get_drc_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %drc_cfg = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %drc_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %drc_cfg, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_put_drc_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %pdata2 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata2, align 4
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value3, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp slt i32 %9, %11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %drc_cfg = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %drc_cfg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %drc_cfg, align 4
  tail call fastcc void @wm8904_set_drc(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8904_set_drc(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 40) #11
  %drc_cfgs = getelementptr inbounds %struct.wm8904_pdata, ptr %5, i32 0, i32 1
  %drc_cfg = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %drc_cfgs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drc_cfgs, align 4
  %8 = ptrtoint ptr %drc_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %drc_cfg, align 4
  %arrayidx3 = getelementptr %struct.wm8904_drc_cfg, ptr %7, i32 %9, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx3, align 2
  %conv = zext i16 %11 to i32
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 40, i32 noundef 65535, i32 noundef %conv) #11
  %12 = ptrtoint ptr %drc_cfgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drc_cfgs, align 4
  %14 = ptrtoint ptr %drc_cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %drc_cfg, align 4
  %arrayidx3.1 = getelementptr %struct.wm8904_drc_cfg, ptr %13, i32 %15, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx3.1, align 2
  %conv.1 = zext i16 %17 to i32
  %call4.1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 41, i32 noundef 65535, i32 noundef %conv.1) #11
  %18 = ptrtoint ptr %drc_cfgs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drc_cfgs, align 4
  %20 = ptrtoint ptr %drc_cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %drc_cfg, align 4
  %arrayidx3.2 = getelementptr %struct.wm8904_drc_cfg, ptr %19, i32 %21, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx3.2, align 2
  %conv.2 = zext i16 %23 to i32
  %call4.2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 42, i32 noundef 65535, i32 noundef %conv.2) #11
  %24 = ptrtoint ptr %drc_cfgs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drc_cfgs, align 4
  %26 = ptrtoint ptr %drc_cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %drc_cfg, align 4
  %arrayidx3.3 = getelementptr %struct.wm8904_drc_cfg, ptr %25, i32 %27, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx3.3, align 2
  %conv.3 = zext i16 %29 to i32
  %call4.3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 43, i32 noundef 65535, i32 noundef %conv.3) #11
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 40, i32 noundef 49152, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8904_handle_retune_mobile_pdata(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  %control = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %control) #11
  %6 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %control, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %device, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 2
  %8 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %subdevice, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.55, ptr %name, align 4
  %index = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 4
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %index, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 5
  %11 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %access, align 4
  %count = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 6
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %count, align 4
  %info = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 7
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @snd_soc_info_enum_double, ptr %info, align 4
  %get = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 8
  %14 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @wm8904_get_retune_mobile_enum, ptr %get, align 4
  %put = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 9
  %15 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @wm8904_put_retune_mobile_enum, ptr %put, align 4
  %tlv = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 10
  %16 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tlv, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %control, i32 0, i32 11
  %retune_mobile_enum = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 12
  %17 = ptrtoint ptr %retune_mobile_enum to i32
  %18 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %private_value, align 4
  %num_retune_mobile_texts = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %num_retune_mobile_texts to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %num_retune_mobile_texts, align 4
  %retune_mobile_texts = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %retune_mobile_texts, align 4
  %num_retune_mobile_cfgs = getelementptr inbounds %struct.wm8904_pdata, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %num_retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_retune_mobile_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp86 = icmp sgt i32 %22, 0
  br i1 %cmp86, label %for.cond2.preheader.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %retune_mobile_cfgs = getelementptr inbounds %struct.wm8904_pdata, ptr %5, i32 0, i32 3
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc29.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %i.087 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc30, %for.inc29.for.cond2.preheader_crit_edge ]
  %23 = ptrtoint ptr %num_retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_retune_mobile_texts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp481 = icmp sgt i32 %24, 0
  br i1 %cmp481, label %for.body5.lr.ph, label %for.cond2.preheader.for.end_crit_edge

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body5.lr.ph:                                  ; preds = %for.cond2.preheader
  %25 = ptrtoint ptr %retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %retune_mobile_cfgs, align 4
  %arrayidx = getelementptr %struct.wm8904_retune_mobile_cfg, ptr %26, i32 %i.087
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %retune_mobile_texts, align 4
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body5.lr.ph
  %j.082 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %for.inc.for.body5_crit_edge ]
  %arrayidx8 = getelementptr ptr, ptr %30, i32 %j.082
  %31 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx8, align 4
  %call9 = tail call i32 @strcmp(ptr noundef %28, ptr noundef %32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %for.body5.for.end_crit_edge, label %for.inc

for.body5.for.end_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body5
  %inc = add nuw nsw i32 %j.082, 1
  %exitcond.not = icmp eq i32 %inc, %24
  br i1 %exitcond.not, label %for.inc.if.end14_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5

for.inc.if.end14_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

for.end:                                          ; preds = %for.body5.for.end_crit_edge, %for.cond2.preheader.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond2.preheader.for.end_crit_edge ], [ %j.082, %for.body5.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %24)
  %cmp12.not = icmp eq i32 %j.0.lcssa, %24
  br i1 %cmp12.not, label %for.end.if.end14_crit_edge, label %for.end.for.inc29_crit_edge

for.end.for.inc29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc29

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end14:                                         ; preds = %for.end.if.end14_crit_edge, %for.inc.if.end14_crit_edge
  %33 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %retune_mobile_texts, align 4
  %add = shl i32 %24, 2
  %mul = add i32 %add, 4
  %call17 = tail call noalias ptr @krealloc(ptr noundef %34, i32 noundef %mul, i32 noundef 3264) #17
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.end14.for.inc29_crit_edge, label %if.end20

if.end14.for.inc29_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc29

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %retune_mobile_cfgs, align 4
  %arrayidx22 = getelementptr %struct.wm8904_retune_mobile_cfg, ptr %36, i32 %i.087
  %37 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx22, align 4
  %39 = ptrtoint ptr %num_retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_retune_mobile_texts, align 4
  %arrayidx25 = getelementptr ptr, ptr %call17, i32 %40
  %41 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %arrayidx25, align 4
  %42 = load i32, ptr %num_retune_mobile_texts, align 4
  %inc27 = add i32 %42, 1
  store i32 %inc27, ptr %num_retune_mobile_texts, align 4
  %43 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call17, ptr %retune_mobile_texts, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %if.end20, %if.end14.for.inc29_crit_edge, %for.end.for.inc29_crit_edge
  %inc30 = add nuw nsw i32 %i.087, 1
  %44 = ptrtoint ptr %num_retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_retune_mobile_cfgs, align 4
  %cmp = icmp slt i32 %inc30, %45
  br i1 %cmp, label %for.inc29.for.cond2.preheader_crit_edge, label %for.inc29.do.body_crit_edge

for.inc29.do.body_crit_edge:                      ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.inc29.for.cond2.preheader_crit_edge:          ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond2.preheader

do.body:                                          ; preds = %for.inc29.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_handle_retune_mobile_pdata.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_handle_retune_mobile_pdata, %if.then35)) #11
          to label %do.end [label %if.then35], !srcloc !552

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %48 = ptrtoint ptr %num_retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_retune_mobile_texts, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_handle_retune_mobile_pdata.__UNIQUE_ID_ddebug316, ptr noundef %47, ptr noundef nonnull @.str.57, i32 noundef %49) #11
  br label %do.end

do.end:                                           ; preds = %if.then35, %do.body
  %50 = ptrtoint ptr %num_retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_retune_mobile_texts, align 4
  %items = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 12, i32 3
  %52 = ptrtoint ptr %items to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %items, align 4
  %53 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %retune_mobile_texts, align 4
  %texts = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 12, i32 5
  %55 = ptrtoint ptr %texts to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %texts, align 4
  %call42 = call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull %control, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %do.end.if.end49_crit_edge, label %do.end47

do.end.if.end49_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

do.end47:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.58, i32 noundef %call42) #14
  br label %if.end49

if.end49:                                         ; preds = %do.end47, %do.end.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %control) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8904_get_retune_mobile_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %retune_mobile_cfg = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %retune_mobile_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %retune_mobile_cfg, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_put_retune_mobile_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %pdata2 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata2, align 4
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value3, align 8
  %num_retune_mobile_cfgs = getelementptr inbounds %struct.wm8904_pdata, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %num_retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_retune_mobile_cfgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp slt i32 %9, %11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %retune_mobile_cfg = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 11
  %12 = ptrtoint ptr %retune_mobile_cfg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %retune_mobile_cfg, align 4
  tail call fastcc void @wm8904_set_retune_mobile(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8904_set_retune_mobile(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_retune_mobile_texts = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %num_retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_retune_mobile_texts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %num_retune_mobile_cfgs = getelementptr inbounds %struct.wm8904_pdata, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %num_retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_retune_mobile_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp92 = icmp sgt i32 %9, 0
  br i1 %cmp92, label %for.body.lr.ph, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.end
  %retune_mobile_cfg = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %retune_mobile_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retune_mobile_cfg, align 4
  %retune_mobile_cfgs = getelementptr inbounds %struct.wm8904_pdata, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %retune_mobile_cfgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %retune_mobile_cfgs, align 4
  %retune_mobile_texts = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %retune_mobile_texts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %retune_mobile_texts, align 4
  %arrayidx3 = getelementptr ptr, ptr %15, i32 %11
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %fs = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %best.096 = phi i32 [ 0, %for.body.lr.ph ], [ %best.1, %for.inc.for.body_crit_edge ]
  %best_val.095 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %best_val.1, %for.inc.for.body_crit_edge ]
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wm8904_retune_mobile_cfg, ptr %13, i32 %i.093
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @strcmp(ptr noundef %19, ptr noundef %17) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %rate = getelementptr %struct.wm8904_retune_mobile_cfg, ptr %13, i32 %i.093, i32 1
  %20 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rate, align 4
  %22 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fs, align 4
  %sub = sub i32 %21, %23
  %24 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %best_val.095)
  %cmp10 = icmp slt i32 %24, %best_val.095
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 %best_val.095)
  %spec.select91 = select i1 %cmp10, i32 %i.093, i32 %best.096
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %best_val.1 = phi i32 [ %best_val.095, %for.body.for.inc_crit_edge ], [ %25, %land.lhs.true ]
  %best.1 = phi i32 [ %best.096, %for.body.for.inc_crit_edge ], [ %spec.select91, %land.lhs.true ]
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end.do.body_crit_edge
  %best.0.lcssa = phi i32 [ 0, %if.end.do.body_crit_edge ], [ %best.1, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_set_retune_mobile.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_set_retune_mobile, %if.then31)) #11
          to label %do.end [label %if.then31], !srcloc !552

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %retune_mobile_cfgs32 = getelementptr inbounds %struct.wm8904_pdata, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %retune_mobile_cfgs32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %retune_mobile_cfgs32, align 4
  %arrayidx33 = getelementptr %struct.wm8904_retune_mobile_cfg, ptr %29, i32 %best.0.lcssa
  %30 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx33, align 4
  %rate37 = getelementptr %struct.wm8904_retune_mobile_cfg, ptr %29, i32 %best.0.lcssa, i32 1
  %32 = ptrtoint ptr %rate37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate37, align 4
  %fs38 = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 22
  %34 = ptrtoint ptr %fs38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fs38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_set_retune_mobile.__UNIQUE_ID_ddebug297, ptr noundef %27, ptr noundef nonnull @.str.60, ptr noundef %31, i32 noundef %33, i32 noundef %35) #11
  br label %do.end

do.end:                                           ; preds = %if.then31, %do.body
  %call40 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 134) #11
  %retune_mobile_cfgs44 = getelementptr inbounds %struct.wm8904_pdata, ptr %5, i32 0, i32 3
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %do.end
  %i.197 = phi i32 [ 0, %do.end ], [ %inc49, %for.body43.for.body43_crit_edge ]
  %add = add nuw nsw i32 %i.197, 134
  %36 = ptrtoint ptr %retune_mobile_cfgs44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %retune_mobile_cfgs44, align 4
  %arrayidx46 = getelementptr %struct.wm8904_retune_mobile_cfg, ptr %37, i32 %best.0.lcssa, i32 2, i32 %i.197
  %38 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx46, align 2
  %conv = zext i16 %39 to i32
  %call47 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %add, i32 noundef 65535, i32 noundef %conv) #11
  %inc49 = add nuw nsw i32 %i.197, 1
  %exitcond98.not = icmp eq i32 %inc49, 24
  br i1 %exitcond98.not, label %for.end50, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body43

for.end50:                                        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 134, i32 noundef 1, i32 noundef %call40) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end50, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysclk_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %event, label %entry.sw.epilog7_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb5
  ]

entry.sw.epilog7_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog7

sw.bb:                                            ; preds = %entry
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %sysclk_src = getelementptr inbounds %struct.wm8904_priv, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cond = icmp eq i32 %8, 2
  br i1 %cond, label %sw.bb2, label %sw.bb.sw.epilog7_crit_edge

sw.bb.sw.epilog7_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog7

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 116, i32 noundef 2, i32 noundef 2) #11
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 116, i32 noundef 1, i32 noundef 1) #11
  br label %sw.epilog7

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 116, i32 noundef 3, i32 noundef 0) #11
  br label %sw.epilog7

sw.epilog7:                                       ; preds = %sw.bb5, %sw.bb2, %sw.bb.sw.epilog7_crit_edge, %entry.sw.epilog7_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_adc_osr_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 5, i32 0
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 198, i32 noundef 5, i32 noundef %.) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8904_get_deemph(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %deemph = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %deemph to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %deemph, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_put_deemph(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %deemph2 = getelementptr inbounds %struct.wm8904_priv, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %deemph2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %deemph2, align 4
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %deemph.i = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %deemph.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %deemph.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.do.body.i_crit_edge, label %for.cond.preheader.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

for.cond.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fs.i = getelementptr inbounds %struct.wm8904_priv, ptr %11, i32 0, i32 22
  %14 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fs.i, align 4
  %sub.i = sub i32 44100, %15
  %16 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #11
  %sub6.i = sub i32 32000, %15
  %17 = tail call i32 @llvm.abs.i32(i32 %sub6.i, i1 false) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %17)
  %cmp14.i = icmp slt i32 %16, %17
  %best.1.i = select i1 %cmp14.i, i32 2, i32 1
  %sub.1.i = sub i32 48000, %15
  %18 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #11
  %arrayidx4.1.i = getelementptr [4 x i32], ptr @deemph_settings, i32 0, i32 %best.1.i
  %19 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.1.i, align 4
  %sub6.1.i = sub i32 %20, %15
  %21 = tail call i32 @llvm.abs.i32(i32 %sub6.1.i, i1 false) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %21)
  %cmp14.1.i = icmp slt i32 %18, %21
  %best.1.op.i = shl nuw nsw i32 %best.1.i, 1
  %shl.i = select i1 %cmp14.1.i, i32 6, i32 %best.1.op.i
  br label %do.body.i

do.body.i:                                        ; preds = %for.cond.preheader.i, %if.end.do.body.i_crit_edge
  %val.0.i = phi i32 [ %shl.i, %for.cond.preheader.i ], [ 0, %if.end.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_set_deemph.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_put_deemph, %if.then22.i)) #11
          to label %wm8904_set_deemph.exit [label %if.then22.i], !srcloc !552

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_set_deemph.__UNIQUE_ID_ddebug298, ptr noundef %23, ptr noundef nonnull @.str.107, i32 noundef %val.0.i) #11
  br label %wm8904_set_deemph.exit

wm8904_set_deemph.exit:                           ; preds = %if.then22.i, %do.body.i
  %call24.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 33, i32 noundef 6, i32 noundef %val.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %wm8904_set_deemph.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24.i, %wm8904_set_deemph.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp.not = icmp eq i32 %event, 2
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !554

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 644, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 107374000) #11
  br label %return

return:                                           ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @out_pga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  %conv = zext i8 %7 to i32
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.222)
  switch i8 %7, label %do.end [
    i8 90, label %entry.sw.epilog_crit_edge
    i8 94, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 727, i32 noundef 9, ptr noundef nonnull @.str.159, i32 noundef %conv) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %dcs_r.0 = phi i32 [ 3, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %dcs_l_reg.0 = phi i32 [ 74, %sw.bb2 ], [ 76, %entry.sw.epilog_crit_edge ]
  %dcs_r_reg.0 = phi i32 [ 73, %sw.bb2 ], [ 75, %entry.sw.epilog_crit_edge ]
  %pwr_reg.0 = phi i32 [ 15, %sw.bb2 ], [ 14, %entry.sw.epilog_crit_edge ]
  %dcs_l.0 = phi i32 [ 2, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %dcs_mask.0 = phi i32 [ 12, %sw.bb2 ], [ 3, %entry.sw.epilog_crit_edge ]
  %9 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %event, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb17
    i32 2, label %sw.bb104
    i32 4, label %sw.bb106
    i32 8, label %sw.bb108
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb17:                                          ; preds = %sw.epilog
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %pwr_reg.0, i32 noundef 3, i32 noundef 3) #11
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef 17, i32 noundef 17) #11
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef 34, i32 noundef 34) #11
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 67, i32 noundef %dcs_mask.0, i32 noundef %dcs_mask.0) #11
  %arrayidx = getelementptr %struct.wm8904_priv, ptr %5, i32 0, i32 23, i32 %dcs_l.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp eq i32 %11, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %sw.bb17.do.body27_crit_edge

sw.bb17.do.body27_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27

lor.lhs.false:                                    ; preds = %sw.bb17
  %arrayidx24 = getelementptr %struct.wm8904_priv, ptr %5, i32 0, i32 23, i32 %dcs_r.0
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool25.not = icmp eq i32 %13, 0
  br i1 %tobool25.not, label %do.body48, label %lor.lhs.false.do.body27_crit_edge

lor.lhs.false.do.body27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27

do.body27:                                        ; preds = %lor.lhs.false.do.body27_crit_edge, %sw.bb17.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @out_pga_event.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@out_pga_event, %if.then37)) #11
          to label %do.end40 [label %if.then37], !srcloc !552

if.then37:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @out_pga_event.__UNIQUE_ID_ddebug299, ptr noundef %15, ptr noundef nonnull @.str.161) #11
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body27
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %call43 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %dcs_l_reg.0, i32 noundef %17) #11
  %arrayidx45 = getelementptr %struct.wm8904_priv, ptr %5, i32 0, i32 23, i32 %dcs_r.0
  %18 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx45, align 4
  %call46 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %dcs_r_reg.0, i32 noundef %19) #11
  br label %if.end66

do.body48:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @out_pga_event.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@out_pga_event, %if.then60)) #11
          to label %do.end64 [label %if.then60], !srcloc !552

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @out_pga_event.__UNIQUE_ID_ddebug300, ptr noundef %21, ptr noundef nonnull @.str.162) #11
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %do.body48
  %shl = shl nuw nsw i32 %dcs_mask.0, 4
  br label %if.end66

if.end66:                                         ; preds = %do.end64, %do.end40
  %shl.sink = phi i32 [ %shl, %do.end64 ], [ %dcs_mask.0, %do.end40 ]
  %timeout.0 = phi i32 [ 500, %do.end64 ], [ 20, %do.end40 ]
  %call65 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 68, i32 noundef %shl.sink) #11
  %shl67 = shl nuw nsw i32 %dcs_mask.0, 8
  br label %do.body68

do.body68:                                        ; preds = %if.end72.do.body68_crit_edge, %if.end66
  %timeout.1 = phi i32 [ %timeout.0, %if.end66 ], [ %dec, %if.end72.do.body68_crit_edge ]
  %call69 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 77) #11
  %and = and i32 %call69, %shl67
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shl67)
  %cmp = icmp eq i32 %and, %shl67
  br i1 %cmp, label %do.body85, label %if.end72

if.end72:                                         ; preds = %do.body68
  tail call void @msleep(i32 noundef 1) #11
  %dec = add nsw i32 %timeout.1, -1
  %tobool74.not = icmp eq i32 %dec, 0
  br i1 %tobool74.not, label %do.end82, label %if.end72.do.body68_crit_edge

if.end72.do.body68_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body68

do.end82:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.163) #14
  br label %if.end102

do.body85:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @out_pga_event.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@out_pga_event, %if.then97)) #11
          to label %if.end102 [label %if.then97], !srcloc !552

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @out_pga_event.__UNIQUE_ID_ddebug301, ptr noundef %25, ptr noundef nonnull @.str.165) #11
  br label %if.end102

if.end102:                                        ; preds = %if.then97, %do.body85, %do.end82
  %call103 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef 68, i32 noundef 68) #11
  br label %cleanup

sw.bb104:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call105 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef 136, i32 noundef 136) #11
  br label %cleanup

sw.bb106:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call107 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef 136, i32 noundef 0) #11
  br label %cleanup

sw.bb108:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call109 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %dcs_l_reg.0) #11
  %arrayidx111 = getelementptr %struct.wm8904_priv, ptr %5, i32 0, i32 23, i32 %dcs_l.0
  %26 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call109, ptr %arrayidx111, align 4
  %call112 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %dcs_r_reg.0) #11
  %arrayidx114 = getelementptr %struct.wm8904_priv, ptr %5, i32 0, i32 23, i32 %dcs_r.0
  %27 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call112, ptr %arrayidx114, align 4
  %call115 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 67, i32 noundef %dcs_mask.0, i32 noundef 0) #11
  %call116 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef 119, i32 noundef 0) #11
  %call117 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %pwr_reg.0, i32 noundef 3, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb108, %sw.bb106, %sw.bb104, %if.end102, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb108 ], [ 0, %sw.bb106 ], [ 0, %sw.bb104 ], [ 0, %if.end102 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %6 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %clk_id, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb9_crit_edge
    i32 2, label %sw.bb11
  ]

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %tobool.not = icmp eq i32 %freq, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %mclk = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mclk, align 4
  %call2 = tail call i32 @clk_get_rate(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %freq)
  %cmp.not = icmp eq i32 %call2, %freq
  br i1 %cmp.not, label %if.end.sw.bb9_crit_edge, label %if.then3

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

if.then3:                                         ; preds = %if.end
  %sysclk_src = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 17
  %9 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %sysclk_src, align 4
  %call4 = tail call i32 @wm8904_set_fll(ptr noundef %dai, i32 noundef 1, i32 noundef 1, i32 noundef %call2, i32 noundef %freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.do.body_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.do.body_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge
  %sysclk_src10 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 17
  %10 = ptrtoint ptr %sysclk_src10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %sysclk_src10, align 4
  %mclk_rate = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 16
  %11 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %freq, ptr %mclk_rate, align 4
  br label %do.body

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sysclk_src12 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 17
  %12 = ptrtoint ptr %sysclk_src12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %sysclk_src12, align 4
  br label %do.body

do.body:                                          ; preds = %sw.bb11, %sw.bb9, %if.then3.do.body_crit_edge
  %clk_id.addr.1 = phi i32 [ 2, %sw.bb11 ], [ 1, %sw.bb9 ], [ 0, %if.then3.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_set_sysclk.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_set_sysclk, %if.then17)) #11
          to label %do.end [label %if.then17], !srcloc !552

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_set_sysclk.__UNIQUE_ID_ddebug315, ptr noundef %14, ptr noundef nonnull @.str.186, i32 noundef %clk_id.addr.1, i32 noundef %freq) #11
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %call19 = tail call fastcc i32 @wm8904_configure_clocking(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %sw.bb.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_set_fll(ptr nocapture noundef readonly %dai, i32 noundef %fll_id, i32 noundef %source, i32 noundef %Fref, i32 noundef %Fout) #2 align 64 {
entry:
  %fll_div = alloca %struct._fll_div, align 2
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %fll_div) #11
  %6 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 1
  %7 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 2
  %8 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 3
  %9 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 4
  %fll_src = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 13
  %10 = call ptr @memset(ptr %fll_div, i32 255, i32 10)
  %11 = ptrtoint ptr %fll_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fll_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %source)
  %cmp = icmp eq i32 %12, %source
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fll_fref = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 14
  %13 = ptrtoint ptr %fll_fref to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fll_fref, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %Fref)
  %cmp2 = icmp eq i32 %14, %Fref
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %fll_fout = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 15
  %15 = ptrtoint ptr %fll_fout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fll_fout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %Fout)
  %cmp4 = icmp eq i32 %16, %Fout
  br i1 %cmp4, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Fout)
  %cmp6 = icmp eq i32 %Fout, 0
  br i1 %cmp6, label %do.body, label %if.end17

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_set_fll.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_set_fll, %if.then11)) #11
          to label %do.end [label %if.then11], !srcloc !552

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_set_fll.__UNIQUE_ID_ddebug312, ptr noundef %18, ptr noundef nonnull @.str.193) #11
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %fll_fref13 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 14
  %19 = ptrtoint ptr %fll_fref13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %fll_fref13, align 4
  %fll_fout14 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 15
  %20 = ptrtoint ptr %fll_fout14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %fll_fout14, align 4
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 22, i32 noundef 4, i32 noundef 0) #11
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 116, i32 noundef 3, i32 noundef 0) #11
  br label %out

if.end17:                                         ; preds = %if.end
  %21 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %source, label %do.end42 [
    i32 1, label %if.end17.sw.bb_crit_edge
    i32 3, label %if.end17.sw.bb_crit_edge162
    i32 2, label %if.end17.sw.bb_crit_edge163
    i32 4, label %do.body23
  ]

if.end17.sw.bb_crit_edge163:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end17.sw.bb_crit_edge162:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end17.sw.bb_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end17.sw.bb_crit_edge, %if.end17.sw.bb_crit_edge162, %if.end17.sw.bb_crit_edge163
  %call18 = call fastcc i32 @fll_factors(ptr noundef nonnull %fll_div, i32 noundef %Fref, i32 noundef %Fout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body23:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_set_fll.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_set_fll, %if.then35)) #11
          to label %do.end39 [label %if.then35], !srcloc !552

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_set_fll.__UNIQUE_ID_ddebug313, ptr noundef %23, ptr noundef nonnull @.str.194) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body23
  %24 = call ptr @memset(ptr %fll_div, i32 0, i32 10)
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 3, ptr %6, align 2
  br label %sw.epilog

do.end42:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.195, i32 noundef %fll_id) #14
  br label %cleanup

sw.epilog:                                        ; preds = %do.end39, %sw.bb.sw.epilog_crit_edge
  %Fout.addr.0 = phi i32 [ 12000000, %do.end39 ], [ %Fout, %sw.bb.sw.epilog_crit_edge ]
  %Fref.addr.0 = phi i32 [ 12000000, %do.end39 ], [ %Fref, %sw.bb.sw.epilog_crit_edge ]
  %call44 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 116) #11
  %call45 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 22, i32 noundef 4, i32 noundef 0) #11
  %call46 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 116, i32 noundef 3, i32 noundef 0) #11
  %call47 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 161, i32 noundef 2, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fll_id)
  %cmp48 = icmp eq i32 %fll_id, 4
  %. = zext i1 %cmp48 to i32
  %call51 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 248, i32 noundef 1, i32 noundef %.) #11
  %call52 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 161, i32 noundef 2, i32 noundef 0) #11
  %switch.tableidx = add i32 %fll_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %28 = icmp ult i32 %switch.tableidx, 3
  br i1 %28, label %switch.lookup, label %sw.epilog.sw.epilog59_crit_edge

sw.epilog.sw.epilog59_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog59

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.wm8904_set_fll, i32 0, i32 %switch.tableidx
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call58 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 120, i32 noundef 3, i32 noundef %switch.load) #11
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %switch.lookup, %sw.epilog.sw.epilog59_crit_edge
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool60.not = icmp eq i16 %31, 0
  %.152 = select i1 %tobool60.not, i32 0, i32 4
  %call64 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 116, i32 noundef 4, i32 noundef %.152) #11
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %6, align 2
  %conv = zext i16 %33 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %34 = ptrtoint ptr %fll_div to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %fll_div, align 2
  %conv66 = zext i16 %35 to i32
  %or = or i32 %shl, %conv66
  %call68 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 117, i32 noundef 16135, i32 noundef %or) #11
  %conv70 = zext i16 %31 to i32
  %call71 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 118, i32 noundef %conv70) #11
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %8, align 2
  %conv72 = zext i16 %37 to i32
  %shl73 = shl nuw nsw i32 %conv72, 5
  %call74 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 119, i32 noundef 32736, i32 noundef %shl73) #11
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %7, align 2
  %conv75 = zext i16 %39 to i32
  %shl76 = shl nuw nsw i32 %conv75, 3
  %call77 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 120, i32 noundef 24, i32 noundef %shl76) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_set_fll.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_set_fll, %if.then90)) #11
          to label %do.end94 [label %if.then90], !srcloc !552

if.then90:                                        ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_set_fll.__UNIQUE_ID_ddebug314, ptr noundef %41, ptr noundef nonnull @.str.196, i32 noundef %Fref.addr.0, i32 noundef %Fout.addr.0) #11
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %sw.epilog59
  %fll_fref95 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 14
  %42 = ptrtoint ptr %fll_fref95 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %Fref.addr.0, ptr %fll_fref95, align 4
  %fll_fout96 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 15
  %43 = ptrtoint ptr %fll_fout96 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %Fout.addr.0, ptr %fll_fout96, align 4
  %44 = ptrtoint ptr %fll_src to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %source, ptr %fll_src, align 4
  %call98 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 116, i32 noundef 2, i32 noundef %call44) #11
  %call99 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 116, i32 noundef 1, i32 noundef %call44) #11
  br label %out

out:                                              ; preds = %do.end94, %do.end
  %call100 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 22, i32 noundef 4, i32 noundef %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end42, %sw.bb.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -22, %do.end42 ], [ 0, %land.lhs.true3.cleanup_crit_edge ], [ %call18, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %fll_div) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %and = and i32 %fmt, 61440
  %2 = add nsw i32 %and, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %2)
  %3 = icmp ult i32 %2, 16384
  br i1 %3, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %4 = lshr exact i32 %2, 12
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wm8904_set_fmt, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep59 = getelementptr inbounds [4 x i32], ptr @switch.table.wm8904_set_fmt.216, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load60 = load i32, ptr %switch.gep59, align 4
  %and7 = and i32 %fmt, 15
  %7 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %and7, label %switch.lookup.cleanup_crit_edge [
    i32 5, label %sw.bb8
    i32 4, label %switch.lookup.sw.bb19_crit_edge
    i32 1, label %sw.bb12
    i32 2, label %switch.lookup.sw.bb25_crit_edge
    i32 3, label %sw.bb14
  ]

switch.lookup.sw.bb25_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb25

switch.lookup.sw.bb19_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb19

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb8:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %or9 = or i32 %switch.load, 19
  br label %sw.bb19

sw.bb12:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %or13 = or i32 %switch.load, 2
  br label %sw.bb25

sw.bb14:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %or15 = or i32 %switch.load, 1
  br label %sw.bb25

sw.bb19:                                          ; preds = %sw.bb8, %switch.lookup.sw.bb19_crit_edge
  %aif1.1 = phi i32 [ %switch.load, %switch.lookup.sw.bb19_crit_edge ], [ %or9, %sw.bb8 ]
  %or11 = or i32 %aif1.1, 3
  %and20 = and i32 %fmt, 3840
  %8 = zext i32 %and20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %and20, label %sw.bb19.cleanup_crit_edge [
    i32 0, label %sw.bb19.sw.epilog36_crit_edge
    i32 768, label %sw.bb21
  ]

sw.bb19.sw.epilog36_crit_edge:                    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog36

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb21:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  %or22 = or i32 %aif1.1, 131
  br label %sw.epilog36

sw.bb25:                                          ; preds = %sw.bb14, %sw.bb12, %switch.lookup.sw.bb25_crit_edge
  %aif1.2.ph = phi i32 [ %or13, %sw.bb12 ], [ %switch.load, %switch.lookup.sw.bb25_crit_edge ], [ %or15, %sw.bb14 ]
  %and26 = lshr i32 %fmt, 8
  %9 = and i32 %and26, 15
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %9, label %sw.bb25.cleanup_crit_edge [
    i32 0, label %sw.bb25.sw.epilog36_crit_edge
    i32 4, label %sw.bb27
    i32 3, label %sw.bb29
    i32 2, label %sw.bb31
  ]

sw.bb25.sw.epilog36_crit_edge:                    ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog36

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb27:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  %or28 = or i32 %aif1.2.ph, 144
  br label %sw.epilog36

sw.bb29:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  %or30 = or i32 %aif1.2.ph, 128
  br label %sw.epilog36

sw.bb31:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  %or32 = or i32 %aif1.2.ph, 16
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25.sw.epilog36_crit_edge, %sw.bb21, %sw.bb19.sw.epilog36_crit_edge
  %aif1.3 = phi i32 [ %or32, %sw.bb31 ], [ %or30, %sw.bb29 ], [ %or28, %sw.bb27 ], [ %aif1.2.ph, %sw.bb25.sw.epilog36_crit_edge ], [ %or22, %sw.bb21 ], [ %or11, %sw.bb19.sw.epilog36_crit_edge ]
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 25, i32 noundef 211, i32 noundef %aif1.3) #11
  %call37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 2048, i32 noundef %switch.load60) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog36, %sw.bb25.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog36 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %sw.bb19.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots)
  %cmp = icmp eq i32 %slots, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %6 = zext i32 %rx_mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %rx_mask, label %if.end.cleanup_crit_edge [
    i32 3, label %if.end.sw.epilog_crit_edge
    i32 12, label %sw.bb
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %aif1.0 = phi i32 [ 11264, %sw.bb ], [ 10240, %if.end.sw.epilog_crit_edge ]
  %7 = zext i32 %tx_mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %tx_mask, label %sw.epilog.cleanup_crit_edge [
    i32 3, label %sw.epilog.out_crit_edge
    i32 12, label %sw.bb3
  ]

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or4 = or i32 %aif1.0, 4096
  br label %out

out:                                              ; preds = %sw.bb3, %sw.epilog.out_crit_edge, %entry.out_crit_edge
  %aif1.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %or4, %sw.bb3 ], [ %aif1.0, %sw.epilog.out_crit_edge ]
  %tdm_width = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %tdm_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %slot_width, ptr %tdm_width, align 4
  %div = sdiv i32 %slots, 2
  %tdm_slots = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 20
  %9 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %tdm_slots, align 4
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 25, i32 noundef 15360, i32 noundef %aif1.1) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_mute(ptr nocapture noundef readonly %codec_dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 8
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 33, i32 noundef 8, i32 noundef %.) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8904_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %fs = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 22
  %8 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fs, align 4
  %tdm_slots = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 20
  %9 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tdm_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_hw_params.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_hw_params, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !552

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tdm_slots, align 4
  %tdm_width = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 19
  %15 = ptrtoint ptr %tdm_width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tdm_width, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_hw_params.__UNIQUE_ID_ddebug302, ptr noundef %12, ptr noundef nonnull @.str.210, i32 noundef %14, i32 noundef %16) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %17 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fs, align 4
  %tdm_width10 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 19
  %19 = ptrtoint ptr %tdm_width10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tdm_width10, align 4
  %21 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tdm_slots, align 4
  %call12 = tail call i32 @snd_soc_calc_bclk(i32 noundef %18, i32 noundef %20, i32 noundef 2, i32 noundef %22) #11
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #11
  br label %if.end15

if.end15:                                         ; preds = %if.else, %do.end
  %call13.sink = phi i32 [ %call13, %if.else ], [ %call12, %do.end ]
  %bclk14 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 21
  %23 = ptrtoint ptr %bclk14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call13.sink, ptr %bclk14, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end15.if.then.i.i.i_crit_edge

if.end15.if.then.i.i.i_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end15.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end15.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %25, %if.end15.if.then.i.i.i_crit_edge ], [ %28, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %26 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #11, !range !555
  %add.i.i.i = or i32 %26, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end15
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.1.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #11
  %29 = add i32 %call1.i, -16
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %30)
  %31 = icmp ult i32 %30, 5
  br i1 %31, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %30 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %32 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %switch.lobit.not = icmp eq i8 %32, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.wm8904_hw_params, i32 0, i32 %30
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_hw_params.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_hw_params, %if.then33)) #11
          to label %do.end38 [label %if.then33], !srcloc !552

if.then33:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %bclk35 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 21
  %36 = ptrtoint ptr %bclk35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bclk35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_hw_params.__UNIQUE_ID_ddebug303, ptr noundef %35, ptr noundef nonnull @.str.211, i32 noundef %37) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %switch.lookup
  %call39 = tail call fastcc i32 @wm8904_configure_clocking(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp.not = icmp eq i32 %call39, 0
  br i1 %cmp.not, label %if.end41, label %do.end38.cleanup_crit_edge

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %do.end38
  %sysclk_rate = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 18
  %38 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sysclk_rate, align 4
  %div310 = lshr i32 %39, 6
  %40 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fs, align 4
  %sub = sub i32 %div310, %41
  %42 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %div49343 = lshr i32 %39, 7
  %sub51 = sub i32 %div49343, %41
  %43 = tail call i32 @llvm.abs.i32(i32 %sub51, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %42)
  %cmp59 = icmp slt i32 %43, %42
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %42)
  %best.1 = zext i1 %cmp59 to i32
  %div49.1 = udiv i32 %39, 192
  %sub51.1 = sub i32 %div49.1, %41
  %45 = tail call i32 @llvm.abs.i32(i32 %sub51.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %44)
  %cmp59.1 = icmp slt i32 %45, %44
  %46 = tail call i32 @llvm.smin.i32(i32 %45, i32 %44)
  %best.1.1 = select i1 %cmp59.1, i32 2, i32 %best.1
  %div49.2344 = lshr i32 %39, 8
  %sub51.2 = sub i32 %div49.2344, %41
  %47 = tail call i32 @llvm.abs.i32(i32 %sub51.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %46)
  %cmp59.2 = icmp slt i32 %47, %46
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 %46)
  %best.1.2 = select i1 %cmp59.2, i32 3, i32 %best.1.1
  %div49.3 = udiv i32 %39, 384
  %sub51.3 = sub i32 %div49.3, %41
  %49 = tail call i32 @llvm.abs.i32(i32 %sub51.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %48)
  %cmp59.3 = icmp slt i32 %49, %48
  %50 = tail call i32 @llvm.smin.i32(i32 %49, i32 %48)
  %best.1.3 = select i1 %cmp59.3, i32 4, i32 %best.1.2
  %div49.4345 = lshr i32 %39, 9
  %sub51.4 = sub i32 %div49.4345, %41
  %51 = tail call i32 @llvm.abs.i32(i32 %sub51.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %50)
  %cmp59.4 = icmp slt i32 %51, %50
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 %50)
  %best.1.4 = select i1 %cmp59.4, i32 5, i32 %best.1.3
  %div49.5 = udiv i32 %39, 786
  %sub51.5 = sub i32 %div49.5, %41
  %53 = tail call i32 @llvm.abs.i32(i32 %sub51.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %52)
  %cmp59.5 = icmp slt i32 %53, %52
  %54 = tail call i32 @llvm.smin.i32(i32 %53, i32 %52)
  %best.1.5 = select i1 %cmp59.5, i32 6, i32 %best.1.4
  %div49.6346 = lshr i32 %39, 10
  %sub51.6 = sub i32 %div49.6346, %41
  %55 = tail call i32 @llvm.abs.i32(i32 %sub51.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %54)
  %cmp59.6 = icmp slt i32 %55, %54
  %56 = tail call i32 @llvm.smin.i32(i32 %55, i32 %54)
  %best.1.6 = select i1 %cmp59.6, i32 7, i32 %best.1.5
  %div49.7 = udiv i32 %39, 1408
  %sub51.7 = sub i32 %div49.7, %41
  %57 = tail call i32 @llvm.abs.i32(i32 %sub51.7, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %56)
  %cmp59.7 = icmp slt i32 %57, %56
  %58 = tail call i32 @llvm.smin.i32(i32 %57, i32 %56)
  %best.1.7 = select i1 %cmp59.7, i32 8, i32 %best.1.6
  %div49.8 = udiv i32 %39, 1536
  %sub51.8 = sub i32 %div49.8, %41
  %59 = tail call i32 @llvm.abs.i32(i32 %sub51.8, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %58)
  %cmp59.8 = icmp slt i32 %59, %58
  %best.1.8 = select i1 %cmp59.8, i32 9, i32 %best.1.7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_hw_params.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_hw_params, %if.then74)) #11
          to label %do.end80 [label %if.then74], !srcloc !552

if.then74:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  %arrayidx76 = getelementptr [10 x %struct.anon.109], ptr @clk_sys_rates, i32 0, i32 %best.1.8
  %62 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_hw_params.__UNIQUE_ID_ddebug304, ptr noundef %61, ptr noundef nonnull @.str.212, i32 noundef %63) #11
  br label %do.end80

do.end80:                                         ; preds = %if.then74, %if.end41
  %clk_sys_rate = getelementptr [10 x %struct.anon.109], ptr @clk_sys_rates, i32 0, i32 %best.1.8, i32 1
  %64 = ptrtoint ptr %clk_sys_rate to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %clk_sys_rate, align 4
  %66 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fs, align 4
  %sub85 = add i32 %67, -8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub85)
  %cmp87 = icmp slt i32 %sub85, 0
  %sub89 = sub i32 8000, %67
  %cond92 = select i1 %cmp87, i32 %sub89, i32 %sub85
  %sub99 = add i32 %67, -11025
  %68 = tail call i32 @llvm.abs.i32(i32 %sub99, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %cond92)
  %cmp107 = icmp slt i32 %68, %cond92
  %69 = tail call i32 @llvm.smin.i32(i32 %68, i32 %cond92)
  %best.3 = zext i1 %cmp107 to i32
  %sub99.1 = add i32 %67, -12000
  %70 = tail call i32 @llvm.abs.i32(i32 %sub99.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %69)
  %cmp107.1 = icmp slt i32 %70, %69
  %71 = tail call i32 @llvm.smin.i32(i32 %70, i32 %69)
  %best.3.1 = select i1 %cmp107.1, i32 2, i32 %best.3
  %sub99.2 = add i32 %67, -16000
  %72 = tail call i32 @llvm.abs.i32(i32 %sub99.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %71)
  %cmp107.2 = icmp slt i32 %72, %71
  %73 = tail call i32 @llvm.smin.i32(i32 %72, i32 %71)
  %best.3.2 = select i1 %cmp107.2, i32 3, i32 %best.3.1
  %sub99.3 = add i32 %67, -22050
  %74 = tail call i32 @llvm.abs.i32(i32 %sub99.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %73)
  %cmp107.3 = icmp slt i32 %74, %73
  %75 = tail call i32 @llvm.smin.i32(i32 %74, i32 %73)
  %best.3.3 = select i1 %cmp107.3, i32 4, i32 %best.3.2
  %sub99.4 = add i32 %67, -24000
  %76 = tail call i32 @llvm.abs.i32(i32 %sub99.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %75)
  %cmp107.4 = icmp slt i32 %76, %75
  %77 = tail call i32 @llvm.smin.i32(i32 %76, i32 %75)
  %best.3.4 = select i1 %cmp107.4, i32 5, i32 %best.3.3
  %sub99.5 = add i32 %67, -32000
  %78 = tail call i32 @llvm.abs.i32(i32 %sub99.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %77)
  %cmp107.5 = icmp slt i32 %78, %77
  %79 = tail call i32 @llvm.smin.i32(i32 %78, i32 %77)
  %best.3.5 = select i1 %cmp107.5, i32 6, i32 %best.3.4
  %sub99.6 = add i32 %67, -44100
  %80 = tail call i32 @llvm.abs.i32(i32 %sub99.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %79)
  %cmp107.6 = icmp slt i32 %80, %79
  %81 = tail call i32 @llvm.smin.i32(i32 %80, i32 %79)
  %best.3.6 = select i1 %cmp107.6, i32 7, i32 %best.3.5
  %sub99.7 = add i32 %67, -48000
  %82 = tail call i32 @llvm.abs.i32(i32 %sub99.7, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %81)
  %cmp107.7 = icmp slt i32 %82, %81
  %best.3.7 = select i1 %cmp107.7, i32 8, i32 %best.3.6
  %shl = shl i32 %65, 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_hw_params.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_hw_params, %if.then125)) #11
          to label %do.end131 [label %if.then125], !srcloc !552

if.then125:                                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 4
  %arrayidx127 = getelementptr [9 x %struct.anon.110], ptr @sample_rates, i32 0, i32 %best.3.7
  %85 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx127, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_hw_params.__UNIQUE_ID_ddebug305, ptr noundef %84, ptr noundef nonnull @.str.213, i32 noundef %86) #11
  br label %do.end131

do.end131:                                        ; preds = %if.then125, %do.end80
  %sample_rate = getelementptr [9 x %struct.anon.110], ptr @sample_rates, i32 0, i32 %best.3.7, i32 1
  %87 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sample_rate, align 4
  %or134 = or i32 %88, %shl
  %89 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24001, i32 %90)
  %cmp136 = icmp slt i32 %90, 24001
  %spec.select = select i1 %cmp136, i32 2048, i32 0
  %91 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sysclk_rate, align 4
  %mul = mul i32 %92, 10
  %bclk147 = getelementptr inbounds %struct.wm8904_priv, ptr %5, i32 0, i32 21
  %93 = ptrtoint ptr %bclk147 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bclk147, align 4
  br label %for.body142

for.body142:                                      ; preds = %if.end151.for.body142_crit_edge, %do.end131
  %i.2342 = phi i32 [ 0, %do.end131 ], [ %inc156, %if.end151.for.body142_crit_edge ]
  %best.4341 = phi i32 [ 0, %do.end131 ], [ %spec.select312, %if.end151.for.body142_crit_edge ]
  %best_val.4340 = phi i32 [ 2147483647, %do.end131 ], [ %97, %if.end151.for.body142_crit_edge ]
  %arrayidx144 = getelementptr [20 x %struct.anon.111], ptr @bclk_divs, i32 0, i32 %i.2342
  %95 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx144, align 4
  %div146 = udiv i32 %mul, %96
  %sub148 = sub i32 %div146, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub148)
  %cmp149 = icmp slt i32 %sub148, 0
  br i1 %cmp149, label %for.body142.for.end157_crit_edge, label %if.end151

for.body142.for.end157_crit_edge:                 ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end157

if.end151:                                        ; preds = %for.body142
  call void @__sanitizer_cov_trace_cmp4(i32 %sub148, i32 %best_val.4340)
  %cmp152 = icmp slt i32 %sub148, %best_val.4340
  %97 = tail call i32 @llvm.smin.i32(i32 %sub148, i32 %best_val.4340)
  %spec.select312 = select i1 %cmp152, i32 %i.2342, i32 %best.4341
  %inc156 = add nuw nsw i32 %i.2342, 1
  %exitcond.not = icmp eq i32 %inc156, 20
  br i1 %exitcond.not, label %if.end151.for.end157_crit_edge, label %if.end151.for.body142_crit_edge

if.end151.for.body142_crit_edge:                  ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body142

if.end151.for.end157_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end157

for.end157:                                       ; preds = %if.end151.for.end157_crit_edge, %for.body142.for.end157_crit_edge
  %best.4.lcssa = phi i32 [ %best.4341, %for.body142.for.end157_crit_edge ], [ %spec.select312, %if.end151.for.end157_crit_edge ]
  %98 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sysclk_rate, align 4
  %mul159 = mul i32 %99, 10
  %arrayidx160 = getelementptr [20 x %struct.anon.111], ptr @bclk_divs, i32 0, i32 %best.4.lcssa
  %100 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx160, align 4
  %div162 = udiv i32 %mul159, %101
  %102 = ptrtoint ptr %bclk147 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %div162, ptr %bclk147, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_hw_params.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_hw_params, %if.then176)) #11
          to label %do.end183 [label %if.then176], !srcloc !552

if.then176:                                       ; preds = %for.end157
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i, align 4
  %105 = ptrtoint ptr %bclk147 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bclk147, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_hw_params.__UNIQUE_ID_ddebug306, ptr noundef %104, ptr noundef nonnull @.str.214, i32 noundef %101, i32 noundef %106) #11
  br label %do.end183

do.end183:                                        ; preds = %if.then176, %for.end157
  %bclk_div = getelementptr [20 x %struct.anon.111], ptr @bclk_divs, i32 0, i32 %best.4.lcssa, i32 1
  %107 = ptrtoint ptr %bclk_div to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bclk_div, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_hw_params.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_hw_params, %if.then198)) #11
          to label %do.end205 [label %if.then198], !srcloc !552

if.then198:                                       ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 4
  %111 = ptrtoint ptr %bclk147 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bclk147, align 4
  %113 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fs, align 4
  %div202 = sdiv i32 %112, %114
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_hw_params.__UNIQUE_ID_ddebug307, ptr noundef %110, ptr noundef nonnull @.str.215, i32 noundef %div202) #11
  br label %do.end205

do.end205:                                        ; preds = %if.then198, %do.end183
  %115 = ptrtoint ptr %bclk147 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bclk147, align 4
  %117 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %fs, align 4
  %div208 = sdiv i32 %116, %118
  %call210 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 33, i32 noundef 2048, i32 noundef %spec.select) #11
  %call211 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 25, i32 noundef 12, i32 noundef %switch.load) #11
  %call212 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 26, i32 noundef 31, i32 noundef %108) #11
  %call213 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 2047, i32 noundef %div208) #11
  %call214 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 21, i32 noundef 15367, i32 noundef %or134) #11
  tail call fastcc void @wm8904_set_retune_mobile(ptr noundef %1)
  %119 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %120, i32 0, i32 8
  %121 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %driver_data.i.i.i, align 4
  %deemph.i = getelementptr inbounds %struct.wm8904_priv, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %deemph.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %deemph.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i = icmp eq i32 %124, 0
  br i1 %tobool.not.i, label %do.end205.do.body.i_crit_edge, label %for.cond.preheader.i

do.end205.do.body.i_crit_edge:                    ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

for.cond.preheader.i:                             ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #13
  %fs.i = getelementptr inbounds %struct.wm8904_priv, ptr %122, i32 0, i32 22
  %125 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %fs.i, align 4
  %sub.i = sub i32 44100, %126
  %127 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #11
  %sub6.i = sub i32 32000, %126
  %128 = tail call i32 @llvm.abs.i32(i32 %sub6.i, i1 false) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %128)
  %cmp14.i = icmp slt i32 %127, %128
  %best.1.i = select i1 %cmp14.i, i32 2, i32 1
  %sub.1.i = sub i32 48000, %126
  %129 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #11
  %arrayidx4.1.i = getelementptr [4 x i32], ptr @deemph_settings, i32 0, i32 %best.1.i
  %130 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx4.1.i, align 4
  %sub6.1.i = sub i32 %131, %126
  %132 = tail call i32 @llvm.abs.i32(i32 %sub6.1.i, i1 false) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %132)
  %cmp14.1.i = icmp slt i32 %129, %132
  %best.1.op.i = shl nuw nsw i32 %best.1.i, 1
  %shl.i = select i1 %cmp14.1.i, i32 6, i32 %best.1.op.i
  br label %do.body.i

do.body.i:                                        ; preds = %for.cond.preheader.i, %do.end205.do.body.i_crit_edge
  %val.0.i = phi i32 [ %shl.i, %for.cond.preheader.i ], [ 0, %do.end205.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_set_deemph.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_hw_params, %if.then22.i)) #11
          to label %wm8904_set_deemph.exit [label %if.then22.i], !srcloc !552

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %133 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_set_deemph.__UNIQUE_ID_ddebug298, ptr noundef %134, ptr noundef nonnull @.str.107, i32 noundef %val.0.i) #11
  br label %wm8904_set_deemph.exit

wm8904_set_deemph.exit:                           ; preds = %if.then22.i, %do.body.i
  %call24.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 33, i32 noundef 6, i32 noundef %val.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %wm8904_set_deemph.exit, %do.end38.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %wm8904_set_deemph.exit ], [ -22, %params_width.exit.cleanup_crit_edge ], [ %call39, %do.end38.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8904_configure_clocking(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 22) #11
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 22, i32 noundef 16384, i32 noundef 0) #11
  %sysclk_src = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk_src, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %5, label %do.end29 [
    i32 1, label %do.body
    i32 2, label %do.body9
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_configure_clocking.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_configure_clocking, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !552

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %mclk_rate = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_configure_clocking.__UNIQUE_ID_ddebug294, ptr noundef %8, ptr noundef nonnull @.str.188, i32 noundef %10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %and = and i32 %call1, -16385
  %mclk_rate6 = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 16
  %11 = ptrtoint ptr %mclk_rate6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mclk_rate6, align 4
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 116, i32 noundef 3, i32 noundef 0) #11
  br label %sw.epilog

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_configure_clocking.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_configure_clocking, %if.then21)) #11
          to label %do.end25 [label %if.then21], !srcloc !552

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %fll_fout = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 15
  %15 = ptrtoint ptr %fll_fout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fll_fout, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_configure_clocking.__UNIQUE_ID_ddebug295, ptr noundef %14, ptr noundef nonnull @.str.189, i32 noundef %16) #11
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body9
  %or = or i32 %call1, 16384
  %fll_fout26 = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 15
  %17 = ptrtoint ptr %fll_fout26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fll_fout26, align 4
  br label %sw.epilog

do.end29:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.190) #14
  br label %cleanup

sw.epilog:                                        ; preds = %do.end25, %do.end
  %rate.0 = phi i32 [ %18, %do.end25 ], [ %12, %do.end ]
  %clock2.0 = phi i32 [ %or, %do.end25 ], [ %and, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %rate.0)
  %cmp = icmp ugt i32 %rate.0, 13500000
  %div77 = zext i1 %cmp to i32
  %spec.select = lshr i32 %rate.0, %div77
  %spec.select87 = zext i1 %cmp to i32
  %21 = getelementptr inbounds %struct.wm8904_priv, ptr %3, i32 0, i32 18
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %21, align 4
  %call34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 20, i32 noundef 1, i32 noundef %spec.select87) #11
  %call35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 22, i32 noundef 16388, i32 noundef %clock2.0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8904_configure_clocking.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8904_configure_clocking, %if.then48)) #11
          to label %cleanup [label %if.then48], !srcloc !552

if.then48:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8904_configure_clocking.__UNIQUE_ID_ddebug296, ptr noundef %24, ptr noundef nonnull @.str.191, i32 noundef %26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %sw.epilog, %do.end29
  %retval.0 = phi i32 [ -22, %do.end29 ], [ 0, %if.then48 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fll_factors(ptr nocapture noundef %fll_div, i32 noundef %Fref, i32 noundef %Fout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fll_clk_ref_div = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 2
  %0 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %fll_clk_ref_div, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %Fref)
  %cmp = icmp ugt i32 %Fref, 13500000
  br i1 %cmp, label %while.body, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

while.body:                                       ; preds = %entry
  %1 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %fll_clk_ref_div, align 2
  %inc = add i16 %2, 1
  store i16 %inc, ptr %fll_clk_ref_div, align 2
  %div1.1504 = lshr i32 %Fref, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000001, i32 %Fref)
  %cmp.1 = icmp ugt i32 %Fref, 27000001
  br i1 %cmp.1, label %while.body.1, label %while.body.do.body4_crit_edge

while.body.do.body4_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

while.body.1:                                     ; preds = %while.body
  %3 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fll_clk_ref_div, align 2
  %inc.1 = add i16 %4, 1
  store i16 %inc.1, ptr %fll_clk_ref_div, align 2
  %div1.2505 = lshr i32 %Fref, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000003, i32 %Fref)
  %cmp.2 = icmp ugt i32 %Fref, 54000003
  br i1 %cmp.2, label %while.body.2, label %while.body.1.do.body4_crit_edge

while.body.1.do.body4_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

while.body.2:                                     ; preds = %while.body.1
  %5 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fll_clk_ref_div, align 2
  %inc.2 = add i16 %6, 1
  store i16 %inc.2, ptr %fll_clk_ref_div, align 2
  %div1.3506 = lshr i32 %Fref, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000007, i32 %Fref)
  %cmp.3 = icmp ugt i32 %Fref, 108000007
  br i1 %cmp.3, label %while.body.3, label %while.body.2.do.body4_crit_edge

while.body.2.do.body4_crit_edge:                  ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fll_clk_ref_div, align 2
  %inc.3 = add i16 %8, 1
  store i16 %inc.3, ptr %fll_clk_ref_div, align 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, i32 noundef %Fref) #14
  br label %cleanup

do.body4:                                         ; preds = %while.body.2.do.body4_crit_edge, %while.body.1.do.body4_crit_edge, %while.body.do.body4_crit_edge, %entry.do.body4_crit_edge
  %div1.lcssa = phi i32 [ %Fref, %entry.do.body4_crit_edge ], [ %div1.1504, %while.body.do.body4_crit_edge ], [ %div1.2505, %while.body.1.do.body4_crit_edge ], [ %div1.3506, %while.body.2.do.body4_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then9)) #11
          to label %while.cond14 [label %if.then9], !srcloc !552

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.199, i32 noundef %Fref, i32 noundef %Fout) #11
  br label %while.cond14

while.cond14:                                     ; preds = %while.body17.while.cond14_crit_edge, %if.then9, %do.body4
  %div.1 = phi i32 [ %inc18, %while.body17.while.cond14_crit_edge ], [ 4, %do.body4 ], [ 4, %if.then9 ]
  %mul15 = mul i32 %div.1, %Fout
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %mul15)
  %cmp16 = icmp ult i32 %mul15, 90000000
  br i1 %cmp16, label %while.body17, label %while.end27

while.body17:                                     ; preds = %while.cond14
  %inc18 = add nuw nsw i32 %div.1, 1
  %exitcond = icmp eq i32 %inc18, 65
  br i1 %exitcond, label %do.end23, label %while.body17.while.cond14_crit_edge

while.body17.while.cond14_crit_edge:              ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond14

do.end23:                                         ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %Fout) #14
  br label %cleanup

while.end27:                                      ; preds = %while.cond14
  %9 = trunc i32 %div.1 to i16
  %conv = add nsw i16 %9, -1
  %fll_outdiv = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 1
  %10 = ptrtoint ptr %fll_outdiv to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %fll_outdiv, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then41)) #11
          to label %land.lhs.true [label %if.then41], !srcloc !552

if.then41:                                        ; preds = %while.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.203, i32 noundef %mul15) #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then41, %while.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %div1.lcssa)
  %cmp50.not = icmp ugt i32 %div1.lcssa, 64000
  br i1 %cmp50.not, label %land.lhs.true.1, label %land.lhs.true.if.end67_crit_edge

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

land.lhs.true.1:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000, i32 %div1.lcssa)
  %cmp50.not.1 = icmp ugt i32 %div1.lcssa, 128000
  br i1 %cmp50.not.1, label %land.lhs.true.2, label %land.lhs.true.1.if.end67_crit_edge

land.lhs.true.1.if.end67_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

land.lhs.true.2:                                  ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %div1.lcssa)
  %cmp50.not.2 = icmp ugt i32 %div1.lcssa, 256000
  br i1 %cmp50.not.2, label %land.lhs.true.3, label %land.lhs.true.2.if.end67_crit_edge

land.lhs.true.2.if.end67_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %div1.lcssa)
  %cmp50.not.3 = icmp ugt i32 %div1.lcssa, 1000000
  br i1 %cmp50.not.3, label %land.lhs.true.4, label %land.lhs.true.3.if.end67_crit_edge

land.lhs.true.3.if.end67_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %div1.lcssa)
  %cmp50.not.4 = icmp ugt i32 %div1.lcssa, 13500000
  br i1 %cmp50.not.4, label %do.end64, label %land.lhs.true.4.if.end67_crit_edge

land.lhs.true.4.if.end67_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

do.end64:                                         ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #13
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, i32 noundef %div1.lcssa) #14
  br label %cleanup

if.end67:                                         ; preds = %land.lhs.true.4.if.end67_crit_edge, %land.lhs.true.3.if.end67_crit_edge, %land.lhs.true.2.if.end67_crit_edge, %land.lhs.true.1.if.end67_crit_edge, %land.lhs.true.if.end67_crit_edge
  %i.0496.lcssa = phi i32 [ 0, %land.lhs.true.if.end67_crit_edge ], [ 1, %land.lhs.true.1.if.end67_crit_edge ], [ 2, %land.lhs.true.2.if.end67_crit_edge ], [ 3, %land.lhs.true.3.if.end67_crit_edge ], [ 4, %land.lhs.true.4.if.end67_crit_edge ]
  %fll_fratio = getelementptr [5 x %struct.anon.108], ptr @fll_fratios, i32 0, i32 %i.0496.lcssa, i32 2
  %11 = ptrtoint ptr %fll_fratio to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fll_fratio, align 4
  %13 = ptrtoint ptr %fll_div to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %fll_div, align 2
  %ratio = getelementptr [5 x %struct.anon.108], ptr @fll_fratios, i32 0, i32 %i.0496.lcssa, i32 3
  %14 = ptrtoint ptr %ratio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ratio, align 4
  %div56 = udiv i32 %mul15, %15
  %div56.frozen = freeze i32 %div56
  %div68 = udiv i32 %div56.frozen, %div1.lcssa
  %conv69 = trunc i32 %div68 to i16
  %n = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 3
  %16 = ptrtoint ptr %n to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv69, ptr %n, align 2
  %17 = mul i32 %div68, %div1.lcssa
  %rem.decomposed = sub i32 %div56.frozen, %17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then82)) #11
          to label %do.end85 [label %if.then82], !srcloc !552

if.then82:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.207, i32 noundef %rem.decomposed) #11
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %if.end67
  %conv86 = zext i32 %rem.decomposed to i64
  %mul87 = mul nuw nsw i64 %conv86, 655360
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul87)
  %cmp264 = icmp ult i64 %mul87, 4294967296
  br i1 %cmp264, label %if.then272, label %if.else278, !prof !554

if.then272:                                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #13
  %conv273 = trunc i64 %mul87 to i32
  %div276 = udiv i32 %conv273, %div1.lcssa
  br label %if.end282

if.else278:                                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #13
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div1.lcssa, i64 %mul87) #18, !srcloc !556
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  %extract.t488 = trunc i64 %asmresult1.i to i32
  br label %if.end282

if.end282:                                        ; preds = %if.else278, %if.then272
  %Kpart.0.off0 = phi i32 [ %div276, %if.then272 ], [ %extract.t488, %if.else278 ]
  %rem286 = urem i32 %Kpart.0.off0, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem286)
  %cmp287 = icmp ugt i32 %rem286, 4
  %add290 = add i32 %Kpart.0.off0, 5
  %spec.select = select i1 %cmp287, i32 %add290, i32 %Kpart.0.off0
  %div292 = udiv i32 %spec.select, 10
  %conv293 = trunc i32 %div292 to i16
  %k = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 4
  %19 = ptrtoint ptr %k to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv293, ptr %k, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then306)) #11
          to label %cleanup [label %if.then306], !srcloc !552

if.then306:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %n, align 2
  %conv308 = zext i16 %21 to i32
  %22 = ptrtoint ptr %k to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %k, align 2
  %conv310 = zext i16 %23 to i32
  %24 = ptrtoint ptr %fll_div to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %fll_div, align 2
  %conv312 = zext i16 %25 to i32
  %26 = ptrtoint ptr %fll_outdiv to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fll_outdiv, align 2
  %conv314 = zext i16 %27 to i32
  %28 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %fll_clk_ref_div, align 2
  %conv316 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.208, i32 noundef %conv308, i32 noundef %conv310, i32 noundef %conv312, i32 noundef %conv314, i32 noundef %conv316) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then306, %if.end282, %do.end64, %do.end23, %while.body.3
  %retval.0 = phi i32 [ -22, %while.body.3 ], [ -22, %do.end23 ], [ -22, %do.end64 ], [ 0, %if.then306 ], [ 0, %if.end282 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_calc_bclk(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 289)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 289)
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
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !92, !93, !94, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !206, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !364, !365, !367, !368, !370, !371, !372, !373, !375, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !443, !444, !446, !447, !448, !450, !452, !454, !456, !457, !458, !460, !461, !462, !464, !465, !467, !468, !469, !471, !472, !474, !475, !476, !478, !479, !481, !482, !483, !485, !486, !488, !489, !490, !491, !493, !494, !496, !497, !498, !500, !501, !503, !504, !505, !507, !508, !510, !511, !513, !515, !516, !517, !519, !520, !522, !523, !525, !526, !528, !529, !531, !532, !534, !536, !538, !540}
!llvm.module.flags = !{!542, !543, !544, !545, !546, !547, !548, !549}
!llvm.ident = !{!550}

!0 = !{ptr @__initcall__kmod_snd_soc_wm8904__319_2335_wm8904_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_wm8904__319_2335_wm8904_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8904.c", i32 2335, i32 1}
!2 = !{ptr @__exitcall_wm8904_i2c_driver_exit, !1, !"__exitcall_wm8904_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description320, !4, !"__UNIQUE_ID_description320", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wm8904.c", i32 2337, i32 1}
!5 = !{ptr @__UNIQUE_ID_author321, !6, !"__UNIQUE_ID_author321", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wm8904.c", i32 2338, i32 1}
!7 = !{ptr @__UNIQUE_ID_file322, !8, !"__UNIQUE_ID_file322", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/wm8904.c", i32 2339, i32 1}
!9 = !{ptr @__UNIQUE_ID_license323, !8, !"__UNIQUE_ID_license323", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wm8904.c", i32 2328, i32 11}
!12 = !{ptr @wm8904_i2c_driver, !13, !"wm8904_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wm8904.c", i32 2326, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm8904.c", i32 2177, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/wm8904.c", i32 2180, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wm8904_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @wm8904_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @wm8904_i2c_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/wm8904.c", i32 2184, i32 19}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/wm8904.c", i32 2187, i32 3}
!29 = !{ptr @wm8904_i2c_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @wm8904_i2c_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/wm8904.c", i32 2212, i32 3}
!33 = !{ptr @wm8904_i2c_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @wm8904_i2c_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/wm8904.c", i32 2219, i32 3}
!37 = !{ptr @wm8904_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @wm8904_i2c_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/wm8904.c", i32 2225, i32 3}
!41 = !{ptr @wm8904_i2c_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @wm8904_i2c_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/wm8904.c", i32 2229, i32 3}
!45 = !{ptr @wm8904_i2c_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @wm8904_i2c_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/wm8904.c", i32 2236, i32 3}
!49 = !{ptr @wm8904_i2c_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @wm8904_i2c_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/wm8904.c", i32 2240, i32 2}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @wm8904_i2c_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @wm8904_i2c_probe._entry_ptr.29, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/wm8904.c", i32 2244, i32 3}
!58 = !{ptr @wm8904_i2c_probe._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @wm8904_i2c_probe._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @wm8904_regmap, !61, !"wm8904_regmap", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/wm8904.c", i32 2137, i32 35}
!62 = !{ptr @wm8904_reg_defaults, !63, !"wm8904_reg_defaults", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/wm8904.c", i32 88, i32 33}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/wm8904.c", i32 38, i32 2}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/wm8904.c", i32 39, i32 2}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/wm8904.c", i32 40, i32 2}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/wm8904.c", i32 41, i32 2}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/wm8904.c", i32 42, i32 2}
!74 = distinct !{null, !75, !"wm8904_supply_names", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/wm8904.c", i32 37, i32 20}
!76 = !{ptr @soc_component_dev_wm8904, !77, !"soc_component_dev_wm8904", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/wm8904.c", i32 2128, i32 46}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/wm8904.c", i32 2108, i32 3}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @wm8904_probe._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @wm8904_probe._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/wm8904.c", i32 2058, i32 2}
!85 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @wm8904_handle_pdata.__UNIQUE_ID_ddebug317, !84, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/wm8904.c", i32 2062, i32 4}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/wm8904.c", i32 2080, i32 4}
!92 = !{ptr @wm8904_handle_pdata._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @wm8904_handle_pdata._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/wm8904.c", i32 2086, i32 2}
!96 = !{ptr @wm8904_handle_pdata.__UNIQUE_ID_ddebug318, !95, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/wm8904.c", i32 634, i32 1}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/wm8904.c", i32 635, i32 1}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/wm8904.c", i32 636, i32 1}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/wm8904.c", i32 637, i32 1}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/wm8904.c", i32 638, i32 1}
!107 = !{ptr @wm8904_eq_controls, !108, !"wm8904_eq_controls", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/wm8904.c", i32 633, i32 38}
!109 = !{ptr @eq_tlv, !110, !"eq_tlv", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/wm8904.c", i32 546, i32 14}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/wm8904.c", i32 1994, i32 3}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/wm8904.c", i32 2034, i32 2}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @wm8904_handle_retune_mobile_pdata.__UNIQUE_ID_ddebug316, !114, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/wm8904.c", i32 2042, i32 3}
!119 = !{ptr @wm8904_handle_retune_mobile_pdata._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @wm8904_handle_retune_mobile_pdata._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/wm8904.c", i32 442, i32 2}
!123 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @wm8904_set_retune_mobile.__UNIQUE_ID_ddebug297, !122, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/wm8904.c", i32 919, i32 1}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/wm8904.c", i32 921, i32 1}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/wm8904.c", i32 922, i32 1}
!131 = !{ptr @wm8904_core_dapm_widgets, !132, !"wm8904_core_dapm_widgets", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/wm8904.c", i32 918, i32 41}
!133 = !{ptr @core_intercon, !134, !"core_intercon", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/wm8904.c", i32 1051, i32 40}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/wm8904.c", i32 579, i32 1}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/wm8904.c", i32 583, i32 1}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/wm8904.c", i32 585, i32 1}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/wm8904.c", i32 588, i32 1}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/wm8904.c", i32 589, i32 1}
!145 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/wm8904.c", i32 590, i32 1}
!147 = !{ptr @wm8904_adc_snd_controls, !148, !"wm8904_adc_snd_controls", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/wm8904.c", i32 578, i32 38}
!149 = !{ptr @digital_tlv, !150, !"digital_tlv", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/wm8904.c", i32 543, i32 14}
!151 = !{ptr @hpf_mode, !152, !"hpf_mode", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/wm8904.c", i32 552, i32 8}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/wm8904.c", i32 549, i32 2}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/wm8904.c", i32 549, i32 11}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/wm8904.c", i32 549, i32 22}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/wm8904.c", i32 549, i32 33}
!161 = !{ptr @hpf_mode_text, !162, !"hpf_mode_text", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/wm8904.c", i32 548, i32 20}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/wm8904.c", i32 601, i32 1}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/wm8904.c", i32 603, i32 1}
!167 = !{ptr @.str.84, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/wm8904.c", i32 606, i32 1}
!169 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/wm8904.c", i32 608, i32 1}
!171 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/wm8904.c", i32 610, i32 1}
!173 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/wm8904.c", i32 613, i32 1}
!175 = !{ptr @.str.92, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/wm8904.c", i32 615, i32 1}
!177 = !{ptr @.str.94, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/wm8904.c", i32 617, i32 1}
!179 = !{ptr @.str.96, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/wm8904.c", i32 620, i32 1}
!181 = !{ptr @.str.98, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/wm8904.c", i32 621, i32 1}
!183 = !{ptr @.str.100, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/wm8904.c", i32 622, i32 1}
!185 = !{ptr @.str.101, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/wm8904.c", i32 623, i32 1}
!187 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/wm8904.c", i32 624, i32 1}
!189 = !{ptr @wm8904_dac_snd_controls, !190, !"wm8904_dac_snd_controls", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/wm8904.c", i32 600, i32 38}
!191 = !{ptr @dac_boost_tlv, !192, !"dac_boost_tlv", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/wm8904.c", i32 542, i32 14}
!193 = !{ptr @out_tlv, !194, !"out_tlv", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/wm8904.c", i32 544, i32 14}
!195 = !{ptr @drc_path, !196, !"drc_path", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/wm8904.c", i32 598, i32 8}
!197 = !{ptr @.str.104, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/wm8904.c", i32 595, i32 2}
!199 = !{ptr @.str.105, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/wm8904.c", i32 595, i32 9}
!201 = !{ptr @drc_path_text, !202, !"drc_path_text", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/wm8904.c", i32 594, i32 20}
!203 = !{ptr @.str.106, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/wm8904.c", i32 511, i32 2}
!205 = !{ptr @.str.107, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @wm8904_set_deemph.__UNIQUE_ID_ddebug298, !204, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!207 = !{ptr @deemph_settings, !208, !"deemph_settings", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/wm8904.c", i32 488, i32 12}
!209 = !{ptr @.str.108, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/wm8904.c", i32 629, i32 1}
!211 = !{ptr @wm8904_snd_controls, !212, !"wm8904_snd_controls", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/wm8904.c", i32 628, i32 38}
!213 = !{ptr @sidetone_tlv, !214, !"sidetone_tlv", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/wm8904.c", i32 545, i32 14}
!215 = !{ptr @.str.110, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/wm8904.c", i32 926, i32 1}
!217 = !{ptr @.str.111, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/wm8904.c", i32 927, i32 1}
!219 = !{ptr @.str.112, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/wm8904.c", i32 928, i32 1}
!221 = !{ptr @.str.113, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/wm8904.c", i32 929, i32 1}
!223 = !{ptr @.str.114, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/wm8904.c", i32 930, i32 1}
!225 = !{ptr @.str.115, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/wm8904.c", i32 931, i32 1}
!227 = !{ptr @.str.116, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/wm8904.c", i32 933, i32 1}
!229 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/wm8904.c", i32 935, i32 1}
!231 = !{ptr @.str.118, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/wm8904.c", i32 936, i32 1}
!233 = !{ptr @.str.119, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/wm8904.c", i32 938, i32 1}
!235 = !{ptr @.str.120, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/wm8904.c", i32 939, i32 1}
!237 = !{ptr @.str.121, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/wm8904.c", i32 940, i32 1}
!239 = !{ptr @.str.122, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/wm8904.c", i32 942, i32 1}
!241 = !{ptr @.str.123, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/wm8904.c", i32 944, i32 1}
!243 = !{ptr @.str.124, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/wm8904.c", i32 946, i32 1}
!245 = !{ptr @.str.125, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/wm8904.c", i32 949, i32 1}
!247 = !{ptr @.str.126, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/wm8904.c", i32 950, i32 1}
!249 = !{ptr @.str.127, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/wm8904.c", i32 952, i32 1}
!251 = !{ptr @.str.128, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/wm8904.c", i32 953, i32 1}
!253 = !{ptr @.str.129, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/wm8904.c", i32 955, i32 1}
!255 = !{ptr @.str.130, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.131, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/wm8904.c", i32 956, i32 1}
!258 = !{ptr @wm8904_adc_dapm_widgets, !259, !"wm8904_adc_dapm_widgets", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/wm8904.c", i32 925, i32 41}
!260 = !{ptr @lin_mux, !261, !"lin_mux", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/wm8904.c", i32 851, i32 38}
!262 = !{ptr @lin_enum, !263, !"lin_enum", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/wm8904.c", i32 848, i32 8}
!264 = !{ptr @lin_text, !265, !"lin_text", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/wm8904.c", i32 844, i32 20}
!266 = !{ptr @lin_inv_mux, !267, !"lin_inv_mux", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/wm8904.c", i32 857, i32 38}
!268 = !{ptr @lin_inv_enum, !269, !"lin_inv_enum", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/wm8904.c", i32 854, i32 8}
!270 = !{ptr @lin_mode, !271, !"lin_mode", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/wm8904.c", i32 864, i32 38}
!272 = !{ptr @lin_mode_enum, !273, !"lin_mode_enum", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/wm8904.c", i32 860, i32 8}
!274 = !{ptr @.str.133, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/wm8904.c", i32 841, i32 2}
!276 = !{ptr @.str.134, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/wm8904.c", i32 841, i32 18}
!278 = !{ptr @.str.135, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/wm8904.c", i32 841, i32 39}
!280 = !{ptr @input_mode_text, !281, !"input_mode_text", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/wm8904.c", i32 840, i32 20}
!282 = !{ptr @rin_mux, !283, !"rin_mux", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/wm8904.c", i32 874, i32 38}
!284 = !{ptr @rin_enum, !285, !"rin_enum", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/wm8904.c", i32 871, i32 8}
!286 = !{ptr @rin_text, !287, !"rin_text", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/wm8904.c", i32 867, i32 20}
!288 = !{ptr @rin_inv_mux, !289, !"rin_inv_mux", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/wm8904.c", i32 880, i32 38}
!290 = !{ptr @rin_inv_enum, !291, !"rin_inv_enum", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/wm8904.c", i32 877, i32 8}
!292 = !{ptr @rin_mode, !293, !"rin_mode", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/wm8904.c", i32 887, i32 38}
!294 = !{ptr @rin_mode_enum, !295, !"rin_mode_enum", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/wm8904.c", i32 883, i32 8}
!296 = !{ptr @aifoutl_mux, !297, !"aifoutl_mux", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/wm8904.c", i32 897, i32 38}
!298 = !{ptr @aifoutl_enum, !299, !"aifoutl_enum", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/wm8904.c", i32 894, i32 8}
!300 = !{ptr @.str.136, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/wm8904.c", i32 891, i32 2}
!302 = !{ptr @.str.137, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/wm8904.c", i32 891, i32 10}
!304 = !{ptr @aif_text, !305, !"aif_text", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/wm8904.c", i32 890, i32 20}
!306 = !{ptr @aifoutr_mux, !307, !"aifoutr_mux", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/wm8904.c", i32 903, i32 38}
!308 = !{ptr @aifoutr_enum, !309, !"aifoutr_enum", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/wm8904.c", i32 900, i32 8}
!310 = !{ptr @.str.138, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/wm8904.c", i32 960, i32 1}
!312 = !{ptr @.str.139, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.140, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/wm8904.c", i32 961, i32 1}
!315 = !{ptr @.str.141, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/wm8904.c", i32 963, i32 1}
!317 = !{ptr @.str.142, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/wm8904.c", i32 964, i32 1}
!319 = !{ptr @.str.143, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/wm8904.c", i32 966, i32 1}
!321 = !{ptr @.str.144, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/wm8904.c", i32 967, i32 1}
!323 = !{ptr @.str.145, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/wm8904.c", i32 969, i32 1}
!325 = !{ptr @.str.146, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/wm8904.c", i32 972, i32 1}
!327 = !{ptr @.str.147, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/wm8904.c", i32 973, i32 1}
!329 = !{ptr @.str.148, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/wm8904.c", i32 975, i32 1}
!331 = !{ptr @.str.149, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/wm8904.c", i32 976, i32 1}
!333 = !{ptr @.str.150, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/wm8904.c", i32 978, i32 1}
!335 = !{ptr @.str.151, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/wm8904.c", i32 982, i32 1}
!337 = !{ptr @.str.152, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/wm8904.c", i32 987, i32 1}
!339 = !{ptr @.str.153, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/wm8904.c", i32 988, i32 1}
!341 = !{ptr @.str.154, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/wm8904.c", i32 989, i32 1}
!343 = !{ptr @.str.155, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/wm8904.c", i32 990, i32 1}
!345 = !{ptr @wm8904_dac_dapm_widgets, !346, !"wm8904_dac_dapm_widgets", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/wm8904.c", i32 959, i32 41}
!347 = !{ptr @.str.157, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/wm8904.c", i32 910, i32 2}
!349 = !{ptr @aifinl_mux, !350, !"aifinl_mux", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/wm8904.c", i32 909, i32 38}
!351 = !{ptr @aifinl_enum, !352, !"aifinl_enum", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/wm8904.c", i32 906, i32 8}
!353 = !{ptr @.str.158, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/wm8904.c", i32 916, i32 2}
!355 = !{ptr @aifinr_mux, !356, !"aifinr_mux", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/wm8904.c", i32 915, i32 38}
!357 = !{ptr @aifinr_enum, !358, !"aifinr_enum", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/wm8904.c", i32 912, i32 8}
!359 = !{ptr @.str.159, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/wm8904.c", i32 727, i32 3}
!361 = !{ptr @.str.160, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/wm8904.c", i32 757, i32 4}
!363 = !{ptr @.str.161, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @out_pga_event.__UNIQUE_ID_ddebug299, !362, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!365 = !{ptr @.str.162, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/wm8904.c", i32 768, i32 4}
!367 = !{ptr @out_pga_event.__UNIQUE_ID_ddebug300, !366, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!368 = !{ptr @.str.163, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/wm8904.c", i32 787, i32 4}
!370 = !{ptr @.str.164, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @out_pga_event._entry, !369, !"_entry", i1 false, i1 false}
!372 = !{ptr @out_pga_event._entry_ptr, !369, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.165, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/wm8904.c", i32 789, i32 4}
!375 = !{ptr @out_pga_event.__UNIQUE_ID_ddebug301, !374, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!376 = !{ptr @.str.166, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/wm8904.c", i32 1038, i32 1}
!378 = !{ptr @.str.167, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/wm8904.c", i32 1039, i32 1}
!380 = !{ptr @.str.168, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/wm8904.c", i32 1040, i32 1}
!382 = !{ptr @.str.169, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/wm8904.c", i32 1042, i32 1}
!384 = !{ptr @.str.170, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/wm8904.c", i32 1043, i32 1}
!386 = !{ptr @.str.171, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/wm8904.c", i32 1045, i32 1}
!388 = !{ptr @.str.172, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/wm8904.c", i32 1046, i32 1}
!390 = !{ptr @.str.173, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/wm8904.c", i32 1047, i32 1}
!392 = !{ptr @.str.174, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/wm8904.c", i32 1048, i32 1}
!394 = !{ptr @wm8904_dapm_widgets, !395, !"wm8904_dapm_widgets", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/wm8904.c", i32 1037, i32 41}
!396 = !{ptr @.str.176, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/wm8904.c", i32 1029, i32 2}
!398 = !{ptr @dacl_sidetone_mux, !399, !"dacl_sidetone_mux", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/wm8904.c", i32 1028, i32 38}
!400 = !{ptr @dacl_sidetone_enum, !401, !"dacl_sidetone_enum", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/wm8904.c", i32 1025, i32 8}
!402 = !{ptr @.str.177, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/wm8904.c", i32 1022, i32 2}
!404 = !{ptr @sidetone_text, !405, !"sidetone_text", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/wm8904.c", i32 1021, i32 20}
!406 = !{ptr @.str.178, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/wm8904.c", i32 1035, i32 2}
!408 = !{ptr @dacr_sidetone_mux, !409, !"dacr_sidetone_mux", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/wm8904.c", i32 1034, i32 38}
!410 = !{ptr @dacr_sidetone_enum, !411, !"dacr_sidetone_enum", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/wm8904.c", i32 1031, i32 8}
!412 = !{ptr @hpl_mux, !413, !"hpl_mux", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/wm8904.c", i32 1000, i32 38}
!414 = !{ptr @hpl_enum, !415, !"hpl_enum", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/wm8904.c", i32 997, i32 8}
!416 = !{ptr @.str.179, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/wm8904.c", i32 994, i32 9}
!418 = !{ptr @out_mux_text, !419, !"out_mux_text", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/wm8904.c", i32 993, i32 20}
!420 = !{ptr @hpr_mux, !421, !"hpr_mux", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/wm8904.c", i32 1006, i32 38}
!422 = !{ptr @hpr_enum, !423, !"hpr_enum", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/wm8904.c", i32 1003, i32 8}
!424 = !{ptr @linel_mux, !425, !"linel_mux", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/wm8904.c", i32 1012, i32 38}
!426 = !{ptr @linel_enum, !427, !"linel_enum", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/wm8904.c", i32 1009, i32 8}
!428 = !{ptr @liner_mux, !429, !"liner_mux", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/wm8904.c", i32 1018, i32 38}
!430 = !{ptr @liner_enum, !431, !"liner_enum", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/wm8904.c", i32 1015, i32 8}
!432 = !{ptr @adc_intercon, !433, !"adc_intercon", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/wm8904.c", i32 1056, i32 40}
!434 = !{ptr @dac_intercon, !435, !"dac_intercon", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/wm8904.c", i32 1103, i32 40}
!436 = !{ptr @wm8904_intercon, !437, !"wm8904_intercon", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/wm8904.c", i32 1135, i32 40}
!438 = !{ptr @wm8912_intercon, !439, !"wm8912_intercon", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/wm8904.c", i32 1169, i32 40}
!440 = !{ptr @.str.180, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/wm8904.c", i32 1890, i32 5}
!442 = !{ptr @wm8904_set_bias_level._entry, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @wm8904_set_bias_level._entry_ptr, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.182, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/wm8904.c", i32 1898, i32 5}
!446 = !{ptr @wm8904_set_bias_level._entry.181, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @wm8904_set_bias_level._entry_ptr.183, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.184, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/wm8904.c", i32 1970, i32 10}
!450 = !{ptr @wm8904_dai, !451, !"wm8904_dai", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/wm8904.c", i32 1969, i32 34}
!452 = !{ptr @wm8904_dai_ops, !453, !"wm8904_dai_ops", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/wm8904.c", i32 1959, i32 37}
!454 = !{ptr @.str.185, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/wm8904.c", i32 1842, i32 2}
!456 = !{ptr @.str.186, !455, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @wm8904_set_sysclk.__UNIQUE_ID_ddebug315, !455, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!458 = !{ptr @.str.187, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/wm8904.c", i32 327, i32 3}
!460 = !{ptr @.str.188, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @wm8904_configure_clocking.__UNIQUE_ID_ddebug294, !459, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!462 = !{ptr @.str.189, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/wm8904.c", i32 338, i32 3}
!464 = !{ptr @wm8904_configure_clocking.__UNIQUE_ID_ddebug295, !463, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!465 = !{ptr @.str.190, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/wm8904.c", i32 346, i32 3}
!467 = !{ptr @wm8904_configure_clocking._entry, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @wm8904_configure_clocking._entry_ptr, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.191, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/wm8904.c", i32 365, i32 2}
!471 = !{ptr @wm8904_configure_clocking.__UNIQUE_ID_ddebug296, !470, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!472 = !{ptr @.str.192, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/soc/codecs/wm8904.c", i32 1677, i32 3}
!474 = !{ptr @.str.193, !473, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @wm8904_set_fll.__UNIQUE_ID_ddebug312, !473, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!476 = !{ptr @.str.194, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/wm8904.c", i32 1703, i32 3}
!478 = !{ptr @wm8904_set_fll.__UNIQUE_ID_ddebug313, !477, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!479 = !{ptr @.str.195, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/wm8904.c", i32 1713, i32 3}
!481 = !{ptr @wm8904_set_fll._entry, !480, !"_entry", i1 false, i1 false}
!482 = !{ptr @wm8904_set_fll._entry_ptr, !480, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.196, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/wm8904.c", i32 1779, i32 2}
!485 = !{ptr @wm8904_set_fll.__UNIQUE_ID_ddebug314, !484, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!486 = !{ptr @.str.197, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/wm8904.c", i32 1593, i32 4}
!488 = !{ptr @.str.198, !487, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @fll_factors._entry, !487, !"_entry", i1 false, i1 false}
!490 = !{ptr @fll_factors._entry_ptr, !487, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.199, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/wm8904.c", i32 1599, i32 2}
!493 = !{ptr @fll_factors.__UNIQUE_ID_ddebug308, !492, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!494 = !{ptr @.str.201, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/wm8904.c", i32 1609, i32 4}
!496 = !{ptr @fll_factors._entry.200, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @fll_factors._entry_ptr.202, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.203, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../sound/soc/codecs/wm8904.c", i32 1617, i32 2}
!500 = !{ptr @fll_factors.__UNIQUE_ID_ddebug309, !499, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!501 = !{ptr @.str.205, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/wm8904.c", i32 1628, i32 3}
!503 = !{ptr @fll_factors._entry.204, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @fll_factors._entry_ptr.206, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.207, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/wm8904.c", i32 1637, i32 2}
!507 = !{ptr @fll_factors.__UNIQUE_ID_ddebug310, !506, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!508 = !{ptr @.str.208, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/wm8904.c", i32 1652, i32 2}
!510 = !{ptr @fll_factors.__UNIQUE_ID_ddebug311, !509, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!511 = !{ptr @fll_fratios, !512, !"fll_fratios", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/wm8904.c", i32 1569, i32 3}
!513 = !{ptr @.str.209, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/wm8904.c", i32 1302, i32 3}
!515 = !{ptr @.str.210, !514, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @wm8904_hw_params.__UNIQUE_ID_ddebug302, !514, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!517 = !{ptr @.str.211, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/wm8904.c", i32 1328, i32 2}
!519 = !{ptr @wm8904_hw_params.__UNIQUE_ID_ddebug303, !518, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!520 = !{ptr @.str.212, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/soc/codecs/wm8904.c", i32 1346, i32 2}
!522 = !{ptr @wm8904_hw_params.__UNIQUE_ID_ddebug304, !521, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!523 = !{ptr @.str.213, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/wm8904.c", i32 1362, i32 2}
!525 = !{ptr @wm8904_hw_params.__UNIQUE_ID_ddebug305, !524, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!526 = !{ptr @.str.214, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/wm8904.c", i32 1385, i32 2}
!528 = !{ptr @wm8904_hw_params.__UNIQUE_ID_ddebug306, !527, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!529 = !{ptr @.str.215, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/wm8904.c", i32 1390, i32 2}
!531 = !{ptr @wm8904_hw_params.__UNIQUE_ID_ddebug307, !530, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!532 = !{ptr @clk_sys_rates, !533, !"clk_sys_rates", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/wm8904.c", i32 1231, i32 3}
!534 = !{ptr @sample_rates, !535, !"sample_rates", i1 false, i1 false}
!535 = !{!"../sound/soc/codecs/wm8904.c", i32 1247, i32 3}
!536 = !{ptr @bclk_divs, !537, !"bclk_divs", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/wm8904.c", i32 1262, i32 3}
!538 = !{ptr @wm8904_of_match, !539, !"wm8904_of_match", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/wm8904.c", i32 2151, i32 34}
!540 = !{ptr @wm8904_i2c_id, !541, !"wm8904_i2c_id", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/wm8904.c", i32 2318, i32 35}
!542 = !{i32 1, !"wchar_size", i32 2}
!543 = !{i32 1, !"min_enum_size", i32 4}
!544 = !{i32 8, !"branch-target-enforcement", i32 0}
!545 = !{i32 8, !"sign-return-address", i32 0}
!546 = !{i32 8, !"sign-return-address-all", i32 0}
!547 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!548 = !{i32 7, !"uwtable", i32 1}
!549 = !{i32 7, !"frame-pointer", i32 2}
!550 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!551 = !{!"auto-init"}
!552 = !{i64 2148786757, i64 2148786762, i64 2148786775, i64 2148786819, i64 2148786853, i64 2148786874}
!553 = !{!"branch_weights", i32 1, i32 2000}
!554 = !{!"branch_weights", i32 2000, i32 1}
!555 = !{i32 0, i32 33}
!556 = !{i64 2148695476, i64 2148695756, i64 2148696090, i64 2148696424}
