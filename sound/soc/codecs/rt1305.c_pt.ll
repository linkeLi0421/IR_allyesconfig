; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt1305.c_pt.bc'
source_filename = "../sound/soc/codecs/rt1305.c"
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
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.rt1305_priv = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_rt1305__303_1179_rt1305_i2c_driver_init6 = internal global ptr @rt1305_i2c_driver_init, section ".initcall6.init", align 4
@rt1305_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt1305_i2c_probe, ptr null, ptr null, ptr @rt1305_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt1305_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt1305_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt1305_i2c_driver_exit = internal global ptr @rt1305_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [56 x i8] c"snd_soc_rt1305.description=ASoC RT1305 amplifier driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [57 x i8] c"snd_soc_rt1305.author=Shuming Fan <shumingf@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [52 x i8] c"snd_soc_rt1305.file=sound/soc/codecs/snd-soc-rt1305\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [30 x i8] c"snd_soc_rt1305.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt1305\00", [25 x i8] zeroinitializer }, align 32
@rt1305_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt1305\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt1306\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rt1305_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt1305\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"rt1306\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@rt1305_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt1305_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @rt1305_readable_register, ptr @rt1305_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 512, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt1305_reg, i32 154, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @rt1305_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rt1305:1134:(&rt1305_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@rt1305_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1138, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt1305_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/rt1305.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt1305_i2c_probe._entry_ptr = internal global ptr @rt1305_i2c_probe._entry, section ".printk_index", align 4
@rt1305_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1145, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device with ID register %x is not rt1305\0A\00", [54 x i8] zeroinitializer }, align 32
@rt1305_i2c_probe._entry_ptr.9 = internal global ptr @rt1305_i2c_probe._entry.7, section ".printk_index", align 4
@soc_component_dev_rt1305 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt1305_snd_controls, i32 2, ptr @rt1305_dapm_widgets, i32 40, ptr @rt1305_dapm_routes, i32 40, ptr @rt1305_probe, ptr @rt1305_remove, ptr @rt1305_suspend, ptr @rt1305_resume, ptr null, ptr null, ptr null, ptr null, ptr @rt1305_set_component_sysclk, ptr @rt1305_set_component_pll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt1305_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.88, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt1305_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.65, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@rt1305_reg = internal constant { [154 x %struct.reg_default], [304 x i8] } { [154 x %struct.reg_default] [%struct.reg_default { i32 4, i32 1024 }, %struct.reg_default { i32 5, i32 2176 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 12544 }, %struct.reg_default { i32 8, i32 32768 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 2174 }, %struct.reg_default { i32 11, i32 32 }, %struct.reg_default { i32 12, i32 2050 }, %struct.reg_default { i32 13, i32 32 }, %struct.reg_default { i32 16, i32 7453 }, %struct.reg_default { i32 17, i32 7453 }, %struct.reg_default { i32 18, i32 65535 }, %struct.reg_default { i32 20, i32 12 }, %struct.reg_default { i32 22, i32 5911 }, %struct.reg_default { i32 23, i32 16384 }, %struct.reg_default { i32 24, i32 25 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 42, i32 16384 }, %struct.reg_default { i32 43, i32 12288 }, %struct.reg_default { i32 45, i32 24576 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 32768 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 57, i32 1 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 59, i32 4128 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 19456 }, %struct.reg_default { i32 63, i32 12288 }, %struct.reg_default { i32 64, i32 12 }, %struct.reg_default { i32 66, i32 1024 }, %struct.reg_default { i32 70, i32 49708 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 768 }, %struct.reg_default { i32 79, i32 61440 }, %struct.reg_default { i32 80, i32 49664 }, %struct.reg_default { i32 81, i32 7967 }, %struct.reg_default { i32 82, i32 496 }, %struct.reg_default { i32 83, i32 16511 }, %struct.reg_default { i32 84, i32 65535 }, %struct.reg_default { i32 88, i32 16389 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 96, i32 60947 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 24415 }, %struct.reg_default { i32 100, i32 64 }, %struct.reg_default { i32 101, i32 16384 }, %struct.reg_default { i32 102, i32 16388 }, %struct.reg_default { i32 103, i32 774 }, %struct.reg_default { i32 104, i32 35844 }, %struct.reg_default { i32 105, i32 57377 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 108, i32 43690 }, %struct.reg_default { i32 112, i32 819 }, %struct.reg_default { i32 113, i32 13104 }, %struct.reg_default { i32 114, i32 13107 }, %struct.reg_default { i32 115, i32 13056 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 0 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 122, i32 3 }, %struct.reg_default { i32 124, i32 4332 }, %struct.reg_default { i32 126, i32 25169 }, %struct.reg_default { i32 128, i32 2048 }, %struct.reg_default { i32 129, i32 16384 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 144, i32 31233 }, %struct.reg_default { i32 145, i32 33841 }, %struct.reg_default { i32 146, i32 384 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 150, i32 0 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 153, i32 0 }, %struct.reg_default { i32 154, i32 0 }, %struct.reg_default { i32 155, i32 0 }, %struct.reg_default { i32 156, i32 0 }, %struct.reg_default { i32 157, i32 0 }, %struct.reg_default { i32 158, i32 0 }, %struct.reg_default { i32 159, i32 0 }, %struct.reg_default { i32 160, i32 0 }, %struct.reg_default { i32 176, i32 33280 }, %struct.reg_default { i32 177, i32 255 }, %struct.reg_default { i32 178, i32 8 }, %struct.reg_default { i32 192, i32 512 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 195, i32 0 }, %struct.reg_default { i32 196, i32 0 }, %struct.reg_default { i32 197, i32 0 }, %struct.reg_default { i32 198, i32 0 }, %struct.reg_default { i32 199, i32 0 }, %struct.reg_default { i32 200, i32 0 }, %struct.reg_default { i32 201, i32 0 }, %struct.reg_default { i32 202, i32 512 }, %struct.reg_default { i32 203, i32 0 }, %struct.reg_default { i32 204, i32 0 }, %struct.reg_default { i32 205, i32 0 }, %struct.reg_default { i32 206, i32 0 }, %struct.reg_default { i32 207, i32 0 }, %struct.reg_default { i32 208, i32 0 }, %struct.reg_default { i32 209, i32 0 }, %struct.reg_default { i32 210, i32 0 }, %struct.reg_default { i32 211, i32 0 }, %struct.reg_default { i32 212, i32 512 }, %struct.reg_default { i32 213, i32 0 }, %struct.reg_default { i32 214, i32 0 }, %struct.reg_default { i32 215, i32 0 }, %struct.reg_default { i32 216, i32 0 }, %struct.reg_default { i32 217, i32 0 }, %struct.reg_default { i32 218, i32 0 }, %struct.reg_default { i32 219, i32 0 }, %struct.reg_default { i32 220, i32 0 }, %struct.reg_default { i32 221, i32 0 }, %struct.reg_default { i32 222, i32 512 }, %struct.reg_default { i32 223, i32 0 }, %struct.reg_default { i32 224, i32 0 }, %struct.reg_default { i32 225, i32 0 }, %struct.reg_default { i32 226, i32 0 }, %struct.reg_default { i32 227, i32 0 }, %struct.reg_default { i32 228, i32 0 }, %struct.reg_default { i32 229, i32 0 }, %struct.reg_default { i32 230, i32 0 }, %struct.reg_default { i32 231, i32 0 }, %struct.reg_default { i32 232, i32 512 }, %struct.reg_default { i32 233, i32 0 }, %struct.reg_default { i32 234, i32 0 }, %struct.reg_default { i32 235, i32 0 }, %struct.reg_default { i32 236, i32 0 }, %struct.reg_default { i32 237, i32 0 }, %struct.reg_default { i32 238, i32 0 }, %struct.reg_default { i32 239, i32 0 }, %struct.reg_default { i32 240, i32 0 }, %struct.reg_default { i32 241, i32 0 }, %struct.reg_default { i32 242, i32 512 }, %struct.reg_default { i32 243, i32 0 }, %struct.reg_default { i32 244, i32 0 }, %struct.reg_default { i32 245, i32 0 }, %struct.reg_default { i32 246, i32 0 }, %struct.reg_default { i32 247, i32 0 }, %struct.reg_default { i32 248, i32 0 }, %struct.reg_default { i32 249, i32 0 }, %struct.reg_default { i32 250, i32 0 }, %struct.reg_default { i32 251, i32 0 }], [304 x i8] zeroinitializer }, align 32
@rt1305_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str.10, i32 256, i32 511, i32 106, i32 255, i32 0, i32 108, i32 1 }], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PR\00", [29 x i8] zeroinitializer }, align 32
@rt1305_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016DC offsetl=0x%x, offsetr=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt1305_calibrate\00", [47 x i8] zeroinitializer }, align 32
@rt1305_calibrate._entry_ptr = internal global ptr @rt1305_calibrate._entry, section ".printk_index", align 4
@rt1305_calibrate.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.12, ptr @.str.4, ptr @.str.14, i8 1, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_rt1305\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Left_rhl = 0x%x rh=0x%x rl=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@rt1305_calibrate._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.4, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016Left channel %d.%dohm\0A\00", [39 x i8] zeroinitializer }, align 32
@rt1305_calibrate._entry_ptr.17 = internal global ptr @rt1305_calibrate._entry.15, section ".printk_index", align 4
@rt1305_calibrate.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.12, ptr @.str.4, ptr @.str.18, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left_r0 = 0x%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@rt1305_calibrate.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.12, ptr @.str.4, ptr @.str.19, i8 1, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Right_rhl = 0x%x rh=0x%x rl=0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@rt1305_calibrate._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.4, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016Right channel %d.%dohm\0A\00", [38 x i8] zeroinitializer }, align 32
@rt1305_calibrate._entry_ptr.22 = internal global ptr @rt1305_calibrate._entry.20, section ".printk_index", align 4
@rt1305_calibrate.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.12, ptr @.str.4, ptr @.str.23, i8 1, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right_r0 = 0x%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@rt1305_calibrate._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.12, ptr @.str.4, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013R0 calibration failed\0A\00", [39 x i8] zeroinitializer }, align 32
@rt1305_calibrate._entry_ptr.26 = internal global ptr @rt1305_calibrate._entry.24, section ".printk_index", align 4
@rt1305_snd_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt1305_rx_data_ch_enum to i32) }], [32 x i8] zeroinitializer }, align 32
@rt1305_dapm_routes = internal constant { [40 x %struct.snd_soc_dapm_route], [512 x i8] } { [40 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.33, ptr @rt1305_is_rc_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.34, ptr @rt1305_is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.75, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.75, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }], [512 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@dac_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9435, i32 37], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 18, i32 18, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX Channel Select\00", [46 x i8] zeroinitializer }, align 32
@rt1305_rx_data_ch_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 2, i8 2, i32 4, i32 3, ptr @rt1305_rx_data_ch_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt1305_rx_data_ch_select = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LR\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RL\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Copy L\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Copy R\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLL0\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLL1\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MBIAS\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BG MBIAS\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BG2\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO2 IB2\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VREF\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VREF1\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VREF2\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DISC VREF\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FASTB VREF\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ULTRA FAST VREF\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CHOP DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CKGEN DAC\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CLAMP\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUFL\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUFR\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CKGEN ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC3 L\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC3 R\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TRIOSC\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD1\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD2\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VSENSE R\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VSENSE L\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ISENSE R\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ISENSE L\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POR AVDD1\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POR AVDD2\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VCM 6172\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1RX\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC L Power\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC R Power\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC L\00", [26 x i8] zeroinitializer }, align 32
@rt1305_sto_dac_l = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC R\00", [26 x i8] zeroinitializer }, align 32
@rt1305_sto_dac_r = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLASS D\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPOR\00", [27 x i8] zeroinitializer }, align 32
@rt1305_dapm_widgets = internal constant { [40 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1792 x i8] } { [40 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 60, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 60, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 60, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 60, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 60, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 60, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 60, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.64, ptr @.str.65, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 59, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt1305_sto_dac_l, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt1305_sto_dac_r, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt1305_classd_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1792 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@init_list = internal constant { [10 x %struct.reg_sequence], [40 x i8] } { [10 x %struct.reg_sequence] [%struct.reg_sequence { i32 463, i32 21832, i32 0 }, %struct.reg_sequence { i32 349, i32 1090, i32 0 }, %struct.reg_sequence { i32 449, i32 800, i32 0 }, %struct.reg_sequence { i32 57, i32 0, i32 0 }, %struct.reg_sequence { i32 80, i32 55006, i32 0 }, %struct.reg_sequence { i32 81, i32 1799, i32 0 }, %struct.reg_sequence { i32 82, i32 16528, i32 0 }, %struct.reg_sequence { i32 18, i32 57311, i32 0 }, %struct.reg_sequence { i32 24, i32 537, i32 0 }, %struct.reg_sequence { i32 22, i32 5903, i32 0 }], [40 x i8] zeroinitializer }, align 32
@rt1305_set_component_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 778, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rt1305_set_component_sysclk\00", [36 x i8] zeroinitializer }, align 32
@rt1305_set_component_sysclk._entry_ptr = internal global ptr @rt1305_set_component_sysclk._entry, section ".printk_index", align 4
@rt1305_set_component_sysclk.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.79, ptr @.str.4, ptr @.str.80, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rt1305_set_component_pll.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.81, ptr @.str.4, ptr @.str.82, i8 0, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rt1305_set_component_pll\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@rt1305_set_component_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.4, i32 838, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown PLL Source %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rt1305_set_component_pll._entry_ptr = internal global ptr @rt1305_set_component_pll._entry, section ".printk_index", align 4
@rt1305_set_component_pll._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.81, ptr @.str.4, i32 844, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt1305_set_component_pll._entry_ptr.86 = internal global ptr @rt1305_set_component_pll._entry.84, section ".printk_index", align 4
@rt1305_set_component_pll.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.81, ptr @.str.4, ptr @.str.87, i8 0, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt1305-aif\00", [21 x i8] zeroinitializer }, align 32
@rt1305_aif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @rt1305_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt1305_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rt1305_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.4, i32 749, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid dai->id: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt1305_set_dai_fmt\00", [45 x i8] zeroinitializer }, align 32
@rt1305_set_dai_fmt._entry_ptr = internal global ptr @rt1305_set_dai_fmt._entry, section ".printk_index", align 4
@rt1305_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 636, ptr @.str.93, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Force using PLL \00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt1305_hw_params\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt1305_hw_params._entry_ptr = internal global ptr @rt1305_hw_params._entry, section ".printk_index", align 4
@rt1305_hw_params._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.92, ptr @.str.4, i32 646, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported frame size: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt1305_hw_params._entry_ptr.96 = internal global ptr @rt1305_hw_params._entry.94, section ".printk_index", align 4
@rt1305_hw_params.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.92, ptr @.str.4, ptr @.str.97, i8 0, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rt1305_hw_params.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.92, ptr @.str.4, ptr @.str.98, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"lrck is %dHz and pre_div is %d for iis %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rt1305_hw_params._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.92, ptr @.str.4, i32 685, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rt1305_hw_params._entry_ptr.100 = internal global ptr @rt1305_hw_params._entry.99, section ".printk_index", align 4
@switch.table.rt1305_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3072, i32 0, i32 0, i32 1024, i32 2048], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [161 x i64] [i64 159, i64 32, i64 0, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 16, i64 17, i64 18, i64 20, i64 22, i64 23, i64 24, i64 32, i64 34, i64 36, i64 38, i64 40, i64 42, i64 43, i64 45, i64 46, i64 47, i64 50, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 66, i64 70, i64 71, i64 75, i64 76, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 88, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 122, i64 124, i64 126, i64 128, i64 129, i64 130, i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159, i64 160, i64 176, i64 177, i64 178, i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207, i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223, i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239, i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247, i64 248, i64 249, i64 250, i64 251]
@__sancov_gen_cov_switch_values.101 = internal global [35 x i64] [i64 33, i64 32, i64 0, i64 34, i64 36, i64 38, i64 59, i64 63, i64 64, i64 66, i64 76, i64 79, i64 81, i64 83, i64 96, i64 122, i64 124, i64 126, i64 128, i64 130, i64 144, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 176, i64 177]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"rt1305_i2c_driver\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1165, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1167, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"rt1305_of_match\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 969, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"rt1305_i2c_id\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 986, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"rt1305_regmap\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 952, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1134, i32 19 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1137, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1144, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [25 x i8] c"soc_component_dev_rt1305\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 934, i32 46 }
@___asan_gen_.156 = private unnamed_addr constant [11 x i8] c"rt1305_dai\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 920, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant [11 x i8] c"rt1305_reg\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 87, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant [14 x i8] c"rt1305_ranges\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 39, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 41, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1043, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1065, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1066, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1071, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1082, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1083, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1088, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1103, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c"rt1305_snd_controls\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 398, i32 38 }
@___asan_gen_.213 = private unnamed_addr constant [19 x i8] c"rt1305_dapm_routes\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 557, i32 40 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 399, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [12 x i8] c"dac_vol_tlv\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 381, i32 14 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 403, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [23 x i8] c"rt1305_rx_data_ch_enum\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 390, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant [25 x i8] c"rt1305_rx_data_ch_select\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 383, i32 27 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 384, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 385, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 386, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 387, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 469, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 471, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 473, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 475, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 477, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 479, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 481, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 483, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 485, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 487, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 491, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 493, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 495, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 497, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 499, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 501, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 503, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 505, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 507, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 509, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 511, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 513, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 515, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 517, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 521, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 523, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 525, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 527, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 529, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 531, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 533, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 538, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 541, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 543, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 545, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 546, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [17 x i8] c"rt1305_sto_dac_l\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 460, i32 38 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 547, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"rt1305_sto_dac_r\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 464, i32 38 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 550, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 553, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 554, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [20 x i8] c"rt1305_dapm_widgets\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 468, i32 41 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 461, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [10 x i8] c"init_list\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 53, i32 34 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 778, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 786, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 805, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 838, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 844, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 848, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 922, i32 11 }
@___asan_gen_.420 = private unnamed_addr constant [19 x i8] c"rt1305_aif_dai_ops\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 915, i32 37 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 749, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 636, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 645, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 653, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 656, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.457 = private constant [29 x i8] c"../sound/soc/codecs/rt1305.c\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 685, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant [30 x i8] c"switch.table.rt1305_hw_params\00", align 1
@llvm.compiler.used = appending global [140 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_rt1305_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_rt1305__303_1179_rt1305_i2c_driver_init6, ptr @rt1305_calibrate._entry, ptr @rt1305_calibrate._entry.15, ptr @rt1305_calibrate._entry.20, ptr @rt1305_calibrate._entry.24, ptr @rt1305_calibrate._entry_ptr, ptr @rt1305_calibrate._entry_ptr.17, ptr @rt1305_calibrate._entry_ptr.22, ptr @rt1305_calibrate._entry_ptr.26, ptr @rt1305_hw_params._entry, ptr @rt1305_hw_params._entry.94, ptr @rt1305_hw_params._entry.99, ptr @rt1305_hw_params._entry_ptr, ptr @rt1305_hw_params._entry_ptr.100, ptr @rt1305_hw_params._entry_ptr.96, ptr @rt1305_i2c_driver_exit, ptr @rt1305_i2c_probe._entry, ptr @rt1305_i2c_probe._entry.7, ptr @rt1305_i2c_probe._entry_ptr, ptr @rt1305_i2c_probe._entry_ptr.9, ptr @rt1305_set_component_pll._entry, ptr @rt1305_set_component_pll._entry.84, ptr @rt1305_set_component_pll._entry_ptr, ptr @rt1305_set_component_pll._entry_ptr.86, ptr @rt1305_set_component_sysclk._entry, ptr @rt1305_set_component_sysclk._entry_ptr, ptr @rt1305_set_dai_fmt._entry, ptr @rt1305_set_dai_fmt._entry_ptr, ptr @rt1305_i2c_driver, ptr @.str, ptr @rt1305_of_match, ptr @rt1305_i2c_id, ptr @rt1305_i2c_probe._key, ptr @rt1305_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @soc_component_dev_rt1305, ptr @rt1305_dai, ptr @rt1305_reg, ptr @rt1305_ranges, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @rt1305_snd_controls, ptr @rt1305_dapm_routes, ptr @.str.27, ptr @dac_vol_tlv, ptr @.compoundliteral, ptr @.str.28, ptr @rt1305_rx_data_ch_enum, ptr @rt1305_rx_data_ch_select, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @rt1305_sto_dac_l, ptr @.str.70, ptr @rt1305_sto_dac_r, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @rt1305_dapm_widgets, ptr @.str.75, ptr @.compoundliteral.76, ptr @.compoundliteral.77, ptr @init_list, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @rt1305_aif_dai_ops, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @switch.table.rt1305_hw_params], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_rt1305 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_reg to i32), i32 1232, i32 1536, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_calibrate._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_calibrate._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_calibrate._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_snd_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_dapm_routes to i32), i32 2080, i32 2592, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_rx_data_ch_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_rx_data_ch_select to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_sto_dac_l to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_sto_dac_r to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_dapm_widgets to i32), i32 7200, i32 8992, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_list to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_set_component_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_set_component_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_set_component_pll._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_aif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_hw_params._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1305_hw_params._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt1305_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1305_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt1305_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt1305_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @rt1305_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1305_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !250
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt1305_regmap, ptr noundef nonnull @rt1305_i2c_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.rt1305_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %3) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = call i32 @regmap_read(ptr noundef %call1, i32 noundef 126, ptr noundef nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25169, i32 %5)
  %cmp11.not = icmp eq i32 %5, 25169
  br i1 %cmp11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %5) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i36 = call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef 0) #8
  call fastcc void @rt1305_calibrate(ptr noundef nonnull %call.i)
  %call20 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_rt1305, ptr noundef nonnull @rt1305_dai, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end15, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ -19, %do.end15 ], [ %call20, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt1305_i2c_shutdown(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.rt1305_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt1305_calibrate(ptr noundef readonly %rt1305) unnamed_addr #2 align 64 {
entry:
  %valmsb = alloca i32, align 4
  %vallsb = alloca i32, align 4
  %rh = alloca i32, align 4
  %rl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %valmsb) #8
  %0 = ptrtoint ptr %valmsb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %valmsb, align 4, !annotation !250
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vallsb) #8
  %1 = ptrtoint ptr %vallsb to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %vallsb, align 4, !annotation !250
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rh) #8
  %2 = ptrtoint ptr %rh to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rh, align 4, !annotation !250
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rl) #8
  %3 = ptrtoint ptr %rl to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rl, align 4, !annotation !250
  %regmap = getelementptr inbounds %struct.rt1305_priv, ptr %rt1305, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_bypass(ptr noundef %5, i1 noundef zeroext true) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef 0) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 24, i32 noundef 537) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 463, i32 noundef 21832) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 449, i32 noundef 800) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 63, i32 noundef 4096) #8
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 4, i32 noundef 1536) #8
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 60, i32 noundef 65488) #8
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 128, i32 noundef 128) #8
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 128, i32 noundef 2176) #8
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 58, i32 noundef 3582) #8
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 349, i32 noundef 1090) #8
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call22 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 8, i32 noundef 45056) #8
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 451, i32 noundef 54432) #8
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call26 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 460, i32 noundef 204) #8
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call28 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 449, i32 noundef 800) #8
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call30 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 57, i32 noundef 0) #8
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call32 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 59, i32 noundef 65535) #8
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call34 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 60, i32 noundef 64544) #8
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call36 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 262, i32 noundef 192) #8
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call38 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 60, i32 noundef 64672) #8
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call40 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 60, i32 noundef 64736) #8
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call42 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 60, i32 noundef 64752) #8
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call44 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 128, i32 noundef 128) #8
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call46 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 128, i32 noundef 2176) #8
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call48 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 128, i32 noundef 2176) #8
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call50 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 60, i32 noundef 64736) #8
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call52 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 60, i32 noundef 64672) #8
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call54 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 60, i32 noundef 64544) #8
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call56 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 262, i32 noundef 0) #8
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %call58 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 128, i32 noundef 0) #8
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call60 = call i32 @regmap_read(ptr noundef %67, i32 noundef 151, ptr noundef nonnull %valmsb) #8
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %call62 = call i32 @regmap_read(ptr noundef %69, i32 noundef 152, ptr noundef nonnull %vallsb) #8
  %70 = ptrtoint ptr %valmsb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %valmsb, align 4
  %shl = shl i32 %71, 16
  %72 = ptrtoint ptr %vallsb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vallsb, align 4
  %or = or i32 %shl, %73
  %74 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap, align 4
  %call64 = call i32 @regmap_read(ptr noundef %75, i32 noundef 153, ptr noundef nonnull %valmsb) #8
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call66 = call i32 @regmap_read(ptr noundef %77, i32 noundef 154, ptr noundef nonnull %vallsb) #8
  %78 = ptrtoint ptr %valmsb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %valmsb, align 4
  %shl67 = shl i32 %79, 16
  %80 = ptrtoint ptr %vallsb to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vallsb, align 4
  %or68 = or i32 %shl67, %81
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %or, i32 noundef %or68) #11
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %call71 = call i32 @regmap_write(ptr noundef %83, i32 noundef 349, i32 noundef 38210) #8
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call73 = call i32 @regmap_write(ptr noundef %85, i32 noundef 60, i32 noundef 64752) #8
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call75 = call i32 @regmap_write(ptr noundef %87, i32 noundef 59, i32 noundef 65535) #8
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 4
  %call77 = call i32 @regmap_write(ptr noundef %89, i32 noundef 58, i32 noundef 7678) #8
  %90 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap, align 4
  %call79 = call i32 @regmap_write(ptr noundef %91, i32 noundef 96, i32 noundef 3603) #8
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 4
  %call81 = call i32 @regmap_write(ptr noundef %93, i32 noundef 4, i32 noundef 1616) #8
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %call83 = call i32 @regmap_write(ptr noundef %95, i32 noundef 336, i32 noundef 100) #8
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 4
  %call85 = call i32 @regmap_write(ptr noundef %97, i32 noundef 337, i32 noundef 1904) #8
  %98 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap, align 4
  %call87 = call i32 @regmap_write(ptr noundef %99, i32 noundef 338, i32 noundef 49932) #8
  %100 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap, align 4
  %call89 = call i32 @regmap_write(ptr noundef %101, i32 noundef 80, i32 noundef 33280) #8
  %102 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap, align 4
  %call91 = call i32 @regmap_write(ptr noundef %103, i32 noundef 468, i32 noundef 64256) #8
  %104 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap, align 4
  %call93 = call i32 @regmap_write(ptr noundef %105, i32 noundef 468, i32 noundef 65408) #8
  call void @msleep(i32 noundef 2000) #8
  %106 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap, align 4
  %call95 = call i32 @regmap_read(ptr noundef %107, i32 noundef 341, ptr noundef nonnull %rh) #8
  %108 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap, align 4
  %call97 = call i32 @regmap_read(ptr noundef %109, i32 noundef 342, ptr noundef nonnull %rl) #8
  %110 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rh, align 4
  %shl98 = shl i32 %111, 16
  %112 = ptrtoint ptr %rl to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rl, align 4
  %or99 = or i32 %shl98, %113
  %mul = mul i32 %or99, 10
  %div896 = lshr i32 %mul, 25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1305_calibrate.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1305_calibrate, %if.then)) #8
          to label %do.end109 [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rh, align 4
  %116 = ptrtoint ptr %rl to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rl, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rt1305_calibrate.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.14, i32 noundef %or99, i32 noundef %115, i32 noundef %117) #8
  br label %do.end109

do.end109:                                        ; preds = %if.then, %entry
  %div111 = udiv i32 %mul, 335544320
  %rem.lhs.trunc = trunc i32 %div896 to i8
  %rem986 = urem i8 %rem.lhs.trunc, 10
  %rem.zext = zext i8 %rem986 to i32
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %div111, i32 noundef %rem.zext) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or99)
  %cmp.not = icmp eq i32 %or99, 0
  br i1 %cmp.not, label %do.end109.do.body309_crit_edge, label %if.else302

do.end109.do.body309_crit_edge:                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body309

if.else302:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #10
  %118 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %or99, i64 562949953421312) #12, !srcloc !252
  %asmresult1.i = extractvalue { i64, i64 } %118, 1
  br label %do.body309

do.body309:                                       ; preds = %if.else302, %do.end109.do.body309_crit_edge
  %r0l.0 = phi i64 [ 562949953421312, %do.end109.do.body309_crit_edge ], [ %asmresult1.i, %if.else302 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1305_calibrate.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1305_calibrate, %if.then321)) #8
          to label %do.end324 [label %if.then321], !srcloc !251

if.then321:                                       ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rt1305_calibrate.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.18, i64 noundef %r0l.0) #8
  br label %do.end324

do.end324:                                        ; preds = %if.then321, %do.body309
  %119 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap, align 4
  %call326 = call i32 @regmap_write(ptr noundef %120, i32 noundef 80, i32 noundef 37376) #8
  %121 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap, align 4
  %call328 = call i32 @regmap_write(ptr noundef %122, i32 noundef 468, i32 noundef 64256) #8
  %123 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap, align 4
  %call330 = call i32 @regmap_write(ptr noundef %124, i32 noundef 468, i32 noundef 65408) #8
  call void @msleep(i32 noundef 2000) #8
  %125 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap, align 4
  %call332 = call i32 @regmap_read(ptr noundef %126, i32 noundef 341, ptr noundef nonnull %rh) #8
  %127 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regmap, align 4
  %call334 = call i32 @regmap_read(ptr noundef %128, i32 noundef 342, ptr noundef nonnull %rl) #8
  %129 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rh, align 4
  %shl335 = shl i32 %130, 16
  %131 = ptrtoint ptr %rl to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rl, align 4
  %or336 = or i32 %shl335, %132
  %mul337 = mul i32 %or336, 10
  %div338897 = lshr i32 %mul337, 25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1305_calibrate.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1305_calibrate, %if.then351)) #8
          to label %do.end357 [label %if.then351], !srcloc !251

if.then351:                                       ; preds = %do.end324
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rh, align 4
  %135 = ptrtoint ptr %rl to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rl, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rt1305_calibrate.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.19, i32 noundef %or336, i32 noundef %134, i32 noundef %136) #8
  br label %do.end357

do.end357:                                        ; preds = %if.then351, %do.end324
  %div359 = udiv i32 %mul337, 335544320
  %rem360.lhs.trunc = trunc i32 %div338897 to i8
  %rem360987 = urem i8 %rem360.lhs.trunc, 10
  %rem360.zext = zext i8 %rem360987 to i32
  %call361 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %div359, i32 noundef %rem360.zext) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or336)
  %cmp362.not = icmp eq i32 %or336, 0
  br i1 %cmp362.not, label %do.end357.do.body587_crit_edge, label %if.else580

do.end357.do.body587_crit_edge:                   ; preds = %do.end357
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body587

if.else580:                                       ; preds = %do.end357
  call void @__sanitizer_cov_trace_pc() #10
  %137 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %or336, i64 562949953421312) #12, !srcloc !252
  %asmresult1.i932 = extractvalue { i64, i64 } %137, 1
  br label %do.body587

do.body587:                                       ; preds = %if.else580, %do.end357.do.body587_crit_edge
  %r0r.0 = phi i64 [ 562949953421312, %do.end357.do.body587_crit_edge ], [ %asmresult1.i932, %if.else580 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1305_calibrate.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1305_calibrate, %if.then599)) #8
          to label %do.end602 [label %if.then599], !srcloc !251

if.then599:                                       ; preds = %do.body587
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rt1305_calibrate.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.23, i64 noundef %r0r.0) #8
  br label %do.end602

do.end602:                                        ; preds = %if.then599, %do.body587
  %138 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap, align 4
  %call604 = call i32 @regmap_write(ptr noundef %139, i32 noundef 80, i32 noundef 49900) #8
  %140 = add i64 %r0l.0, -3050403
  call void @__sanitizer_cov_trace_const_cmp8(i64 3660483, i64 %140)
  %141 = icmp ult i64 %140, 3660483
  %142 = add i64 %r0r.0, -3050403
  call void @__sanitizer_cov_trace_const_cmp8(i64 3660483, i64 %142)
  %143 = icmp ult i64 %142, 3660483
  %or.cond = select i1 %141, i1 %143, i1 false
  br i1 %or.cond, label %if.then616, label %do.end639

if.then616:                                       ; preds = %do.end602
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regmap, align 4
  %146 = trunc i64 %r0l.0 to i32
  %147 = lshr i32 %146, 16
  %call621 = call i32 @regmap_write(ptr noundef %145, i32 noundef 334, i32 noundef %147) #8
  %148 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regmap, align 4
  %conv624 = and i32 %146, 65535
  %call625 = call i32 @regmap_write(ptr noundef %149, i32 noundef 335, i32 noundef %conv624) #8
  %150 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regmap, align 4
  %152 = trunc i64 %r0r.0 to i32
  %153 = lshr i32 %152, 16
  %conv630 = or i32 %153, 63488
  %call631 = call i32 @regmap_write(ptr noundef %151, i32 noundef 510, i32 noundef %conv630) #8
  %154 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap, align 4
  %conv634 = and i32 %152, 65535
  %call635 = call i32 @regmap_write(ptr noundef %155, i32 noundef 509, i32 noundef %conv634) #8
  br label %if.end642

do.end639:                                        ; preds = %do.end602
  call void @__sanitizer_cov_trace_pc() #10
  %call641 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  br label %if.end642

if.end642:                                        ; preds = %do.end639, %if.then616
  %156 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regmap, align 4
  %call644 = call i32 @regmap_write(ptr noundef %157, i32 noundef 58, i32 noundef 3582) #8
  call void @usleep_range_state(i32 noundef 200000, i32 noundef 400000, i32 noundef 2) #8
  %158 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regmap, align 4
  %call646 = call i32 @regmap_write(ptr noundef %159, i32 noundef 349, i32 noundef 1090) #8
  %160 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regmap, align 4
  %call648 = call i32 @regmap_write(ptr noundef %161, i32 noundef 63, i32 noundef 12288) #8
  %162 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regmap, align 4
  %call650 = call i32 @regmap_write(ptr noundef %163, i32 noundef 4, i32 noundef 1024) #8
  %164 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regmap, align 4
  %call652 = call i32 @regmap_write(ptr noundef %165, i32 noundef 58, i32 noundef 0) #8
  %166 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regmap, align 4
  %call654 = call i32 @regmap_write(ptr noundef %167, i32 noundef 8, i32 noundef 32768) #8
  %168 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regmap, align 4
  %call656 = call i32 @regmap_write(ptr noundef %169, i32 noundef 59, i32 noundef 4128) #8
  %170 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regmap, align 4
  %call658 = call i32 @regmap_write(ptr noundef %171, i32 noundef 60, i32 noundef 0) #8
  %172 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_bypass(ptr noundef %173, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rh) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vallsb) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %valmsb) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt1305_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %0)
  %1 = icmp eq i32 %0, 256
  br i1 %1, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %entry
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %for.end.cleanup_crit_edge
    i32 16, label %for.end.cleanup_crit_edge17
    i32 17, label %for.end.cleanup_crit_edge18
    i32 18, label %for.end.cleanup_crit_edge19
    i32 20, label %for.end.cleanup_crit_edge20
    i32 22, label %for.end.cleanup_crit_edge21
    i32 23, label %for.end.cleanup_crit_edge22
    i32 24, label %for.end.cleanup_crit_edge23
    i32 32, label %for.end.cleanup_crit_edge24
    i32 34, label %for.end.cleanup_crit_edge25
    i32 36, label %for.end.cleanup_crit_edge26
    i32 38, label %for.end.cleanup_crit_edge27
    i32 40, label %for.end.cleanup_crit_edge28
    i32 42, label %for.end.cleanup_crit_edge29
    i32 43, label %for.end.cleanup_crit_edge30
    i32 45, label %for.end.cleanup_crit_edge31
    i32 46, label %for.end.cleanup_crit_edge32
    i32 47, label %for.end.cleanup_crit_edge33
    i32 50, label %for.end.cleanup_crit_edge34
    i32 57, label %for.end.cleanup_crit_edge35
    i32 58, label %for.end.cleanup_crit_edge36
    i32 59, label %for.end.cleanup_crit_edge37
    i32 60, label %for.end.cleanup_crit_edge38
    i32 61, label %for.end.cleanup_crit_edge39
    i32 62, label %for.end.cleanup_crit_edge40
    i32 63, label %for.end.cleanup_crit_edge41
    i32 64, label %for.end.cleanup_crit_edge42
    i32 66, label %for.end.cleanup_crit_edge43
    i32 70, label %for.end.cleanup_crit_edge44
    i32 71, label %for.end.cleanup_crit_edge45
    i32 75, label %for.end.cleanup_crit_edge46
    i32 76, label %for.end.cleanup_crit_edge47
    i32 79, label %for.end.cleanup_crit_edge48
    i32 80, label %for.end.cleanup_crit_edge49
    i32 81, label %for.end.cleanup_crit_edge50
    i32 82, label %for.end.cleanup_crit_edge51
    i32 83, label %for.end.cleanup_crit_edge52
    i32 84, label %for.end.cleanup_crit_edge53
    i32 88, label %for.end.cleanup_crit_edge54
    i32 94, label %for.end.cleanup_crit_edge55
    i32 95, label %for.end.cleanup_crit_edge56
    i32 122, label %for.end.cleanup_crit_edge57
    i32 124, label %for.end.cleanup_crit_edge58
    i32 126, label %for.end.cleanup_crit_edge59
    i32 128, label %for.end.cleanup_crit_edge60
    i32 129, label %for.end.cleanup_crit_edge61
    i32 130, label %for.end.cleanup_crit_edge62
    i32 144, label %for.end.cleanup_crit_edge63
    i32 145, label %for.end.cleanup_crit_edge64
    i32 146, label %for.end.cleanup_crit_edge65
    i32 176, label %for.end.cleanup_crit_edge66
    i32 177, label %for.end.cleanup_crit_edge67
    i32 178, label %for.end.cleanup_crit_edge68
    i32 192, label %for.end.cleanup_crit_edge69
    i32 193, label %for.end.cleanup_crit_edge70
    i32 194, label %for.end.cleanup_crit_edge71
    i32 195, label %for.end.cleanup_crit_edge72
    i32 196, label %for.end.cleanup_crit_edge73
    i32 197, label %for.end.cleanup_crit_edge74
    i32 198, label %for.end.cleanup_crit_edge75
    i32 199, label %for.end.cleanup_crit_edge76
    i32 200, label %for.end.cleanup_crit_edge77
    i32 201, label %for.end.cleanup_crit_edge78
    i32 202, label %for.end.cleanup_crit_edge79
    i32 203, label %for.end.cleanup_crit_edge80
    i32 204, label %for.end.cleanup_crit_edge81
    i32 205, label %for.end.cleanup_crit_edge82
    i32 206, label %for.end.cleanup_crit_edge83
    i32 207, label %for.end.cleanup_crit_edge84
    i32 208, label %for.end.cleanup_crit_edge85
    i32 209, label %for.end.cleanup_crit_edge86
    i32 210, label %for.end.cleanup_crit_edge87
    i32 211, label %for.end.cleanup_crit_edge88
    i32 212, label %for.end.cleanup_crit_edge89
    i32 213, label %for.end.cleanup_crit_edge90
    i32 214, label %for.end.cleanup_crit_edge91
    i32 215, label %for.end.cleanup_crit_edge92
    i32 216, label %for.end.cleanup_crit_edge93
    i32 217, label %for.end.cleanup_crit_edge94
    i32 218, label %for.end.cleanup_crit_edge95
    i32 219, label %for.end.cleanup_crit_edge96
    i32 220, label %for.end.cleanup_crit_edge97
    i32 221, label %for.end.cleanup_crit_edge98
    i32 222, label %for.end.cleanup_crit_edge99
    i32 223, label %for.end.cleanup_crit_edge100
    i32 224, label %for.end.cleanup_crit_edge101
    i32 225, label %for.end.cleanup_crit_edge102
    i32 226, label %for.end.cleanup_crit_edge103
    i32 227, label %for.end.cleanup_crit_edge104
    i32 228, label %for.end.cleanup_crit_edge105
    i32 229, label %for.end.cleanup_crit_edge106
    i32 230, label %for.end.cleanup_crit_edge107
    i32 231, label %for.end.cleanup_crit_edge108
    i32 232, label %for.end.cleanup_crit_edge109
    i32 233, label %for.end.cleanup_crit_edge110
    i32 234, label %for.end.cleanup_crit_edge111
    i32 235, label %for.end.cleanup_crit_edge112
    i32 236, label %for.end.cleanup_crit_edge113
    i32 237, label %for.end.cleanup_crit_edge114
    i32 238, label %for.end.cleanup_crit_edge115
    i32 239, label %for.end.cleanup_crit_edge116
    i32 240, label %for.end.cleanup_crit_edge117
    i32 241, label %for.end.cleanup_crit_edge118
    i32 242, label %for.end.cleanup_crit_edge119
    i32 243, label %for.end.cleanup_crit_edge120
    i32 244, label %for.end.cleanup_crit_edge121
    i32 245, label %for.end.cleanup_crit_edge122
    i32 246, label %for.end.cleanup_crit_edge123
    i32 247, label %for.end.cleanup_crit_edge124
    i32 248, label %for.end.cleanup_crit_edge125
    i32 249, label %for.end.cleanup_crit_edge126
    i32 250, label %for.end.cleanup_crit_edge127
    i32 251, label %for.end.cleanup_crit_edge128
    i32 147, label %for.end.cleanup_crit_edge129
    i32 148, label %for.end.cleanup_crit_edge130
    i32 149, label %for.end.cleanup_crit_edge131
    i32 150, label %for.end.cleanup_crit_edge132
    i32 151, label %for.end.cleanup_crit_edge133
    i32 152, label %for.end.cleanup_crit_edge134
    i32 153, label %for.end.cleanup_crit_edge135
    i32 154, label %for.end.cleanup_crit_edge136
    i32 155, label %for.end.cleanup_crit_edge137
    i32 156, label %for.end.cleanup_crit_edge138
    i32 157, label %for.end.cleanup_crit_edge139
    i32 158, label %for.end.cleanup_crit_edge140
    i32 159, label %for.end.cleanup_crit_edge141
    i32 160, label %for.end.cleanup_crit_edge142
    i32 96, label %for.end.cleanup_crit_edge143
    i32 97, label %for.end.cleanup_crit_edge144
    i32 98, label %for.end.cleanup_crit_edge145
    i32 99, label %for.end.cleanup_crit_edge146
    i32 100, label %for.end.cleanup_crit_edge147
    i32 101, label %for.end.cleanup_crit_edge148
    i32 102, label %for.end.cleanup_crit_edge149
    i32 103, label %for.end.cleanup_crit_edge150
    i32 104, label %for.end.cleanup_crit_edge151
    i32 105, label %for.end.cleanup_crit_edge152
    i32 106, label %for.end.cleanup_crit_edge153
    i32 107, label %for.end.cleanup_crit_edge154
    i32 108, label %for.end.cleanup_crit_edge155
    i32 109, label %for.end.cleanup_crit_edge156
    i32 110, label %for.end.cleanup_crit_edge157
    i32 111, label %for.end.cleanup_crit_edge158
    i32 112, label %for.end.cleanup_crit_edge159
    i32 113, label %for.end.cleanup_crit_edge160
    i32 114, label %for.end.cleanup_crit_edge161
    i32 115, label %for.end.cleanup_crit_edge162
    i32 116, label %for.end.cleanup_crit_edge163
    i32 117, label %for.end.cleanup_crit_edge164
    i32 118, label %for.end.cleanup_crit_edge165
    i32 10, label %for.end.cleanup_crit_edge166
    i32 11, label %for.end.cleanup_crit_edge167
    i32 12, label %for.end.cleanup_crit_edge168
    i32 13, label %for.end.cleanup_crit_edge169
    i32 4, label %for.end.cleanup_crit_edge170
    i32 5, label %for.end.cleanup_crit_edge171
    i32 6, label %for.end.cleanup_crit_edge172
    i32 7, label %for.end.cleanup_crit_edge173
    i32 8, label %for.end.cleanup_crit_edge174
  ]

for.end.cleanup_crit_edge174:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge173:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge172:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge171:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge170:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge169:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge168:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge167:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge166:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge165:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge164:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge163:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge162:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge161:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge160:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge159:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge158:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge157:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge156:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge155:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge154:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge153:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge152:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge151:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge150:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge149:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge148:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge147:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge146:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge145:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge144:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge143:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge142:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge141:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge140:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge139:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge138:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge137:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge136:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge135:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge134:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge133:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge132:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge131:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge130:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge129:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge128:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge127:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge126:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge125:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge124:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge123:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge122:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge121:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge120:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge119:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge118:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge117:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge116:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge115:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge114:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge113:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge112:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge111:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge110:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge109:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge108:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge107:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge106:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge105:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge104:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge103:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge102:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge101:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge100:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge99:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge98:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge97:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge96:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge95:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge94:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge93:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge92:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge91:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge90:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge89:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge88:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge87:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge86:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge85:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge84:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge83:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge82:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge81:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge80:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge79:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge78:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge77:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge76:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge75:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge74:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge73:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge72:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge71:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge70:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge69:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge68:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge67:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge66:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge65:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge64:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge63:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge62:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge61:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge60:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge59:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge58:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge57:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge56:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge55:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge54:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge53:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge52:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge51:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge50:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge49:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge48:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge47:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge46:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge45:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge44:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge43:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge42:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge41:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge40:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge39:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge38:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge37:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge36:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge35:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge34:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge33:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge32:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge31:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge30:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge29:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge28:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge27:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge26:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge25:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge24:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge23:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge22:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge21:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge20:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge19:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge18:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge17:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge17, %for.end.cleanup_crit_edge18, %for.end.cleanup_crit_edge19, %for.end.cleanup_crit_edge20, %for.end.cleanup_crit_edge21, %for.end.cleanup_crit_edge22, %for.end.cleanup_crit_edge23, %for.end.cleanup_crit_edge24, %for.end.cleanup_crit_edge25, %for.end.cleanup_crit_edge26, %for.end.cleanup_crit_edge27, %for.end.cleanup_crit_edge28, %for.end.cleanup_crit_edge29, %for.end.cleanup_crit_edge30, %for.end.cleanup_crit_edge31, %for.end.cleanup_crit_edge32, %for.end.cleanup_crit_edge33, %for.end.cleanup_crit_edge34, %for.end.cleanup_crit_edge35, %for.end.cleanup_crit_edge36, %for.end.cleanup_crit_edge37, %for.end.cleanup_crit_edge38, %for.end.cleanup_crit_edge39, %for.end.cleanup_crit_edge40, %for.end.cleanup_crit_edge41, %for.end.cleanup_crit_edge42, %for.end.cleanup_crit_edge43, %for.end.cleanup_crit_edge44, %for.end.cleanup_crit_edge45, %for.end.cleanup_crit_edge46, %for.end.cleanup_crit_edge47, %for.end.cleanup_crit_edge48, %for.end.cleanup_crit_edge49, %for.end.cleanup_crit_edge50, %for.end.cleanup_crit_edge51, %for.end.cleanup_crit_edge52, %for.end.cleanup_crit_edge53, %for.end.cleanup_crit_edge54, %for.end.cleanup_crit_edge55, %for.end.cleanup_crit_edge56, %for.end.cleanup_crit_edge57, %for.end.cleanup_crit_edge58, %for.end.cleanup_crit_edge59, %for.end.cleanup_crit_edge60, %for.end.cleanup_crit_edge61, %for.end.cleanup_crit_edge62, %for.end.cleanup_crit_edge63, %for.end.cleanup_crit_edge64, %for.end.cleanup_crit_edge65, %for.end.cleanup_crit_edge66, %for.end.cleanup_crit_edge67, %for.end.cleanup_crit_edge68, %for.end.cleanup_crit_edge69, %for.end.cleanup_crit_edge70, %for.end.cleanup_crit_edge71, %for.end.cleanup_crit_edge72, %for.end.cleanup_crit_edge73, %for.end.cleanup_crit_edge74, %for.end.cleanup_crit_edge75, %for.end.cleanup_crit_edge76, %for.end.cleanup_crit_edge77, %for.end.cleanup_crit_edge78, %for.end.cleanup_crit_edge79, %for.end.cleanup_crit_edge80, %for.end.cleanup_crit_edge81, %for.end.cleanup_crit_edge82, %for.end.cleanup_crit_edge83, %for.end.cleanup_crit_edge84, %for.end.cleanup_crit_edge85, %for.end.cleanup_crit_edge86, %for.end.cleanup_crit_edge87, %for.end.cleanup_crit_edge88, %for.end.cleanup_crit_edge89, %for.end.cleanup_crit_edge90, %for.end.cleanup_crit_edge91, %for.end.cleanup_crit_edge92, %for.end.cleanup_crit_edge93, %for.end.cleanup_crit_edge94, %for.end.cleanup_crit_edge95, %for.end.cleanup_crit_edge96, %for.end.cleanup_crit_edge97, %for.end.cleanup_crit_edge98, %for.end.cleanup_crit_edge99, %for.end.cleanup_crit_edge100, %for.end.cleanup_crit_edge101, %for.end.cleanup_crit_edge102, %for.end.cleanup_crit_edge103, %for.end.cleanup_crit_edge104, %for.end.cleanup_crit_edge105, %for.end.cleanup_crit_edge106, %for.end.cleanup_crit_edge107, %for.end.cleanup_crit_edge108, %for.end.cleanup_crit_edge109, %for.end.cleanup_crit_edge110, %for.end.cleanup_crit_edge111, %for.end.cleanup_crit_edge112, %for.end.cleanup_crit_edge113, %for.end.cleanup_crit_edge114, %for.end.cleanup_crit_edge115, %for.end.cleanup_crit_edge116, %for.end.cleanup_crit_edge117, %for.end.cleanup_crit_edge118, %for.end.cleanup_crit_edge119, %for.end.cleanup_crit_edge120, %for.end.cleanup_crit_edge121, %for.end.cleanup_crit_edge122, %for.end.cleanup_crit_edge123, %for.end.cleanup_crit_edge124, %for.end.cleanup_crit_edge125, %for.end.cleanup_crit_edge126, %for.end.cleanup_crit_edge127, %for.end.cleanup_crit_edge128, %for.end.cleanup_crit_edge129, %for.end.cleanup_crit_edge130, %for.end.cleanup_crit_edge131, %for.end.cleanup_crit_edge132, %for.end.cleanup_crit_edge133, %for.end.cleanup_crit_edge134, %for.end.cleanup_crit_edge135, %for.end.cleanup_crit_edge136, %for.end.cleanup_crit_edge137, %for.end.cleanup_crit_edge138, %for.end.cleanup_crit_edge139, %for.end.cleanup_crit_edge140, %for.end.cleanup_crit_edge141, %for.end.cleanup_crit_edge142, %for.end.cleanup_crit_edge143, %for.end.cleanup_crit_edge144, %for.end.cleanup_crit_edge145, %for.end.cleanup_crit_edge146, %for.end.cleanup_crit_edge147, %for.end.cleanup_crit_edge148, %for.end.cleanup_crit_edge149, %for.end.cleanup_crit_edge150, %for.end.cleanup_crit_edge151, %for.end.cleanup_crit_edge152, %for.end.cleanup_crit_edge153, %for.end.cleanup_crit_edge154, %for.end.cleanup_crit_edge155, %for.end.cleanup_crit_edge156, %for.end.cleanup_crit_edge157, %for.end.cleanup_crit_edge158, %for.end.cleanup_crit_edge159, %for.end.cleanup_crit_edge160, %for.end.cleanup_crit_edge161, %for.end.cleanup_crit_edge162, %for.end.cleanup_crit_edge163, %for.end.cleanup_crit_edge164, %for.end.cleanup_crit_edge165, %for.end.cleanup_crit_edge166, %for.end.cleanup_crit_edge167, %for.end.cleanup_crit_edge168, %for.end.cleanup_crit_edge169, %for.end.cleanup_crit_edge170, %for.end.cleanup_crit_edge171, %for.end.cleanup_crit_edge172, %for.end.cleanup_crit_edge173, %for.end.cleanup_crit_edge174, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge17 ], [ true, %for.end.cleanup_crit_edge18 ], [ true, %for.end.cleanup_crit_edge19 ], [ true, %for.end.cleanup_crit_edge20 ], [ true, %for.end.cleanup_crit_edge21 ], [ true, %for.end.cleanup_crit_edge22 ], [ true, %for.end.cleanup_crit_edge23 ], [ true, %for.end.cleanup_crit_edge24 ], [ true, %for.end.cleanup_crit_edge25 ], [ true, %for.end.cleanup_crit_edge26 ], [ true, %for.end.cleanup_crit_edge27 ], [ true, %for.end.cleanup_crit_edge28 ], [ true, %for.end.cleanup_crit_edge29 ], [ true, %for.end.cleanup_crit_edge30 ], [ true, %for.end.cleanup_crit_edge31 ], [ true, %for.end.cleanup_crit_edge32 ], [ true, %for.end.cleanup_crit_edge33 ], [ true, %for.end.cleanup_crit_edge34 ], [ true, %for.end.cleanup_crit_edge35 ], [ true, %for.end.cleanup_crit_edge36 ], [ true, %for.end.cleanup_crit_edge37 ], [ true, %for.end.cleanup_crit_edge38 ], [ true, %for.end.cleanup_crit_edge39 ], [ true, %for.end.cleanup_crit_edge40 ], [ true, %for.end.cleanup_crit_edge41 ], [ true, %for.end.cleanup_crit_edge42 ], [ true, %for.end.cleanup_crit_edge43 ], [ true, %for.end.cleanup_crit_edge44 ], [ true, %for.end.cleanup_crit_edge45 ], [ true, %for.end.cleanup_crit_edge46 ], [ true, %for.end.cleanup_crit_edge47 ], [ true, %for.end.cleanup_crit_edge48 ], [ true, %for.end.cleanup_crit_edge49 ], [ true, %for.end.cleanup_crit_edge50 ], [ true, %for.end.cleanup_crit_edge51 ], [ true, %for.end.cleanup_crit_edge52 ], [ true, %for.end.cleanup_crit_edge53 ], [ true, %for.end.cleanup_crit_edge54 ], [ true, %for.end.cleanup_crit_edge55 ], [ true, %for.end.cleanup_crit_edge56 ], [ true, %for.end.cleanup_crit_edge57 ], [ true, %for.end.cleanup_crit_edge58 ], [ true, %for.end.cleanup_crit_edge59 ], [ true, %for.end.cleanup_crit_edge60 ], [ true, %for.end.cleanup_crit_edge61 ], [ true, %for.end.cleanup_crit_edge62 ], [ true, %for.end.cleanup_crit_edge63 ], [ true, %for.end.cleanup_crit_edge64 ], [ true, %for.end.cleanup_crit_edge65 ], [ true, %for.end.cleanup_crit_edge66 ], [ true, %for.end.cleanup_crit_edge67 ], [ true, %for.end.cleanup_crit_edge68 ], [ true, %for.end.cleanup_crit_edge69 ], [ true, %for.end.cleanup_crit_edge70 ], [ true, %for.end.cleanup_crit_edge71 ], [ true, %for.end.cleanup_crit_edge72 ], [ true, %for.end.cleanup_crit_edge73 ], [ true, %for.end.cleanup_crit_edge74 ], [ true, %for.end.cleanup_crit_edge75 ], [ true, %for.end.cleanup_crit_edge76 ], [ true, %for.end.cleanup_crit_edge77 ], [ true, %for.end.cleanup_crit_edge78 ], [ true, %for.end.cleanup_crit_edge79 ], [ true, %for.end.cleanup_crit_edge80 ], [ true, %for.end.cleanup_crit_edge81 ], [ true, %for.end.cleanup_crit_edge82 ], [ true, %for.end.cleanup_crit_edge83 ], [ true, %for.end.cleanup_crit_edge84 ], [ true, %for.end.cleanup_crit_edge85 ], [ true, %for.end.cleanup_crit_edge86 ], [ true, %for.end.cleanup_crit_edge87 ], [ true, %for.end.cleanup_crit_edge88 ], [ true, %for.end.cleanup_crit_edge89 ], [ true, %for.end.cleanup_crit_edge90 ], [ true, %for.end.cleanup_crit_edge91 ], [ true, %for.end.cleanup_crit_edge92 ], [ true, %for.end.cleanup_crit_edge93 ], [ true, %for.end.cleanup_crit_edge94 ], [ true, %for.end.cleanup_crit_edge95 ], [ true, %for.end.cleanup_crit_edge96 ], [ true, %for.end.cleanup_crit_edge97 ], [ true, %for.end.cleanup_crit_edge98 ], [ true, %for.end.cleanup_crit_edge99 ], [ true, %for.end.cleanup_crit_edge100 ], [ true, %for.end.cleanup_crit_edge101 ], [ true, %for.end.cleanup_crit_edge102 ], [ true, %for.end.cleanup_crit_edge103 ], [ true, %for.end.cleanup_crit_edge104 ], [ true, %for.end.cleanup_crit_edge105 ], [ true, %for.end.cleanup_crit_edge106 ], [ true, %for.end.cleanup_crit_edge107 ], [ true, %for.end.cleanup_crit_edge108 ], [ true, %for.end.cleanup_crit_edge109 ], [ true, %for.end.cleanup_crit_edge110 ], [ true, %for.end.cleanup_crit_edge111 ], [ true, %for.end.cleanup_crit_edge112 ], [ true, %for.end.cleanup_crit_edge113 ], [ true, %for.end.cleanup_crit_edge114 ], [ true, %for.end.cleanup_crit_edge115 ], [ true, %for.end.cleanup_crit_edge116 ], [ true, %for.end.cleanup_crit_edge117 ], [ true, %for.end.cleanup_crit_edge118 ], [ true, %for.end.cleanup_crit_edge119 ], [ true, %for.end.cleanup_crit_edge120 ], [ true, %for.end.cleanup_crit_edge121 ], [ true, %for.end.cleanup_crit_edge122 ], [ true, %for.end.cleanup_crit_edge123 ], [ true, %for.end.cleanup_crit_edge124 ], [ true, %for.end.cleanup_crit_edge125 ], [ true, %for.end.cleanup_crit_edge126 ], [ true, %for.end.cleanup_crit_edge127 ], [ true, %for.end.cleanup_crit_edge128 ], [ true, %for.end.cleanup_crit_edge129 ], [ true, %for.end.cleanup_crit_edge130 ], [ true, %for.end.cleanup_crit_edge131 ], [ true, %for.end.cleanup_crit_edge132 ], [ true, %for.end.cleanup_crit_edge133 ], [ true, %for.end.cleanup_crit_edge134 ], [ true, %for.end.cleanup_crit_edge135 ], [ true, %for.end.cleanup_crit_edge136 ], [ true, %for.end.cleanup_crit_edge137 ], [ true, %for.end.cleanup_crit_edge138 ], [ true, %for.end.cleanup_crit_edge139 ], [ true, %for.end.cleanup_crit_edge140 ], [ true, %for.end.cleanup_crit_edge141 ], [ true, %for.end.cleanup_crit_edge142 ], [ true, %for.end.cleanup_crit_edge143 ], [ true, %for.end.cleanup_crit_edge144 ], [ true, %for.end.cleanup_crit_edge145 ], [ true, %for.end.cleanup_crit_edge146 ], [ true, %for.end.cleanup_crit_edge147 ], [ true, %for.end.cleanup_crit_edge148 ], [ true, %for.end.cleanup_crit_edge149 ], [ true, %for.end.cleanup_crit_edge150 ], [ true, %for.end.cleanup_crit_edge151 ], [ true, %for.end.cleanup_crit_edge152 ], [ true, %for.end.cleanup_crit_edge153 ], [ true, %for.end.cleanup_crit_edge154 ], [ true, %for.end.cleanup_crit_edge155 ], [ true, %for.end.cleanup_crit_edge156 ], [ true, %for.end.cleanup_crit_edge157 ], [ true, %for.end.cleanup_crit_edge158 ], [ true, %for.end.cleanup_crit_edge159 ], [ true, %for.end.cleanup_crit_edge160 ], [ true, %for.end.cleanup_crit_edge161 ], [ true, %for.end.cleanup_crit_edge162 ], [ true, %for.end.cleanup_crit_edge163 ], [ true, %for.end.cleanup_crit_edge164 ], [ true, %for.end.cleanup_crit_edge165 ], [ true, %for.end.cleanup_crit_edge166 ], [ true, %for.end.cleanup_crit_edge167 ], [ true, %for.end.cleanup_crit_edge168 ], [ true, %for.end.cleanup_crit_edge169 ], [ true, %for.end.cleanup_crit_edge170 ], [ true, %for.end.cleanup_crit_edge171 ], [ true, %for.end.cleanup_crit_edge172 ], [ true, %for.end.cleanup_crit_edge173 ], [ true, %for.end.cleanup_crit_edge174 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt1305_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %0)
  %1 = icmp eq i32 %0, 256
  br i1 %1, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %entry
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %reg, label %sw.default [
    i32 0, label %for.end.cleanup_crit_edge
    i32 34, label %for.end.cleanup_crit_edge9
    i32 36, label %for.end.cleanup_crit_edge10
    i32 38, label %for.end.cleanup_crit_edge11
    i32 59, label %for.end.cleanup_crit_edge12
    i32 63, label %for.end.cleanup_crit_edge13
    i32 64, label %for.end.cleanup_crit_edge14
    i32 66, label %for.end.cleanup_crit_edge15
    i32 76, label %for.end.cleanup_crit_edge16
    i32 79, label %for.end.cleanup_crit_edge17
    i32 81, label %for.end.cleanup_crit_edge18
    i32 83, label %for.end.cleanup_crit_edge19
    i32 96, label %for.end.cleanup_crit_edge20
    i32 122, label %for.end.cleanup_crit_edge21
    i32 124, label %for.end.cleanup_crit_edge22
    i32 126, label %for.end.cleanup_crit_edge23
    i32 128, label %for.end.cleanup_crit_edge24
    i32 130, label %for.end.cleanup_crit_edge25
    i32 144, label %for.end.cleanup_crit_edge26
    i32 146, label %for.end.cleanup_crit_edge27
    i32 147, label %for.end.cleanup_crit_edge28
    i32 148, label %for.end.cleanup_crit_edge29
    i32 149, label %for.end.cleanup_crit_edge30
    i32 150, label %for.end.cleanup_crit_edge31
    i32 151, label %for.end.cleanup_crit_edge32
    i32 152, label %for.end.cleanup_crit_edge33
    i32 153, label %for.end.cleanup_crit_edge34
    i32 154, label %for.end.cleanup_crit_edge35
    i32 155, label %for.end.cleanup_crit_edge36
    i32 156, label %for.end.cleanup_crit_edge37
    i32 157, label %for.end.cleanup_crit_edge38
    i32 176, label %for.end.cleanup_crit_edge39
    i32 177, label %for.end.cleanup_crit_edge40
  ]

for.end.cleanup_crit_edge40:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge39:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge38:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge37:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge36:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge35:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge34:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge33:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge32:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge31:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge30:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge29:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge28:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge27:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge26:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge25:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge24:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge23:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge22:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge21:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge20:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge19:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge18:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge17:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge16:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge15:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge14:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge13:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge12:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge11:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge10:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge9:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge9, %for.end.cleanup_crit_edge10, %for.end.cleanup_crit_edge11, %for.end.cleanup_crit_edge12, %for.end.cleanup_crit_edge13, %for.end.cleanup_crit_edge14, %for.end.cleanup_crit_edge15, %for.end.cleanup_crit_edge16, %for.end.cleanup_crit_edge17, %for.end.cleanup_crit_edge18, %for.end.cleanup_crit_edge19, %for.end.cleanup_crit_edge20, %for.end.cleanup_crit_edge21, %for.end.cleanup_crit_edge22, %for.end.cleanup_crit_edge23, %for.end.cleanup_crit_edge24, %for.end.cleanup_crit_edge25, %for.end.cleanup_crit_edge26, %for.end.cleanup_crit_edge27, %for.end.cleanup_crit_edge28, %for.end.cleanup_crit_edge29, %for.end.cleanup_crit_edge30, %for.end.cleanup_crit_edge31, %for.end.cleanup_crit_edge32, %for.end.cleanup_crit_edge33, %for.end.cleanup_crit_edge34, %for.end.cleanup_crit_edge35, %for.end.cleanup_crit_edge36, %for.end.cleanup_crit_edge37, %for.end.cleanup_crit_edge38, %for.end.cleanup_crit_edge39, %for.end.cleanup_crit_edge40, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge9 ], [ true, %for.end.cleanup_crit_edge10 ], [ true, %for.end.cleanup_crit_edge11 ], [ true, %for.end.cleanup_crit_edge12 ], [ true, %for.end.cleanup_crit_edge13 ], [ true, %for.end.cleanup_crit_edge14 ], [ true, %for.end.cleanup_crit_edge15 ], [ true, %for.end.cleanup_crit_edge16 ], [ true, %for.end.cleanup_crit_edge17 ], [ true, %for.end.cleanup_crit_edge18 ], [ true, %for.end.cleanup_crit_edge19 ], [ true, %for.end.cleanup_crit_edge20 ], [ true, %for.end.cleanup_crit_edge21 ], [ true, %for.end.cleanup_crit_edge22 ], [ true, %for.end.cleanup_crit_edge23 ], [ true, %for.end.cleanup_crit_edge24 ], [ true, %for.end.cleanup_crit_edge25 ], [ true, %for.end.cleanup_crit_edge26 ], [ true, %for.end.cleanup_crit_edge27 ], [ true, %for.end.cleanup_crit_edge28 ], [ true, %for.end.cleanup_crit_edge29 ], [ true, %for.end.cleanup_crit_edge30 ], [ true, %for.end.cleanup_crit_edge31 ], [ true, %for.end.cleanup_crit_edge32 ], [ true, %for.end.cleanup_crit_edge33 ], [ true, %for.end.cleanup_crit_edge34 ], [ true, %for.end.cleanup_crit_edge35 ], [ true, %for.end.cleanup_crit_edge36 ], [ true, %for.end.cleanup_crit_edge37 ], [ true, %for.end.cleanup_crit_edge38 ], [ true, %for.end.cleanup_crit_edge39 ], [ true, %for.end.cleanup_crit_edge40 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1305_probe(ptr noundef %component) #2 align 64 {
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
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.rt1305_priv, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call1.i = tail call i32 @regmap_multi_reg_write(ptr noundef %9, ptr noundef nonnull @init_list, i32 noundef 10) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt1305_remove(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1305_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1305_resume(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1305_set_component_sysclk(ptr noundef %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %sysclk = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %freq)
  %cmp = icmp eq i32 %5, %freq
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sysclk_src = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %clk_id)
  %cmp1 = icmp eq i32 %7, %clk_id
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %clk_id, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 63, i32 noundef 4096, i32 noundef 0) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.78, i32 noundef %clk_id) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %if.end.sw.epilog_crit_edge
  %reg_val.0 = phi i32 [ 512, %sw.bb5 ], [ 0, %sw.bb ], [ 256, %if.end.sw.epilog_crit_edge ]
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 768, i32 noundef %reg_val.0) #8
  %9 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %freq, ptr %sysclk, align 4
  %sysclk_src9 = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %sysclk_src9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %clk_id, ptr %sysclk_src9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1305_set_component_sysclk.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1305_set_component_sysclk, %if.then14)) #8
          to label %cleanup [label %if.then14], !srcloc !251

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1305_set_component_sysclk.__UNIQUE_ID_ddebug296, ptr noundef %12, ptr noundef nonnull @.str.80, i32 noundef %freq, i32 noundef %clk_id) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %sw.epilog, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1305_set_component_pll(ptr noundef %component, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  %pll_code = alloca %struct.rl6231_pll_code, align 4
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pll_code) #8
  %4 = call ptr @memset(ptr %pll_code, i32 255, i32 16)
  %pll_src = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %pll_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pll_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %source)
  %cmp = icmp eq i32 %6, %source
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pll_in = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %pll_in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pll_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %freq_in)
  %cmp1 = icmp eq i32 %8, %freq_in
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %pll_out = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pll_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %freq_out)
  %cmp3 = icmp eq i32 %10, %freq_out
  br i1 %cmp3, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_in)
  %tobool.not = icmp eq i32 %freq_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool4.not = icmp eq i32 %freq_out, 0
  %or.cond = or i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1305_set_component_pll.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1305_set_component_pll, %if.then10)) #8
          to label %do.end [label %if.then10], !srcloc !251

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1305_set_component_pll.__UNIQUE_ID_ddebug297, ptr noundef %12, ptr noundef nonnull @.str.82) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %pll_in12 = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %pll_in12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pll_in12, align 4
  %pll_out13 = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %pll_out13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %pll_out13, align 4
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 3840, i32 noundef 1280) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %15 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %source, label %do.end24 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb18
    i32 2, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 60416, i32 noundef 0) #8
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 63, i32 noundef 4096, i32 noundef 0) #8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 3072, i32 noundef 1024) #8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 60416, i32 noundef 32768) #8
  br label %sw.epilog

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.83, i32 noundef %source) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb18, %sw.bb
  %freq_in.addr.0 = phi i32 [ 98304000, %sw.bb20 ], [ %freq_in, %sw.bb18 ], [ %freq_in, %sw.bb ]
  %call26 = call i32 @rl6231_pll_calc(i32 noundef %freq_in.addr.0, i32 noundef %freq_out, ptr noundef nonnull %pll_code) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %do.body34

do.end31:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.85, i32 noundef %freq_in.addr.0) #11
  br label %cleanup

do.body34:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1305_set_component_pll.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1305_set_component_pll, %if.then46)) #8
          to label %do.end54 [label %if.then46], !srcloc !251

if.then46:                                        ; preds = %do.body34
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pll_code, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool48.not = icmp eq i8 %21, 0
  %22 = zext i8 %21 to i32
  br i1 %tobool48.not, label %cond.false, label %if.then46.cond.end_crit_edge

if.then46.cond.end_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %m_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %23 = ptrtoint ptr %m_code to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %m_code, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then46.cond.end_crit_edge
  %cond = phi i32 [ %24, %cond.false ], [ 0, %if.then46.cond.end_crit_edge ]
  %n_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %25 = ptrtoint ptr %n_code to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_code, align 4
  %k_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %27 = ptrtoint ptr %k_code to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %k_code, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1305_set_component_pll.__UNIQUE_ID_ddebug298, ptr noundef %19, ptr noundef nonnull @.str.87, i32 noundef %22, i32 noundef %cond, i32 noundef %26, i32 noundef %28) #8
  br label %do.end54

do.end54:                                         ; preds = %cond.end, %do.body34
  %29 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pll_code, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool56.not = icmp eq i8 %30, 0
  br i1 %tobool56.not, label %cond.false59, label %do.end54.cond.end61_crit_edge

do.end54.cond.end61_crit_edge:                    ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end61

cond.false59:                                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  %m_code60 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %31 = ptrtoint ptr %m_code60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %m_code60, align 4
  %phi.bo = shl i32 %32, 12
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false59, %do.end54.cond.end61_crit_edge
  %cond62 = phi i32 [ %phi.bo, %cond.false59 ], [ 0, %do.end54.cond.end61_crit_edge ]
  %33 = zext i8 %30 to i32
  %shl66 = shl nuw nsw i32 %33, 11
  %or = or i32 %cond62, %shl66
  %n_code67 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %34 = ptrtoint ptr %n_code67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_code67, align 4
  %or68 = or i32 %or, %35
  %call69 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 12, i32 noundef %or68) #8
  %k_code70 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %36 = ptrtoint ptr %k_code70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %k_code70, align 4
  %call71 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 13, i32 noundef %37) #8
  %pll_in72 = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 8
  %38 = ptrtoint ptr %pll_in72 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %freq_in.addr.0, ptr %pll_in72, align 4
  %pll_out73 = getelementptr inbounds %struct.rt1305_priv, ptr %3, i32 0, i32 9
  %39 = ptrtoint ptr %pll_out73 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %freq_out, ptr %pll_out73, align 4
  %40 = ptrtoint ptr %pll_src to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %source, ptr %pll_src, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end61, %do.end31, %do.end24, %do.end, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end24 ], [ %call26, %do.end31 ], [ 0, %cond.end61 ], [ 0, %do.end ], [ 0, %land.lhs.true2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pll_code) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1305_classd_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 58, i32 noundef 4096, i32 noundef 4096) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 58, i32 noundef 4096, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 150000, i32 noundef 200000, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1305_is_rc_clk_from_pll(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 4) #8
  %sysclk_src = getelementptr inbounds %struct.rt1305_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %and = and i32 %call2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  %retval.0 = zext i1 %or.cond to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt1305_is_sys_clk_from_pll(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
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
  %sysclk_src = getelementptr inbounds %struct.rt1305_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_pll_calc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1305_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %reg_val.0 = phi i32 [ 0, %sw.bb2 ], [ 32768, %entry.sw.epilog_crit_edge ]
  %master4 = getelementptr inbounds %struct.rt1305_priv, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %master4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %master4, align 4
  %and5 = and i32 %fmt, 3840
  %9 = zext i32 %and5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %and5, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog9_crit_edge
    i32 768, label %sw.bb6
  ]

sw.epilog.sw.epilog9_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog9

sw.epilog9:                                       ; preds = %sw.bb6, %sw.epilog.sw.epilog9_crit_edge
  %reg1_val.0 = phi i32 [ 512, %sw.bb6 ], [ %and5, %sw.epilog.sw.epilog9_crit_edge ]
  %and10 = and i32 %fmt, 15
  %10 = zext i32 %and10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %and10, label %sw.epilog9.cleanup_crit_edge [
    i32 1, label %sw.epilog9.sw.epilog18_crit_edge
    i32 3, label %sw.bb11
    i32 4, label %sw.bb13
    i32 5, label %sw.bb15
  ]

sw.epilog9.sw.epilog18_crit_edge:                 ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog18

sw.epilog9.cleanup_crit_edge:                     ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb11:                                          ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #10
  %or12 = or i32 %reg1_val.0, 4096
  br label %sw.epilog18

sw.bb13:                                          ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #10
  %or14 = or i32 %reg1_val.0, 8192
  br label %sw.epilog18

sw.bb15:                                          ; preds = %sw.epilog9
  call void @__sanitizer_cov_trace_pc() #10
  %or16 = or i32 %reg1_val.0, 12288
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.bb15, %sw.bb13, %sw.bb11, %sw.epilog9.sw.epilog18_crit_edge
  %reg1_val.1 = phi i32 [ %or16, %sw.bb15 ], [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ], [ %reg1_val.0, %sw.epilog9.sw.epilog18_crit_edge ]
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cond = icmp eq i32 %12, 0
  br i1 %cond, label %sw.bb19, label %do.end

sw.bb19:                                          ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 45, i32 noundef 32768, i32 noundef %reg_val.0) #8
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 46, i32 noundef 12800, i32 noundef %reg1_val.1) #8
  br label %cleanup

do.end:                                           ; preds = %sw.epilog18
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.89, i32 noundef %12) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb19, %sw.epilog9.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb19 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1305_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr noundef %dai) #2 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %lrck = getelementptr inbounds %struct.rt1305_priv, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %lrck to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lrck, align 4
  %sysclk = getelementptr inbounds %struct.rt1305_priv, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp slt i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.i = icmp slt i32 %7, 1
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %shl.i = shl i32 %7, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %10)
  %cmp3.i = icmp eq i32 %shl.i, %10
  br i1 %cmp3.i, label %if.end.i.if.end_crit_edge, label %for.inc.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i:                                        ; preds = %if.end.i
  %mul.1.i = shl i32 %7, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1.i, i32 %10)
  %cmp3.1.i = icmp eq i32 %mul.1.i, %10
  br i1 %cmp3.1.i, label %for.inc.i.if.end_crit_edge, label %for.inc.1.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  %mul.2.i = mul i32 %7, 768
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2.i, i32 %10)
  %cmp3.2.i = icmp eq i32 %mul.2.i, %10
  br i1 %cmp3.2.i, label %for.inc.1.i.if.end_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %mul.3.i = shl i32 %7, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3.i, i32 %10)
  %cmp3.3.i = icmp eq i32 %mul.3.i, %10
  br i1 %cmp3.3.i, label %for.inc.2.i.if.end_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %mul.4.i = mul i32 %7, 1536
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.4.i, i32 %10)
  %cmp3.4.i = icmp eq i32 %mul.4.i, %10
  br i1 %cmp3.4.i, label %for.inc.3.i.if.end_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %mul.5.i = shl i32 %7, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.5.i, i32 %10)
  %cmp3.5.i = icmp eq i32 %mul.5.i, %10
  br i1 %cmp3.5.i, label %for.inc.4.i.if.end_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end_crit_edge:                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %mul.6.i = mul i32 %7, 3072
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.6.i, i32 %10)
  %cmp3.6.i = icmp eq i32 %mul.6.i, %10
  br i1 %cmp3.6.i, label %for.inc.5.i.if.end_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end_crit_edge:                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %mul.7.i = shl i32 %7, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.7.i, i32 %10)
  %cmp3.7.i = icmp eq i32 %mul.7.i, %10
  br i1 %cmp3.7.i, label %for.inc.6.i.if.end_crit_edge, label %for.inc.6.i.do.end_crit_edge

for.inc.6.i.do.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.6.i.if.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %for.inc.6.i.do.end_crit_edge, %entry.do.end_crit_edge
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.91) #11
  %13 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lrck, align 4
  %mul = shl i32 %14, 6
  %mul7 = shl i32 %14, 8
  %call8 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %dai, i32 noundef 0, i32 noundef 0, i32 noundef %mul, i32 noundef %mul7) #8
  %15 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lrck, align 4
  %mul10 = shl i32 %16, 8
  %call11 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %dai, i32 noundef 1, i32 noundef %mul10, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.inc.6.i.if.end_crit_edge, %for.inc.5.i.if.end_crit_edge, %for.inc.4.i.if.end_crit_edge, %for.inc.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %pre_div.0 = phi i32 [ 0, %do.end ], [ 6, %for.inc.5.i.if.end_crit_edge ], [ 5, %for.inc.4.i.if.end_crit_edge ], [ 4, %for.inc.3.i.if.end_crit_edge ], [ 3, %for.inc.2.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge ], [ 7, %for.inc.6.i.if.end_crit_edge ]
  %call12 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.95, i32 noundef %call12) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call12)
  %cmp20 = icmp ugt i32 %call12, 32
  %conv = zext i1 %cmp20 to i32
  %19 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lrck, align 4
  %shl = shl nuw nsw i32 32, %conv
  %mul22 = mul i32 %20, %shl
  %bclk = getelementptr inbounds %struct.rt1305_priv, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul22, ptr %bclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1305_hw_params.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1305_hw_params, %if.then27)) #8
          to label %do.body32 [label %if.then27], !srcloc !251

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1305_hw_params.__UNIQUE_ID_ddebug294, ptr noundef %23, ptr noundef nonnull @.str.97, i32 noundef %conv, i32 noundef %pre_div.0, i32 noundef %25) #8
  br label %do.body32

do.body32:                                        ; preds = %if.then27, %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1305_hw_params.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1305_hw_params, %if.then44)) #8
          to label %do.end50 [label %if.then44], !srcloc !251

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lrck, align 4
  %id47 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %30 = ptrtoint ptr %id47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1305_hw_params.__UNIQUE_ID_ddebug295, ptr noundef %27, ptr noundef nonnull @.str.98, i32 noundef %29, i32 noundef %pre_div.0, i32 noundef %31) #8
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %do.body32
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %do.end50.if.then.i.i.i_crit_edge

do.end50.if.then.i.i.i_crit_edge:                 ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %do.end50.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %do.end50.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %33, %do.end50.if.then.i.i.i_crit_edge ], [ %36, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %34 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !254
  %add.i.i.i = or i32 %34, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %do.end50
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.1.i.i.i = icmp eq i32 %36, 0
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
  %37 = add i32 %call1.i, -8
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %38)
  %39 = icmp ult i32 %38, 5
  br i1 %39, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %38 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %40 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %switch.lobit.not = icmp eq i8 %40, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %id58 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %41 = ptrtoint ptr %id58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cond = icmp eq i32 %42, 0
  br i1 %cond, label %sw.bb59, label %do.end65

sw.bb59:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rt1305_hw_params, i32 0, i32 %38
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  %shl60 = shl nuw nsw i32 %pre_div.0, 4
  %call61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 46, i32 noundef 3072, i32 noundef %switch.load) #8
  %call69 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 112, i32 noundef %shl60) #8
  br label %cleanup

do.end65:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.89, i32 noundef %42) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %sw.bb59, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ -22, %do.end17 ], [ 0, %sw.bb59 ], [ -22, %do.end65 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !185, !186, !187, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !207, !209, !211, !213, !214, !215, !216, !218, !219, !220, !221, !222, !224, !225, !226, !228, !229, !231, !232, !234, !235, !237, !239}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !{ptr @__initcall__kmod_snd_soc_rt1305__303_1179_rt1305_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_rt1305__303_1179_rt1305_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt1305.c", i32 1179, i32 1}
!2 = !{ptr @__exitcall_rt1305_i2c_driver_exit, !1, !"__exitcall_rt1305_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description304, !4, !"__UNIQUE_ID_description304", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/rt1305.c", i32 1181, i32 1}
!5 = !{ptr @__UNIQUE_ID_author305, !6, !"__UNIQUE_ID_author305", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt1305.c", i32 1182, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt1305.c", i32 1183, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rt1305.c", i32 1167, i32 11}
!12 = !{ptr @rt1305_i2c_driver, !13, !"rt1305_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rt1305.c", i32 1165, i32 26}
!14 = !{ptr @rt1305_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt1305.c", i32 1134, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/rt1305.c", i32 1137, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rt1305_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rt1305_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/rt1305.c", i32 1144, i32 3}
!27 = !{ptr @rt1305_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rt1305_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @rt1305_regmap, !30, !"rt1305_regmap", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/rt1305.c", i32 952, i32 35}
!31 = !{ptr @rt1305_reg, !32, !"rt1305_reg", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/rt1305.c", i32 87, i32 33}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/rt1305.c", i32 41, i32 11}
!35 = !{ptr @rt1305_ranges, !36, !"rt1305_ranges", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/rt1305.c", i32 39, i32 38}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/rt1305.c", i32 1043, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rt1305_calibrate._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @rt1305_calibrate._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/rt1305.c", i32 1065, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rt1305_calibrate.__UNIQUE_ID_ddebug299, !43, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/rt1305.c", i32 1066, i32 2}
!48 = !{ptr @rt1305_calibrate._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rt1305_calibrate._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/rt1305.c", i32 1071, i32 2}
!52 = !{ptr @rt1305_calibrate.__UNIQUE_ID_ddebug300, !51, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/rt1305.c", i32 1082, i32 2}
!55 = !{ptr @rt1305_calibrate.__UNIQUE_ID_ddebug301, !54, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/rt1305.c", i32 1083, i32 2}
!58 = !{ptr @rt1305_calibrate._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rt1305_calibrate._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/rt1305.c", i32 1088, i32 2}
!62 = !{ptr @rt1305_calibrate.__UNIQUE_ID_ddebug302, !61, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/rt1305.c", i32 1103, i32 3}
!65 = !{ptr @rt1305_calibrate._entry.24, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @rt1305_calibrate._entry_ptr.26, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @soc_component_dev_rt1305, !68, !"soc_component_dev_rt1305", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/rt1305.c", i32 934, i32 46}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/rt1305.c", i32 399, i32 2}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/rt1305.c", i32 403, i32 2}
!73 = !{ptr @rt1305_snd_controls, !74, !"rt1305_snd_controls", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/rt1305.c", i32 398, i32 38}
!75 = !{ptr @dac_vol_tlv, !76, !"dac_vol_tlv", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/rt1305.c", i32 381, i32 14}
!77 = !{ptr @rt1305_rx_data_ch_enum, !78, !"rt1305_rx_data_ch_enum", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/rt1305.c", i32 390, i32 8}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/rt1305.c", i32 384, i32 2}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/rt1305.c", i32 385, i32 2}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/rt1305.c", i32 386, i32 2}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/rt1305.c", i32 387, i32 2}
!87 = !{ptr @rt1305_rx_data_ch_select, !88, !"rt1305_rx_data_ch_select", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/rt1305.c", i32 383, i32 27}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/rt1305.c", i32 469, i32 2}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/rt1305.c", i32 471, i32 2}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/rt1305.c", i32 473, i32 2}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/rt1305.c", i32 475, i32 2}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/rt1305.c", i32 477, i32 2}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/rt1305.c", i32 479, i32 2}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/rt1305.c", i32 481, i32 2}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/rt1305.c", i32 483, i32 2}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/rt1305.c", i32 485, i32 2}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/rt1305.c", i32 487, i32 2}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/rt1305.c", i32 491, i32 2}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/rt1305.c", i32 493, i32 2}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/rt1305.c", i32 495, i32 2}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/rt1305.c", i32 497, i32 2}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/rt1305.c", i32 499, i32 2}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/rt1305.c", i32 501, i32 2}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/rt1305.c", i32 503, i32 2}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/rt1305.c", i32 505, i32 2}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/rt1305.c", i32 507, i32 2}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/rt1305.c", i32 509, i32 2}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/rt1305.c", i32 511, i32 2}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/rt1305.c", i32 513, i32 2}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/rt1305.c", i32 515, i32 2}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/rt1305.c", i32 517, i32 2}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/rt1305.c", i32 521, i32 2}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/rt1305.c", i32 523, i32 2}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/rt1305.c", i32 525, i32 2}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/rt1305.c", i32 527, i32 2}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/rt1305.c", i32 529, i32 2}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/rt1305.c", i32 531, i32 2}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/rt1305.c", i32 533, i32 2}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/rt1305.c", i32 538, i32 2}
!153 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/rt1305.c", i32 541, i32 2}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/rt1305.c", i32 543, i32 2}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/rt1305.c", i32 545, i32 2}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/rt1305.c", i32 546, i32 2}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/rt1305.c", i32 547, i32 2}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/rt1305.c", i32 550, i32 2}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/rt1305.c", i32 553, i32 2}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/rt1305.c", i32 554, i32 2}
!170 = !{ptr @rt1305_dapm_widgets, !171, !"rt1305_dapm_widgets", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/rt1305.c", i32 468, i32 41}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/rt1305.c", i32 461, i32 2}
!174 = !{ptr @rt1305_sto_dac_l, !175, !"rt1305_sto_dac_l", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/rt1305.c", i32 460, i32 38}
!176 = !{ptr @rt1305_sto_dac_r, !177, !"rt1305_sto_dac_r", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/rt1305.c", i32 464, i32 38}
!178 = !{ptr @rt1305_dapm_routes, !179, !"rt1305_dapm_routes", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/rt1305.c", i32 557, i32 40}
!180 = !{ptr @init_list, !181, !"init_list", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/rt1305.c", i32 53, i32 34}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/rt1305.c", i32 778, i32 3}
!184 = !{ptr @.str.79, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @rt1305_set_component_sysclk._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @rt1305_set_component_sysclk._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/rt1305.c", i32 786, i32 2}
!189 = !{ptr @rt1305_set_component_sysclk.__UNIQUE_ID_ddebug296, !188, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!190 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/rt1305.c", i32 805, i32 3}
!192 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @rt1305_set_component_pll.__UNIQUE_ID_ddebug297, !191, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!194 = !{ptr @.str.83, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/rt1305.c", i32 838, i32 3}
!196 = !{ptr @rt1305_set_component_pll._entry, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @rt1305_set_component_pll._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/rt1305.c", i32 844, i32 3}
!200 = !{ptr @rt1305_set_component_pll._entry.84, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @rt1305_set_component_pll._entry_ptr.86, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.87, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/rt1305.c", i32 848, i32 2}
!204 = !{ptr @rt1305_set_component_pll.__UNIQUE_ID_ddebug298, !203, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!205 = !{ptr @.str.88, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/rt1305.c", i32 922, i32 11}
!207 = !{ptr @rt1305_dai, !208, !"rt1305_dai", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/rt1305.c", i32 920, i32 34}
!209 = !{ptr @rt1305_aif_dai_ops, !210, !"rt1305_aif_dai_ops", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/rt1305.c", i32 915, i32 37}
!211 = !{ptr @.str.89, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/rt1305.c", i32 749, i32 3}
!213 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @rt1305_set_dai_fmt._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @rt1305_set_dai_fmt._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.91, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/rt1305.c", i32 636, i32 3}
!218 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.93, !217, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @rt1305_hw_params._entry, !217, !"_entry", i1 false, i1 false}
!221 = !{ptr @rt1305_hw_params._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.95, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/rt1305.c", i32 645, i32 3}
!224 = !{ptr @rt1305_hw_params._entry.94, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @rt1305_hw_params._entry_ptr.96, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.97, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/rt1305.c", i32 653, i32 2}
!228 = !{ptr @rt1305_hw_params.__UNIQUE_ID_ddebug294, !227, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!229 = !{ptr @.str.98, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/rt1305.c", i32 656, i32 2}
!231 = !{ptr @rt1305_hw_params.__UNIQUE_ID_ddebug295, !230, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!232 = !{ptr @rt1305_hw_params._entry.99, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/rt1305.c", i32 685, i32 3}
!234 = !{ptr @rt1305_hw_params._entry_ptr.100, !233, !"_entry_ptr", i1 false, i1 false}
!235 = distinct !{null, !236, !"pd", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/rt1305.c", i32 612, i32 19}
!237 = !{ptr @rt1305_of_match, !238, !"rt1305_of_match", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/rt1305.c", i32 969, i32 34}
!239 = !{ptr @rt1305_i2c_id, !240, !"rt1305_i2c_id", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/rt1305.c", i32 986, i32 35}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = !{!"auto-init"}
!251 = !{i64 2148983856, i64 2148983861, i64 2148983874, i64 2148983918, i64 2148983952, i64 2148983973}
!252 = !{i64 2148216903, i64 2148217183, i64 2148217517, i64 2148217851}
!253 = !{i8 0, i8 2}
!254 = !{i32 0, i32 33}
