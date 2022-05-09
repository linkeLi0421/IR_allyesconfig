; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt1011.c_pt.bc'
source_filename = "../sound/soc/codecs/rt1011.c"
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
%struct.atomic_t = type { i32 }
%struct.reg_default = type { i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
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
%struct.rt1011_priv = type { ptr, ptr, %struct.work_struct, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.97, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.97 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.92, [128 x i8] }
%union.anon.92 = type { %union.anon.94 }
%union.anon.94 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.88, [64 x i8] }
%union.anon.88 = type { %struct.anon.91, [40 x i8] }
%struct.anon.91 = type { i32, i32, [64 x i8], i64, i32 }
%struct.rt1011_bq_drc_params = type { i16, i16 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_rt1011__302_2492_rt1011_i2c_driver_init6 = internal global ptr @rt1011_i2c_driver_init, section ".initcall6.init", align 4
@rt1011_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt1011_i2c_probe, ptr null, ptr null, ptr @rt1011_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt1011_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt1011_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt1011_i2c_driver_exit = internal global ptr @rt1011_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [56 x i8] c"snd_soc_rt1011.description=ASoC RT1011 amplifier driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [57 x i8] c"snd_soc_rt1011.author=Shuming Fan <shumingf@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [52 x i8] c"snd_soc_rt1011.file=sound/soc/codecs/snd-soc-rt1011\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [27 x i8] c"snd_soc_rt1011.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt1011\00", [25 x i8] zeroinitializer }, align 32
@rt1011_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rt1011\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt1011_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt1011\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rt1011_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt1011_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @rt1011_readable_register, ptr @rt1011_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 6148, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt1011_reg, i32 614, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rt1011:2452:(&rt1011_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@rt1011_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2456, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt1011_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/rt1011.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt1011_i2c_probe._entry_ptr = internal global ptr @rt1011_i2c_probe._entry, section ".printk_index", align 4
@rt1011_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 2463, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device with ID register %x is not rt1011\0A\00", [54 x i8] zeroinitializer }, align 32
@rt1011_i2c_probe._entry_ptr.9 = internal global ptr @rt1011_i2c_probe._entry.7, section ".printk_index", align 4
@rt1011_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&rt1011->cali_work)\00", [58 x i8] zeroinitializer }, align 32
@soc_component_dev_rt1011 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt1011_snd_controls, i32 20, ptr @rt1011_dapm_widgets, i32 27, ptr @rt1011_dapm_routes, i32 26, ptr @rt1011_probe, ptr @rt1011_remove, ptr @rt1011_suspend, ptr @rt1011_resume, ptr null, ptr null, ptr null, ptr null, ptr @rt1011_set_component_sysclk, ptr @rt1011_set_component_pll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt1011_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt1011_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.145, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt1011_aif_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.129, i64 68719477829, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"realtek,temperature_calib\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"realtek,r0_calib\00", [47 x i8] zeroinitializer }, align 32
@rt1011_parse_dp.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 2, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_rt1011\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt1011_parse_dp\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: r0_calib: 0x%x, temperature_calib: 0x%x\00", [52 x i8] zeroinitializer }, align 32
@rt1011_reg = internal constant { [614 x %struct.reg_default], [1232 x i8] } { [614 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 4, i32 40960 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 8, i32 3 }, %struct.reg_default { i32 10, i32 2174 }, %struct.reg_default { i32 12, i32 32 }, %struct.reg_default { i32 14, i32 36866 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 32, i32 3136 }, %struct.reg_default { i32 34, i32 17171 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 122, i32 0 }, %struct.reg_default { i32 124, i32 4332 }, %struct.reg_default { i32 125, i32 4113 }, %struct.reg_default { i32 240, i32 20480 }, %struct.reg_default { i32 242, i32 884 }, %struct.reg_default { i32 243, i32 0 }, %struct.reg_default { i32 244, i32 0 }, %struct.reg_default { i32 256, i32 56 }, %struct.reg_default { i32 258, i32 65282 }, %struct.reg_default { i32 260, i32 562 }, %struct.reg_default { i32 262, i32 8204 }, %struct.reg_default { i32 263, i32 0 }, %struct.reg_default { i32 264, i32 12079 }, %struct.reg_default { i32 266, i32 12079 }, %struct.reg_default { i32 268, i32 47 }, %struct.reg_default { i32 270, i32 57344 }, %struct.reg_default { i32 272, i32 2080 }, %struct.reg_default { i32 273, i32 16400 }, %struct.reg_default { i32 274, i32 0 }, %struct.reg_default { i32 276, i32 0 }, %struct.reg_default { i32 278, i32 0 }, %struct.reg_default { i32 280, i32 0 }, %struct.reg_default { i32 282, i32 257 }, %struct.reg_default { i32 284, i32 17767 }, %struct.reg_default { i32 286, i32 0 }, %struct.reg_default { i32 288, i32 0 }, %struct.reg_default { i32 290, i32 0 }, %struct.reg_default { i32 292, i32 291 }, %struct.reg_default { i32 294, i32 17767 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 768, i32 65501 }, %struct.reg_default { i32 770, i32 30 }, %struct.reg_default { i32 785, i32 0 }, %struct.reg_default { i32 787, i32 21076 }, %struct.reg_default { i32 788, i32 98 }, %struct.reg_default { i32 790, i32 32576 }, %struct.reg_default { i32 793, i32 15 }, %struct.reg_default { i32 794, i32 65535 }, %struct.reg_default { i32 795, i32 0 }, %struct.reg_default { i32 796, i32 159 }, %struct.reg_default { i32 797, i32 65535 }, %struct.reg_default { i32 798, i32 0 }, %struct.reg_default { i32 799, i32 0 }, %struct.reg_default { i32 800, i32 58140 }, %struct.reg_default { i32 801, i32 0 }, %struct.reg_default { i32 802, i32 0 }, %struct.reg_default { i32 804, i32 0 }, %struct.reg_default { i32 806, i32 2 }, %struct.reg_default { i32 808, i32 8370 }, %struct.reg_default { i32 809, i32 373 }, %struct.reg_default { i32 810, i32 12973 }, %struct.reg_default { i32 811, i32 13397 }, %struct.reg_default { i32 812, i32 1320 }, %struct.reg_default { i32 813, i32 43008 }, %struct.reg_default { i32 814, i32 782 }, %struct.reg_default { i32 816, i32 8320 }, %struct.reg_default { i32 818, i32 52 }, %struct.reg_default { i32 820, i32 0 }, %struct.reg_default { i32 1288, i32 16 }, %struct.reg_default { i32 1290, i32 24 }, %struct.reg_default { i32 1292, i32 0 }, %struct.reg_default { i32 1293, i32 65535 }, %struct.reg_default { i32 1294, i32 7967 }, %struct.reg_default { i32 1295, i32 1279 }, %struct.reg_default { i32 1296, i32 16416 }, %struct.reg_default { i32 1297, i32 496 }, %struct.reg_default { i32 1298, i32 1794 }, %struct.reg_default { i32 1302, i32 48000 }, %struct.reg_default { i32 1303, i32 65535 }, %struct.reg_default { i32 1304, i32 65535 }, %struct.reg_default { i32 1305, i32 12415 }, %struct.reg_default { i32 1306, i32 65535 }, %struct.reg_default { i32 1307, i32 0 }, %struct.reg_default { i32 1308, i32 0 }, %struct.reg_default { i32 1309, i32 8192 }, %struct.reg_default { i32 1310, i32 0 }, %struct.reg_default { i32 1311, i32 0 }, %struct.reg_default { i32 1312, i32 0 }, %struct.reg_default { i32 1313, i32 4097 }, %struct.reg_default { i32 1314, i32 32767 }, %struct.reg_default { i32 1316, i32 32767 }, %struct.reg_default { i32 1318, i32 0 }, %struct.reg_default { i32 1320, i32 0 }, %struct.reg_default { i32 1322, i32 0 }, %struct.reg_default { i32 1328, i32 1025 }, %struct.reg_default { i32 1330, i32 12288 }, %struct.reg_default { i32 1332, i32 0 }, %struct.reg_default { i32 1333, i32 65535 }, %struct.reg_default { i32 1334, i32 4124 }, %struct.reg_default { i32 1336, i32 6164 }, %struct.reg_default { i32 1338, i32 4108 }, %struct.reg_default { i32 1340, i32 2052 }, %struct.reg_default { i32 1341, i32 0 }, %struct.reg_default { i32 1342, i32 0 }, %struct.reg_default { i32 1343, i32 0 }, %struct.reg_default { i32 1344, i32 0 }, %struct.reg_default { i32 1345, i32 0 }, %struct.reg_default { i32 1346, i32 0 }, %struct.reg_default { i32 1347, i32 0 }, %struct.reg_default { i32 1348, i32 28 }, %struct.reg_default { i32 1349, i32 6164 }, %struct.reg_default { i32 1350, i32 4108 }, %struct.reg_default { i32 1351, i32 2052 }, %struct.reg_default { i32 1352, i32 0 }, %struct.reg_default { i32 1353, i32 0 }, %struct.reg_default { i32 1354, i32 0 }, %struct.reg_default { i32 1355, i32 0 }, %struct.reg_default { i32 1356, i32 0 }, %struct.reg_default { i32 1357, i32 0 }, %struct.reg_default { i32 1358, i32 0 }, %struct.reg_default { i32 1359, i32 0 }, %struct.reg_default { i32 1382, i32 0 }, %struct.reg_default { i32 1384, i32 8433 }, %struct.reg_default { i32 1386, i32 7 }, %struct.reg_default { i32 1536, i32 40192 }, %struct.reg_default { i32 1553, i32 8192 }, %struct.reg_default { i32 1554, i32 20575 }, %struct.reg_default { i32 1555, i32 1092 }, %struct.reg_default { i32 1556, i32 16384 }, %struct.reg_default { i32 1557, i32 16388 }, %struct.reg_default { i32 1558, i32 1542 }, %struct.reg_default { i32 1559, i32 35076 }, %struct.reg_default { i32 1560, i32 57377 }, %struct.reg_default { i32 1569, i32 8192 }, %struct.reg_default { i32 1570, i32 20575 }, %struct.reg_default { i32 1571, i32 1092 }, %struct.reg_default { i32 1572, i32 16384 }, %struct.reg_default { i32 1573, i32 16388 }, %struct.reg_default { i32 1574, i32 1542 }, %struct.reg_default { i32 1575, i32 34564 }, %struct.reg_default { i32 1576, i32 57377 }, %struct.reg_default { i32 1585, i32 8192 }, %struct.reg_default { i32 1586, i32 20863 }, %struct.reg_default { i32 1587, i32 1088 }, %struct.reg_default { i32 1588, i32 16384 }, %struct.reg_default { i32 1589, i32 16644 }, %struct.reg_default { i32 1590, i32 774 }, %struct.reg_default { i32 1591, i32 35076 }, %struct.reg_default { i32 1592, i32 57377 }, %struct.reg_default { i32 1794, i32 20 }, %struct.reg_default { i32 1796, i32 0 }, %struct.reg_default { i32 1798, i32 20 }, %struct.reg_default { i32 1800, i32 0 }, %struct.reg_default { i32 1802, i32 0 }, %struct.reg_default { i32 1808, i32 512 }, %struct.reg_default { i32 1809, i32 0 }, %struct.reg_default { i32 1810, i32 512 }, %struct.reg_default { i32 1811, i32 0 }, %struct.reg_default { i32 1824, i32 512 }, %struct.reg_default { i32 1825, i32 0 }, %struct.reg_default { i32 1826, i32 0 }, %struct.reg_default { i32 1827, i32 0 }, %struct.reg_default { i32 1828, i32 0 }, %struct.reg_default { i32 1829, i32 0 }, %struct.reg_default { i32 1830, i32 0 }, %struct.reg_default { i32 1831, i32 0 }, %struct.reg_default { i32 1832, i32 0 }, %struct.reg_default { i32 1833, i32 0 }, %struct.reg_default { i32 1840, i32 512 }, %struct.reg_default { i32 1841, i32 0 }, %struct.reg_default { i32 1842, i32 0 }, %struct.reg_default { i32 1843, i32 0 }, %struct.reg_default { i32 1844, i32 0 }, %struct.reg_default { i32 1845, i32 0 }, %struct.reg_default { i32 1846, i32 0 }, %struct.reg_default { i32 1847, i32 0 }, %struct.reg_default { i32 1848, i32 0 }, %struct.reg_default { i32 1849, i32 0 }, %struct.reg_default { i32 1856, i32 512 }, %struct.reg_default { i32 1857, i32 0 }, %struct.reg_default { i32 1858, i32 0 }, %struct.reg_default { i32 1859, i32 0 }, %struct.reg_default { i32 1860, i32 0 }, %struct.reg_default { i32 1861, i32 0 }, %struct.reg_default { i32 1862, i32 0 }, %struct.reg_default { i32 1863, i32 0 }, %struct.reg_default { i32 1864, i32 0 }, %struct.reg_default { i32 1865, i32 0 }, %struct.reg_default { i32 1872, i32 512 }, %struct.reg_default { i32 1873, i32 0 }, %struct.reg_default { i32 1874, i32 0 }, %struct.reg_default { i32 1875, i32 0 }, %struct.reg_default { i32 1876, i32 0 }, %struct.reg_default { i32 1877, i32 0 }, %struct.reg_default { i32 1878, i32 0 }, %struct.reg_default { i32 1879, i32 0 }, %struct.reg_default { i32 1880, i32 0 }, %struct.reg_default { i32 1881, i32 0 }, %struct.reg_default { i32 1888, i32 512 }, %struct.reg_default { i32 1889, i32 0 }, %struct.reg_default { i32 1890, i32 0 }, %struct.reg_default { i32 1891, i32 0 }, %struct.reg_default { i32 1892, i32 0 }, %struct.reg_default { i32 1893, i32 0 }, %struct.reg_default { i32 1894, i32 0 }, %struct.reg_default { i32 1895, i32 0 }, %struct.reg_default { i32 1896, i32 0 }, %struct.reg_default { i32 1897, i32 0 }, %struct.reg_default { i32 1904, i32 512 }, %struct.reg_default { i32 1905, i32 0 }, %struct.reg_default { i32 1906, i32 0 }, %struct.reg_default { i32 1907, i32 0 }, %struct.reg_default { i32 1908, i32 0 }, %struct.reg_default { i32 1909, i32 0 }, %struct.reg_default { i32 1910, i32 0 }, %struct.reg_default { i32 1911, i32 0 }, %struct.reg_default { i32 1912, i32 0 }, %struct.reg_default { i32 1913, i32 0 }, %struct.reg_default { i32 1920, i32 512 }, %struct.reg_default { i32 1921, i32 0 }, %struct.reg_default { i32 1922, i32 0 }, %struct.reg_default { i32 1923, i32 0 }, %struct.reg_default { i32 1924, i32 0 }, %struct.reg_default { i32 1925, i32 0 }, %struct.reg_default { i32 1926, i32 0 }, %struct.reg_default { i32 1927, i32 0 }, %struct.reg_default { i32 1928, i32 0 }, %struct.reg_default { i32 1929, i32 0 }, %struct.reg_default { i32 1936, i32 512 }, %struct.reg_default { i32 1937, i32 0 }, %struct.reg_default { i32 1938, i32 0 }, %struct.reg_default { i32 1939, i32 0 }, %struct.reg_default { i32 1940, i32 0 }, %struct.reg_default { i32 1941, i32 0 }, %struct.reg_default { i32 1942, i32 0 }, %struct.reg_default { i32 1943, i32 0 }, %struct.reg_default { i32 1944, i32 0 }, %struct.reg_default { i32 1945, i32 0 }, %struct.reg_default { i32 1952, i32 512 }, %struct.reg_default { i32 1953, i32 0 }, %struct.reg_default { i32 1954, i32 0 }, %struct.reg_default { i32 1955, i32 0 }, %struct.reg_default { i32 1956, i32 0 }, %struct.reg_default { i32 1957, i32 0 }, %struct.reg_default { i32 1958, i32 0 }, %struct.reg_default { i32 1959, i32 0 }, %struct.reg_default { i32 1960, i32 0 }, %struct.reg_default { i32 1961, i32 0 }, %struct.reg_default { i32 1968, i32 512 }, %struct.reg_default { i32 1969, i32 0 }, %struct.reg_default { i32 1970, i32 0 }, %struct.reg_default { i32 1971, i32 0 }, %struct.reg_default { i32 1972, i32 0 }, %struct.reg_default { i32 1973, i32 0 }, %struct.reg_default { i32 1974, i32 0 }, %struct.reg_default { i32 1975, i32 0 }, %struct.reg_default { i32 1976, i32 0 }, %struct.reg_default { i32 1977, i32 0 }, %struct.reg_default { i32 1984, i32 512 }, %struct.reg_default { i32 1985, i32 0 }, %struct.reg_default { i32 1986, i32 0 }, %struct.reg_default { i32 1987, i32 0 }, %struct.reg_default { i32 1988, i32 0 }, %struct.reg_default { i32 1989, i32 0 }, %struct.reg_default { i32 1990, i32 0 }, %struct.reg_default { i32 1991, i32 0 }, %struct.reg_default { i32 1992, i32 0 }, %struct.reg_default { i32 1993, i32 0 }, %struct.reg_default { i32 4096, i32 16448 }, %struct.reg_default { i32 4098, i32 25861 }, %struct.reg_default { i32 4100, i32 21509 }, %struct.reg_default { i32 4102, i32 21845 }, %struct.reg_default { i32 4103, i32 63 }, %struct.reg_default { i32 4104, i32 32727 }, %struct.reg_default { i32 4105, i32 30479 }, %struct.reg_default { i32 4106, i32 65534 }, %struct.reg_default { i32 4107, i32 57344 }, %struct.reg_default { i32 4108, i32 0 }, %struct.reg_default { i32 4109, i32 7 }, %struct.reg_default { i32 4112, i32 42035 }, %struct.reg_default { i32 4128, i32 0 }, %struct.reg_default { i32 4130, i32 0 }, %struct.reg_default { i32 4132, i32 0 }, %struct.reg_default { i32 4608, i32 23041 }, %struct.reg_default { i32 4610, i32 25380 }, %struct.reg_default { i32 4612, i32 2816 }, %struct.reg_default { i32 4614, i32 0 }, %struct.reg_default { i32 4616, i32 0 }, %struct.reg_default { i32 4618, i32 36 }, %struct.reg_default { i32 4620, i32 0 }, %struct.reg_default { i32 4622, i32 14 }, %struct.reg_default { i32 4624, i32 0 }, %struct.reg_default { i32 4626, i32 0 }, %struct.reg_default { i32 4864, i32 1793 }, %struct.reg_default { i32 4866, i32 4857 }, %struct.reg_default { i32 4868, i32 13317 }, %struct.reg_default { i32 4869, i32 2116 }, %struct.reg_default { i32 4870, i32 22033 }, %struct.reg_default { i32 4872, i32 21854 }, %struct.reg_default { i32 4874, i32 42501 }, %struct.reg_default { i32 4876, i32 8192 }, %struct.reg_default { i32 4878, i32 0 }, %struct.reg_default { i32 4879, i32 1 }, %struct.reg_default { i32 4880, i32 43592 }, %struct.reg_default { i32 4882, i32 645 }, %struct.reg_default { i32 4884, i32 43690 }, %struct.reg_default { i32 4886, i32 43680 }, %struct.reg_default { i32 4888, i32 10922 }, %struct.reg_default { i32 4890, i32 43527 }, %struct.reg_default { i32 4898, i32 41 }, %struct.reg_default { i32 4899, i32 19026 }, %struct.reg_default { i32 4900, i32 44 }, %struct.reg_default { i32 4901, i32 2818 }, %struct.reg_default { i32 4902, i32 45 }, %struct.reg_default { i32 4903, i32 27482 }, %struct.reg_default { i32 4904, i32 46 }, %struct.reg_default { i32 4905, i32 52146 }, %struct.reg_default { i32 4906, i32 48 }, %struct.reg_default { i32 4907, i32 11275 }, %struct.reg_default { i32 4912, i32 49 }, %struct.reg_default { i32 4913, i32 35939 }, %struct.reg_default { i32 4914, i32 50 }, %struct.reg_default { i32 4915, i32 60603 }, %struct.reg_default { i32 4916, i32 52 }, %struct.reg_default { i32 4917, i32 19731 }, %struct.reg_default { i32 4918, i32 55 }, %struct.reg_default { i32 4919, i32 3523 }, %struct.reg_default { i32 4920, i32 61 }, %struct.reg_default { i32 4921, i32 61307 }, %struct.reg_default { i32 4922, i32 68 }, %struct.reg_default { i32 4923, i32 53556 }, %struct.reg_default { i32 4924, i32 71 }, %struct.reg_default { i32 4925, i32 37348 }, %struct.reg_default { i32 4926, i32 77 }, %struct.reg_default { i32 4927, i32 50032 }, %struct.reg_default { i32 4928, i32 83 }, %struct.reg_default { i32 4929, i32 62717 }, %struct.reg_default { i32 4930, i32 96 }, %struct.reg_default { i32 4931, i32 22550 }, %struct.reg_default { i32 4932, i32 108 }, %struct.reg_default { i32 4933, i32 47918 }, %struct.reg_default { i32 4934, i32 114 }, %struct.reg_default { i32 4935, i32 60603 }, %struct.reg_default { i32 4936, i32 118 }, %struct.reg_default { i32 4937, i32 23959 }, %struct.reg_default { i32 5376, i32 1794 }, %struct.reg_default { i32 5378, i32 47 }, %struct.reg_default { i32 5380, i32 0 }, %struct.reg_default { i32 5392, i32 100 }, %struct.reg_default { i32 5394, i32 0 }, %struct.reg_default { i32 5396, i32 57159 }, %struct.reg_default { i32 5398, i32 1948 }, %struct.reg_default { i32 5400, i32 64501 }, %struct.reg_default { i32 5402, i32 188 }, %struct.reg_default { i32 5404, i32 15237 }, %struct.reg_default { i32 5406, i32 691 }, %struct.reg_default { i32 5408, i32 13107 }, %struct.reg_default { i32 5410, i32 0 }, %struct.reg_default { i32 5412, i32 16384 }, %struct.reg_default { i32 5416, i32 100 }, %struct.reg_default { i32 5418, i32 0 }, %struct.reg_default { i32 5420, i32 0 }, %struct.reg_default { i32 5422, i32 0 }, %struct.reg_default { i32 5424, i32 0 }, %struct.reg_default { i32 5426, i32 0 }, %struct.reg_default { i32 5428, i32 0 }, %struct.reg_default { i32 5430, i32 0 }, %struct.reg_default { i32 5432, i32 64 }, %struct.reg_default { i32 5433, i32 0 }, %struct.reg_default { i32 5434, i32 64 }, %struct.reg_default { i32 5435, i32 0 }, %struct.reg_default { i32 5436, i32 100 }, %struct.reg_default { i32 5438, i32 3065 }, %struct.reg_default { i32 5440, i32 45737 }, %struct.reg_default { i32 5444, i32 512 }, %struct.reg_default { i32 5446, i32 0 }, %struct.reg_default { i32 5448, i32 202 }, %struct.reg_default { i32 5458, i32 1023 }, %struct.reg_default { i32 5460, i32 383 }, %struct.reg_default { i32 5462, i32 383 }, %struct.reg_default { i32 5466, i32 0 }, %struct.reg_default { i32 5468, i32 0 }, %struct.reg_default { i32 5472, i32 64 }, %struct.reg_default { i32 5474, i32 0 }, %struct.reg_default { i32 5488, i32 1023 }, %struct.reg_default { i32 5489, i32 56575 }, %struct.reg_default { i32 5490, i32 7680 }, %struct.reg_default { i32 5491, i32 8783 }, %struct.reg_default { i32 5492, i32 0 }, %struct.reg_default { i32 5493, i32 0 }, %struct.reg_default { i32 5494, i32 7680 }, %struct.reg_default { i32 5495, i32 0 }, %struct.reg_default { i32 5496, i32 0 }, %struct.reg_default { i32 5497, i32 4392 }, %struct.reg_default { i32 5498, i32 1023 }, %struct.reg_default { i32 5499, i32 56575 }, %struct.reg_default { i32 5500, i32 7680 }, %struct.reg_default { i32 5501, i32 8783 }, %struct.reg_default { i32 5502, i32 0 }, %struct.reg_default { i32 5503, i32 0 }, %struct.reg_default { i32 5504, i32 7680 }, %struct.reg_default { i32 5505, i32 0 }, %struct.reg_default { i32 5506, i32 0 }, %struct.reg_default { i32 5507, i32 4392 }, %struct.reg_default { i32 5520, i32 1023 }, %struct.reg_default { i32 5521, i32 56575 }, %struct.reg_default { i32 5522, i32 7680 }, %struct.reg_default { i32 5523, i32 8783 }, %struct.reg_default { i32 5524, i32 0 }, %struct.reg_default { i32 5525, i32 0 }, %struct.reg_default { i32 5526, i32 7680 }, %struct.reg_default { i32 5527, i32 0 }, %struct.reg_default { i32 5528, i32 0 }, %struct.reg_default { i32 5529, i32 4392 }, %struct.reg_default { i32 5530, i32 1023 }, %struct.reg_default { i32 5531, i32 56575 }, %struct.reg_default { i32 5532, i32 7680 }, %struct.reg_default { i32 5533, i32 8783 }, %struct.reg_default { i32 5534, i32 0 }, %struct.reg_default { i32 5535, i32 0 }, %struct.reg_default { i32 5536, i32 7680 }, %struct.reg_default { i32 5537, i32 0 }, %struct.reg_default { i32 5538, i32 0 }, %struct.reg_default { i32 5539, i32 4392 }, %struct.reg_default { i32 5552, i32 127 }, %struct.reg_default { i32 5553, i32 65535 }, %struct.reg_default { i32 5554, i32 127 }, %struct.reg_default { i32 5555, i32 65535 }, %struct.reg_default { i32 5556, i32 127 }, %struct.reg_default { i32 5557, i32 65535 }, %struct.reg_default { i32 5560, i32 127 }, %struct.reg_default { i32 5561, i32 65535 }, %struct.reg_default { i32 5564, i32 0 }, %struct.reg_default { i32 5565, i32 0 }, %struct.reg_default { i32 5566, i32 65280 }, %struct.reg_default { i32 5567, i32 0 }, %struct.reg_default { i32 5568, i32 65280 }, %struct.reg_default { i32 5569, i32 0 }, %struct.reg_default { i32 5571, i32 64512 }, %struct.reg_default { i32 5572, i32 48000 }, %struct.reg_default { i32 5584, i32 0 }, %struct.reg_default { i32 5585, i32 0 }, %struct.reg_default { i32 5586, i32 0 }, %struct.reg_default { i32 5587, i32 0 }, %struct.reg_default { i32 5588, i32 0 }, %struct.reg_default { i32 5589, i32 0 }, %struct.reg_default { i32 5590, i32 0 }, %struct.reg_default { i32 5591, i32 0 }, %struct.reg_default { i32 5592, i32 512 }, %struct.reg_default { i32 5593, i32 0 }, %struct.reg_default { i32 5594, i32 0 }, %struct.reg_default { i32 5595, i32 0 }, %struct.reg_default { i32 5596, i32 0 }, %struct.reg_default { i32 5597, i32 0 }, %struct.reg_default { i32 5598, i32 0 }, %struct.reg_default { i32 5599, i32 0 }, %struct.reg_default { i32 5600, i32 0 }, %struct.reg_default { i32 5601, i32 0 }, %struct.reg_default { i32 5602, i32 512 }, %struct.reg_default { i32 5603, i32 0 }, %struct.reg_default { i32 5604, i32 0 }, %struct.reg_default { i32 5605, i32 0 }, %struct.reg_default { i32 5606, i32 0 }, %struct.reg_default { i32 5607, i32 0 }, %struct.reg_default { i32 5608, i32 0 }, %struct.reg_default { i32 5609, i32 0 }, %struct.reg_default { i32 5610, i32 0 }, %struct.reg_default { i32 5611, i32 0 }, %struct.reg_default { i32 5612, i32 512 }, %struct.reg_default { i32 5613, i32 0 }, %struct.reg_default { i32 5614, i32 0 }, %struct.reg_default { i32 5615, i32 0 }, %struct.reg_default { i32 5616, i32 0 }, %struct.reg_default { i32 5617, i32 0 }, %struct.reg_default { i32 5618, i32 0 }, %struct.reg_default { i32 5619, i32 0 }, %struct.reg_default { i32 5620, i32 0 }, %struct.reg_default { i32 5621, i32 0 }, %struct.reg_default { i32 5622, i32 512 }, %struct.reg_default { i32 5623, i32 512 }, %struct.reg_default { i32 5624, i32 33280 }, %struct.reg_default { i32 5625, i32 0 }, %struct.reg_default { i32 5632, i32 125 }, %struct.reg_default { i32 5633, i32 41336 }, %struct.reg_default { i32 5634, i32 194 }, %struct.reg_default { i32 5635, i32 21379 }, %struct.reg_default { i32 5636, i32 0 }, %struct.reg_default { i32 5637, i32 705 }, %struct.reg_default { i32 5638, i32 125 }, %struct.reg_default { i32 5639, i32 41336 }, %struct.reg_default { i32 5640, i32 194 }, %struct.reg_default { i32 5641, i32 21379 }, %struct.reg_default { i32 5642, i32 62 }, %struct.reg_default { i32 5643, i32 54141 }, %struct.reg_default { i32 5649, i32 12816 }, %struct.reg_default { i32 5650, i32 29720 }, %struct.reg_default { i32 5651, i32 49407 }, %struct.reg_default { i32 5652, i32 0 }, %struct.reg_default { i32 5653, i32 255 }, %struct.reg_default { i32 5654, i32 0 }, %struct.reg_default { i32 5655, i32 0 }, %struct.reg_default { i32 5665, i32 25104 }, %struct.reg_default { i32 5666, i32 29720 }, %struct.reg_default { i32 5667, i32 49407 }, %struct.reg_default { i32 5668, i32 0 }, %struct.reg_default { i32 5669, i32 255 }, %struct.reg_default { i32 5670, i32 0 }, %struct.reg_default { i32 5671, i32 0 }, %struct.reg_default { i32 5681, i32 14868 }, %struct.reg_default { i32 5682, i32 29720 }, %struct.reg_default { i32 5683, i32 50175 }, %struct.reg_default { i32 5684, i32 0 }, %struct.reg_default { i32 5685, i32 255 }, %struct.reg_default { i32 5686, i32 0 }, %struct.reg_default { i32 5687, i32 0 }, %struct.reg_default { i32 5688, i32 0 }, %struct.reg_default { i32 5690, i32 0 }, %struct.reg_default { i32 5692, i32 0 }, %struct.reg_default { i32 5694, i32 0 }, %struct.reg_default { i32 5696, i32 0 }, %struct.reg_default { i32 5698, i32 0 }, %struct.reg_default { i32 5700, i32 0 }, %struct.reg_default { i32 5702, i32 0 }, %struct.reg_default { i32 5704, i32 0 }, %struct.reg_default { i32 5712, i32 0 }, %struct.reg_default { i32 5714, i32 0 }, %struct.reg_default { i32 5716, i32 0 }, %struct.reg_default { i32 5718, i32 0 }, %struct.reg_default { i32 5720, i32 0 }, %struct.reg_default { i32 5728, i32 0 }, %struct.reg_default { i32 5730, i32 0 }, %struct.reg_default { i32 5732, i32 0 }, %struct.reg_default { i32 5734, i32 0 }, %struct.reg_default { i32 5736, i32 0 }, %struct.reg_default { i32 5744, i32 0 }, %struct.reg_default { i32 5746, i32 0 }, %struct.reg_default { i32 5748, i32 0 }, %struct.reg_default { i32 5750, i32 0 }, %struct.reg_default { i32 5752, i32 0 }, %struct.reg_default { i32 5760, i32 0 }, %struct.reg_default { i32 5762, i32 0 }, %struct.reg_default { i32 5764, i32 0 }, %struct.reg_default { i32 5766, i32 0 }, %struct.reg_default { i32 5768, i32 0 }, %struct.reg_default { i32 5776, i32 0 }, %struct.reg_default { i32 5778, i32 0 }, %struct.reg_default { i32 5780, i32 0 }, %struct.reg_default { i32 5782, i32 0 }, %struct.reg_default { i32 5784, i32 0 }, %struct.reg_default { i32 5888, i32 0 }, %struct.reg_default { i32 5890, i32 0 }, %struct.reg_default { i32 5892, i32 0 }, %struct.reg_default { i32 5894, i32 0 }, %struct.reg_default { i32 5896, i32 0 }, %struct.reg_default { i32 5904, i32 0 }, %struct.reg_default { i32 5906, i32 0 }, %struct.reg_default { i32 5908, i32 0 }, %struct.reg_default { i32 5910, i32 0 }, %struct.reg_default { i32 5912, i32 0 }, %struct.reg_default { i32 5920, i32 0 }, %struct.reg_default { i32 5922, i32 0 }, %struct.reg_default { i32 5924, i32 0 }, %struct.reg_default { i32 5926, i32 0 }, %struct.reg_default { i32 5928, i32 0 }, %struct.reg_default { i32 5936, i32 0 }, %struct.reg_default { i32 5938, i32 0 }, %struct.reg_default { i32 5940, i32 0 }, %struct.reg_default { i32 5942, i32 0 }, %struct.reg_default { i32 5944, i32 0 }, %struct.reg_default { i32 5946, i32 0 }, %struct.reg_default { i32 5948, i32 0 }, %struct.reg_default { i32 5950, i32 0 }, %struct.reg_default { i32 6075, i32 1280 }, %struct.reg_default { i32 6077, i32 4 }, %struct.reg_default { i32 6079, i32 4 }, %struct.reg_default { i32 6081, i32 4 }, %struct.reg_default { i32 6082, i32 32767 }, %struct.reg_default { i32 6083, i32 0 }, %struct.reg_default { i32 6085, i32 0 }, %struct.reg_default { i32 6087, i32 0 }, %struct.reg_default { i32 6089, i32 0 }, %struct.reg_default { i32 6091, i32 8208 }, %struct.reg_default { i32 6093, i32 0 }, %struct.reg_default { i32 6095, i32 0 }, %struct.reg_default { i32 6097, i32 0 }, %struct.reg_default { i32 6099, i32 0 }, %struct.reg_default { i32 6101, i32 0 }, %struct.reg_default { i32 6103, i32 0 }, %struct.reg_default { i32 6105, i32 0 }, %struct.reg_default { i32 6107, i32 0 }, %struct.reg_default { i32 6109, i32 0 }, %struct.reg_default { i32 6111, i32 0 }, %struct.reg_default { i32 6113, i32 0 }, %struct.reg_default { i32 6115, i32 0 }, %struct.reg_default { i32 6117, i32 0 }, %struct.reg_default { i32 6119, i32 0 }, %struct.reg_default { i32 6121, i32 0 }, %struct.reg_default { i32 6123, i32 0 }, %struct.reg_default { i32 6125, i32 0 }, %struct.reg_default { i32 6127, i32 0 }, %struct.reg_default { i32 6129, i32 0 }, %struct.reg_default { i32 6131, i32 0 }, %struct.reg_default { i32 6133, i32 0 }, %struct.reg_default { i32 6135, i32 0 }, %struct.reg_default { i32 6137, i32 0 }, %struct.reg_default { i32 6139, i32 0 }, %struct.reg_default { i32 6141, i32 0 }, %struct.reg_default { i32 6143, i32 0 }, %struct.reg_default { i32 6145, i32 0 }, %struct.reg_default { i32 6147, i32 0 }], [1232 x i8] zeroinitializer }, align 32
@rt1011_calibration_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 2415, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DP r0 resistance about %d.%02d ohm, reg=0x%X\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt1011_calibration_work\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt1011_calibration_work._entry_ptr = internal global ptr @rt1011_calibration_work._entry, section ".printk_index", align 4
@rt1011_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 2280, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC offset=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt1011_calibrate\00", [47 x i8] zeroinitializer }, align 32
@rt1011_calibrate._entry_ptr = internal global ptr @rt1011_calibrate._entry, section ".printk_index", align 4
@rt1011_calibrate._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 2285, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Gain0 offset=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@rt1011_calibrate._entry_ptr.23 = internal global ptr @rt1011_calibrate._entry.21, section ".printk_index", align 4
@rt1011_calibrate._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.4, i32 2290, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Gain1 offset=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@rt1011_calibrate._entry_ptr.26 = internal global ptr @rt1011_calibrate._entry.24, section ".printk_index", align 4
@rt1011_calibrate._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.4, i32 2326, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Calibrate R0 Failure\0A\00", [42 x i8] zeroinitializer }, align 32
@rt1011_calibrate._entry_ptr.29 = internal global ptr @rt1011_calibrate._entry.27, section ".printk_index", align 4
@rt1011_calibrate._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.4, i32 2336, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"r0 resistance about %d.%02d ohm, reg=0x%X\0A\00", [53 x i8] zeroinitializer }, align 32
@rt1011_calibrate._entry_ptr.32 = internal global ptr @rt1011_calibrate._entry.30, section ".printk_index", align 4
@init_list = internal constant { [16 x %struct.reg_sequence], [32 x i8] } { [16 x %struct.reg_sequence] [%struct.reg_sequence { i32 813, i32 43072, i32 0 }, %struct.reg_sequence { i32 272, i32 2592, i32 0 }, %struct.reg_sequence { i32 260, i32 41010, i32 0 }, %struct.reg_sequence { i32 1305, i32 45068, i32 0 }, %struct.reg_sequence { i32 1306, i32 52428, i32 0 }, %struct.reg_sequence { i32 787, i32 24660, i32 0 }, %struct.reg_sequence { i32 811, i32 15957, i32 0 }, %struct.reg_sequence { i32 812, i32 1312, i32 0 }, %struct.reg_sequence { i32 816, i32 57736, i32 0 }, %struct.reg_sequence { i32 808, i32 5874, i32 0 }, %struct.reg_sequence { i32 1794, i32 4, i32 0 }, %struct.reg_sequence { i32 34, i32 49939, i32 0 }, %struct.reg_sequence { i32 5376, i32 1799, i32 0 }, %struct.reg_sequence { i32 4612, i32 51968, i32 0 }, %struct.reg_sequence { i32 258, i32 59138, i32 0 }, %struct.reg_sequence { i32 262, i32 8196, i32 0 }], [32 x i8] zeroinitializer }, align 32
@rt1011_snd_controls = internal constant { [20 x %struct.snd_kcontrol_new], [224 x i8] } { [20 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt1011_din_source_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt1011_tdm1_l_dac1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt1011_tdm2_l_dac1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt1011_tdm1_adc1_dat_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt1011_tdm1_adc1_loc_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt1011_tdm_adc1_1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt1011_tdm_adc2_1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt1011_adc_dout_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt1011_tdm1_dout_len_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt1011_tdm2_dout_len_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rt1011_recv_spk_mode_get, ptr @rt1011_recv_spk_mode_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @rt1011_bq_drc_info, ptr @rt1011_bq_drc_coeff_get, ptr @rt1011_bq_drc_coeff_put, %union.anon.98 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @rt1011_bq_drc_info, ptr @rt1011_bq_drc_coeff_get, ptr @rt1011_bq_drc_coeff_put, %union.anon.98 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @rt1011_bq_drc_info, ptr @rt1011_bq_drc_coeff_get, ptr @rt1011_bq_drc_coeff_put, %union.anon.98 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @rt1011_bq_drc_info, ptr @rt1011_bq_drc_coeff_get, ptr @rt1011_bq_drc_coeff_put, %union.anon.98 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @rt1011_bq_drc_info, ptr @rt1011_bq_drc_coeff_get, ptr @rt1011_bq_drc_coeff_put, %union.anon.98 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rt1011_r0_cali_get, ptr @rt1011_r0_cali_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @rt1011_r0_load_info, ptr @rt1011_r0_load_mode_get, ptr @rt1011_r0_load_mode_put, %union.anon.98 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt1011_i2s_ref_get, ptr @rt1011_i2s_ref_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rt1011_i2s_ref_enum to i32) }], [224 x i8] zeroinitializer }, align 32
@rt1011_dapm_routes = internal constant { [26 x %struct.snd_soc_dapm_route], [344 x i8] } { [26 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.109, ptr @rt1011_is_sys_clk_from_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }], [344 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DIN Source\00", [21 x i8] zeroinitializer }, align 32
@rt1011_din_source_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1794, i8 5, i8 5, i32 3, i32 3, ptr @rt1011_din_source_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TDM1 DIN Source\00", [16 x i8] zeroinitializer }, align 32
@rt1011_tdm1_l_dac1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 282, i8 12, i8 12, i32 8, i32 7, ptr @rt1011_tdm_l_ch_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TDM2 DIN Source\00", [16 x i8] zeroinitializer }, align 32
@rt1011_tdm2_l_dac1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 292, i8 12, i8 12, i32 8, i32 7, ptr @rt1011_tdm_l_ch_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TDM1 DOUT Source\00", [47 x i8] zeroinitializer }, align 32
@rt1011_tdm1_adc1_dat_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4109, i8 0, i8 0, i32 16, i32 15, ptr @rt1011_tdm_data_out_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TDM1 DOUT Location\00", [45 x i8] zeroinitializer }, align 32
@rt1011_tdm1_adc1_loc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 278, i8 0, i8 0, i32 8, i32 7, ptr @rt1011_tdm_l_ch_data_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TDM1 ADC1DAT Swap Select\00", [39 x i8] zeroinitializer }, align 32
@rt1011_tdm_adc1_1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 280, i8 6, i8 6, i32 4, i32 3, ptr @rt1011_tdm_adc_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TDM1 ADC2DAT Swap Select\00", [39 x i8] zeroinitializer }, align 32
@rt1011_tdm_adc2_1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 280, i8 4, i8 4, i32 4, i32 3, ptr @rt1011_tdm_adc_swap_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I2S ADC DOUT Mode\00", [46 x i8] zeroinitializer }, align 32
@rt1011_adc_dout_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 276, i8 12, i8 12, i32 2, i32 1, ptr @rt1011_adc_data_mode_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TDM1 DOUT Length\00", [47 x i8] zeroinitializer }, align 32
@rt1011_tdm1_dout_len_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 278, i8 13, i8 13, i32 8, i32 7, ptr @rt1011_tdm_adc_data_len_control, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TDM2 DOUT Length\00", [47 x i8] zeroinitializer }, align 32
@rt1011_tdm2_dout_len_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 288, i8 13, i8 13, i32 8, i32 7, ptr @rt1011_tdm_adc_data_len_control, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RECV SPK Mode\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AdvanceMode Initial Set\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AdvanceMode SEP BQ Coeff\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AdvanceMode EQ BQ Coeff\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AdvanceMode BQ UI Coeff\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AdvanceMode SmartBoost Coeff\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"R0 Calibration\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"R0 Load Mode\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"R0 Temperature\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 5436, i32 5436, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"I2S Reference\00", [18 x i8] zeroinitializer }, align 32
@rt1011_i2s_ref_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 3, i32 3, ptr @rt1011_i2s_ref, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt1011_din_source_select = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57], [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left + Right average\00", [43 x i8] zeroinitializer }, align 32
@rt1011_tdm_l_ch_data_select = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slot0\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slot1\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slot2\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slot3\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slot4\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slot5\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slot6\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slot7\00", [26 x i8] zeroinitializer }, align 32
@rt1011_tdm_data_out_select = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TDM_O_LR\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BQ1\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVOL\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BQ10\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALC\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIX\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC_SRC_LR\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC_O_LR\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC_MONO\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RSPK_BPF_LR\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIX_ADD\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ENVELOPE_FS\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SEP_O_GAIN\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ALC_BK_GAIN\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STP_V_C\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIX_ABST\00", [22 x i8] zeroinitializer }, align 32
@rt1011_tdm_adc_swap_select = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L/R\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R/L\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"L/L\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R/R\00", [28 x i8] zeroinitializer }, align 32
@rt1011_adc_data_mode_select = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.86, ptr @.str.87], [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stereo\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mono\00", [27 x i8] zeroinitializer }, align 32
@rt1011_tdm_adc_data_len_control = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1CH\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2CH\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3CH\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4CH\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5CH\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"6CH\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"7CH\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8CH\00", [28 x i8] zeroinitializer }, align 32
@rt1011_bq_drc_coeff_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.4, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s, id.name=%s, mode_idx=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt1011_bq_drc_coeff_get\00", [40 x i8] zeroinitializer }, align 32
@rt1011_bq_drc_coeff_get._entry_ptr = internal global ptr @rt1011_bq_drc_coeff_get._entry, section ".printk_index", align 4
@rt1011_bq_drc_coeff_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.98, ptr @.str.4, i32 1179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt1011_bq_drc_coeff_put\00", [40 x i8] zeroinitializer }, align 32
@rt1011_bq_drc_coeff_put._entry_ptr = internal global ptr @rt1011_bq_drc_coeff_put._entry, section ".printk_index", align 4
@rt1011_r0_load_mode_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.4, i32 1288, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"New r0 resistance about %d.%02d ohm, reg=0x%X\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt1011_r0_load_mode_put\00", [40 x i8] zeroinitializer }, align 32
@rt1011_r0_load_mode_put._entry_ptr = internal global ptr @rt1011_r0_load_mode_put._entry, section ".printk_index", align 4
@rt1011_i2s_ref_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.4, i32 1344, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"I2S Reference: Do nothing\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt1011_i2s_ref_put\00", [45 x i8] zeroinitializer }, align 32
@rt1011_i2s_ref_put._entry_ptr = internal global ptr @rt1011_i2s_ref_put._entry, section ".printk_index", align 4
@rt1011_i2s_ref = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.105], [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left Channel\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right Channel\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ISENSE SPK\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VSENSE SPK\00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PLL\00", [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BG\00", [29 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BG MBIAS\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DET VBAT\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MBIAS\00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC I\00", [26 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC V\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC T\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DITHER ADC T\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIX I\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIX V\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SUM I\00", [26 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SUM V\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIX T\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VREF\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BOOST SWR\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BGOK SWR\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VPOK SWR\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEMP REG\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1RX\00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC Power\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLK12M\00", [25 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPO\00", [28 x i8] zeroinitializer }, align 32
@rt1011_dapm_widgets = internal constant { [27 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1188 x i8] } { [27 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 802, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 802, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 802, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 804, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 804, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 804, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 806, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 806, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 806, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 806, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 806, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 806, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 806, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 806, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 806, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 806, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 806, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 806, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 808, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 808, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 808, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 790, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.128, ptr @.str.129, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 802, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 802, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 262, i8 15, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt1011_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1188 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt1011_set_component_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.4, i32 1761, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rt1011_set_component_sysclk\00", [36 x i8] zeroinitializer }, align 32
@rt1011_set_component_sysclk._entry_ptr = internal global ptr @rt1011_set_component_sysclk._entry, section ".printk_index", align 4
@rt1011_set_component_sysclk.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.136, ptr @.str.4, ptr @.str.137, i8 1, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rt1011_set_component_pll.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.138, ptr @.str.4, ptr @.str.139, i8 1, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rt1011_set_component_pll\00", [39 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@rt1011_set_component_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.4, i32 1817, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown PLL Source %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rt1011_set_component_pll._entry_ptr = internal global ptr @rt1011_set_component_pll._entry, section ".printk_index", align 4
@rt1011_set_component_pll._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.138, ptr @.str.4, i32 1824, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt1011_set_component_pll._entry_ptr.143 = internal global ptr @rt1011_set_component_pll._entry.141, section ".printk_index", align 4
@rt1011_set_component_pll.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.138, ptr @.str.4, ptr @.str.144, i8 1, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt1011-aif\00", [21 x i8] zeroinitializer }, align 32
@rt1011_aif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @rt1011_set_dai_fmt, ptr null, ptr @rt1011_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt1011_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rt1011_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.4, i32 1723, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid dai->id: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt1011_set_dai_fmt\00", [45 x i8] zeroinitializer }, align 32
@rt1011_set_dai_fmt._entry_ptr = internal global ptr @rt1011_set_dai_fmt._entry, section ".printk_index", align 4
@rt1011_set_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.4, i32 1903, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"too many rx slots or zero slot\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rt1011_set_tdm_slot\00", [44 x i8] zeroinitializer }, align 32
@rt1011_set_tdm_slot._entry_ptr = internal global ptr @rt1011_set_tdm_slot._entry, section ".printk_index", align 4
@rt1011_set_tdm_slot._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.4, i32 1946, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"too many tx slots or zero slot\0A\00", [32 x i8] zeroinitializer }, align 32
@rt1011_set_tdm_slot._entry_ptr.152 = internal global ptr @rt1011_set_tdm_slot._entry.150, section ".printk_index", align 4
@rt1011_set_tdm_slot._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.149, ptr @.str.4, i32 1954, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx slot location error\0A\00", [40 x i8] zeroinitializer }, align 32
@rt1011_set_tdm_slot._entry_ptr.155 = internal global ptr @rt1011_set_tdm_slot._entry.153, section ".printk_index", align 4
@rt1011_set_tdm_slot.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.149, ptr @.str.4, ptr @.str.154, i8 1, i8 -10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rt1011_set_tdm_slot.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.149, ptr @.str.4, ptr @.str.156, i8 1, i8 -5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"tx slot location should be paired and start from slot0/2/4/6\0A\00", [34 x i8] zeroinitializer }, align 32
@rt1011_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.4, i32 1585, ptr @.str.159, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Force using PLL \00", [47 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt1011_hw_params\00", [47 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt1011_hw_params._entry_ptr = internal global ptr @rt1011_hw_params._entry, section ".printk_index", align 4
@rt1011_hw_params._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.158, ptr @.str.4, i32 1595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported frame size: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt1011_hw_params._entry_ptr.162 = internal global ptr @rt1011_hw_params._entry.160, section ".printk_index", align 4
@rt1011_hw_params.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.158, ptr @.str.4, ptr @.str.163, i8 1, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rt1011_hw_params.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.158, ptr @.str.4, ptr @.str.164, i8 1, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"lrck is %dHz and pre_div is %d for iis %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rt1011_hw_params._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.158, ptr @.str.4, i32 1656, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rt1011_hw_params._entry_ptr.166 = internal global ptr @rt1011_hw_params._entry.165, section ".printk_index", align 4
@switch.table.rt1011_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 1, i32 2, i32 3], [44 x i8] zeroinitializer }, align 32
@switch.table.rt1011_set_tdm_slot = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1280, i32 1280, i32 1280, i32 2560, i32 1280, i32 3840], [36 x i8] zeroinitializer }, align 32
@switch.table.rt1011_hw_params = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 68, i32 0, i32 0, i32 17, i32 34, i32 0, i32 51], [36 x i8] zeroinitializer }, align 32
@switch.table.rt1011_hw_params.167 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1152, i32 0, i32 0, i32 288, i32 576, i32 0, i32 864], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [619 x i64] [i64 617, i64 32, i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14, i64 16, i64 18, i64 32, i64 34, i64 106, i64 108, i64 118, i64 120, i64 122, i64 124, i64 125, i64 240, i64 242, i64 243, i64 244, i64 256, i64 258, i64 260, i64 262, i64 263, i64 264, i64 266, i64 268, i64 270, i64 272, i64 273, i64 274, i64 276, i64 278, i64 280, i64 282, i64 284, i64 286, i64 288, i64 290, i64 292, i64 294, i64 512, i64 768, i64 770, i64 784, i64 785, i64 787, i64 788, i64 790, i64 793, i64 794, i64 795, i64 796, i64 797, i64 798, i64 799, i64 800, i64 801, i64 802, i64 804, i64 806, i64 808, i64 809, i64 810, i64 811, i64 812, i64 813, i64 814, i64 816, i64 818, i64 820, i64 832, i64 1288, i64 1290, i64 1292, i64 1293, i64 1294, i64 1295, i64 1296, i64 1297, i64 1298, i64 1302, i64 1303, i64 1304, i64 1305, i64 1306, i64 1307, i64 1308, i64 1309, i64 1310, i64 1311, i64 1312, i64 1313, i64 1314, i64 1316, i64 1318, i64 1320, i64 1322, i64 1328, i64 1330, i64 1332, i64 1333, i64 1334, i64 1336, i64 1338, i64 1340, i64 1341, i64 1342, i64 1343, i64 1344, i64 1345, i64 1346, i64 1347, i64 1348, i64 1349, i64 1350, i64 1351, i64 1352, i64 1353, i64 1354, i64 1355, i64 1356, i64 1357, i64 1358, i64 1359, i64 1384, i64 1386, i64 1536, i64 1553, i64 1554, i64 1555, i64 1556, i64 1557, i64 1558, i64 1559, i64 1560, i64 1569, i64 1570, i64 1571, i64 1572, i64 1573, i64 1574, i64 1575, i64 1576, i64 1585, i64 1586, i64 1587, i64 1588, i64 1589, i64 1590, i64 1591, i64 1592, i64 1794, i64 1796, i64 1798, i64 1800, i64 1802, i64 1808, i64 1809, i64 1810, i64 1811, i64 1824, i64 1825, i64 1826, i64 1827, i64 1828, i64 1829, i64 1830, i64 1831, i64 1832, i64 1833, i64 1840, i64 1841, i64 1842, i64 1843, i64 1844, i64 1845, i64 1846, i64 1847, i64 1848, i64 1849, i64 1856, i64 1857, i64 1858, i64 1859, i64 1860, i64 1861, i64 1862, i64 1863, i64 1864, i64 1865, i64 1872, i64 1873, i64 1874, i64 1875, i64 1876, i64 1877, i64 1878, i64 1879, i64 1880, i64 1881, i64 1888, i64 1889, i64 1890, i64 1891, i64 1892, i64 1893, i64 1894, i64 1895, i64 1896, i64 1897, i64 1904, i64 1905, i64 1906, i64 1907, i64 1908, i64 1909, i64 1910, i64 1911, i64 1912, i64 1913, i64 1920, i64 1921, i64 1922, i64 1923, i64 1924, i64 1925, i64 1926, i64 1927, i64 1928, i64 1929, i64 1936, i64 1937, i64 1938, i64 1939, i64 1940, i64 1941, i64 1942, i64 1943, i64 1944, i64 1945, i64 1952, i64 1953, i64 1954, i64 1955, i64 1956, i64 1957, i64 1958, i64 1959, i64 1960, i64 1961, i64 1968, i64 1969, i64 1970, i64 1971, i64 1972, i64 1973, i64 1974, i64 1975, i64 1976, i64 1977, i64 1984, i64 1985, i64 1986, i64 1987, i64 1988, i64 1989, i64 1990, i64 1991, i64 1992, i64 1993, i64 4096, i64 4097, i64 4098, i64 4099, i64 4100, i64 4101, i64 4102, i64 4103, i64 4104, i64 4105, i64 4106, i64 4107, i64 4108, i64 4109, i64 4110, i64 4111, i64 4112, i64 4128, i64 4129, i64 4130, i64 4131, i64 4132, i64 4608, i64 4609, i64 4610, i64 4611, i64 4612, i64 4613, i64 4614, i64 4615, i64 4616, i64 4617, i64 4618, i64 4619, i64 4620, i64 4621, i64 4622, i64 4623, i64 4624, i64 4625, i64 4626, i64 4864, i64 4865, i64 4866, i64 4867, i64 4868, i64 4869, i64 4870, i64 4871, i64 4872, i64 4873, i64 4874, i64 4875, i64 4876, i64 4877, i64 4878, i64 4879, i64 4880, i64 4881, i64 4882, i64 4883, i64 4884, i64 4885, i64 4886, i64 4887, i64 4888, i64 4889, i64 4890, i64 4898, i64 4899, i64 4900, i64 4901, i64 4902, i64 4903, i64 4904, i64 4905, i64 4906, i64 4907, i64 4908, i64 4909, i64 4910, i64 4911, i64 4912, i64 4913, i64 4914, i64 4915, i64 4916, i64 4917, i64 4918, i64 4919, i64 4920, i64 4921, i64 4922, i64 4923, i64 4924, i64 4925, i64 4926, i64 4927, i64 4928, i64 4929, i64 4930, i64 4931, i64 4932, i64 4933, i64 4934, i64 4935, i64 4936, i64 4937, i64 5376, i64 5377, i64 5378, i64 5379, i64 5380, i64 5392, i64 5393, i64 5394, i64 5395, i64 5396, i64 5397, i64 5398, i64 5399, i64 5400, i64 5401, i64 5402, i64 5403, i64 5404, i64 5405, i64 5406, i64 5407, i64 5408, i64 5409, i64 5410, i64 5411, i64 5412, i64 5413, i64 5414, i64 5415, i64 5416, i64 5417, i64 5418, i64 5419, i64 5420, i64 5421, i64 5422, i64 5423, i64 5424, i64 5425, i64 5426, i64 5427, i64 5428, i64 5429, i64 5430, i64 5431, i64 5432, i64 5433, i64 5434, i64 5435, i64 5436, i64 5437, i64 5438, i64 5439, i64 5440, i64 5441, i64 5442, i64 5443, i64 5444, i64 5445, i64 5446, i64 5447, i64 5448, i64 5458, i64 5459, i64 5460, i64 5461, i64 5462, i64 5463, i64 5464, i64 5465, i64 5466, i64 5467, i64 5468, i64 5469, i64 5470, i64 5471, i64 5472, i64 5473, i64 5474, i64 5488, i64 5489, i64 5490, i64 5491, i64 5492, i64 5493, i64 5494, i64 5495, i64 5496, i64 5497, i64 5498, i64 5499, i64 5500, i64 5501, i64 5502, i64 5503, i64 5504, i64 5505, i64 5506, i64 5507, i64 5632, i64 5633, i64 5634, i64 5635, i64 5636, i64 5637, i64 5638, i64 5639, i64 5640, i64 5641, i64 5642, i64 5643, i64 5649, i64 5650, i64 5651, i64 5652, i64 5653, i64 5654, i64 5655, i64 5665, i64 5666, i64 5667, i64 5668, i64 5669, i64 5670, i64 5671, i64 5681, i64 5682, i64 5683, i64 5684, i64 5685, i64 5686, i64 5687, i64 5688, i64 5690, i64 5691, i64 5692, i64 5693, i64 5694, i64 5695, i64 5696, i64 5697, i64 5698, i64 5699, i64 5700, i64 5701, i64 5702, i64 5703, i64 5704, i64 5712, i64 5713, i64 5714, i64 5715, i64 5716, i64 5717, i64 5718, i64 5719, i64 5720, i64 5728, i64 5729, i64 5730, i64 5731, i64 5732, i64 5733, i64 5734, i64 5735, i64 5736, i64 5744, i64 5745, i64 5746, i64 5747, i64 5748, i64 5749, i64 5750, i64 5751, i64 5752, i64 5760, i64 5761, i64 5762, i64 5763, i64 5764, i64 5765, i64 5766, i64 5767, i64 5768, i64 5776, i64 5777, i64 5778, i64 5779, i64 5780, i64 5781, i64 5782, i64 5783, i64 5784, i64 5888, i64 5889, i64 5890, i64 5891, i64 5892, i64 5893, i64 5894, i64 5895, i64 5896, i64 5904, i64 5905, i64 5906, i64 5907, i64 5908, i64 5909, i64 5910, i64 5911, i64 5912, i64 5920, i64 5921, i64 5922, i64 5923, i64 5924, i64 5925, i64 5926, i64 5927, i64 5928, i64 5936, i64 5937, i64 5938, i64 5939, i64 5940, i64 5941, i64 5942, i64 5943, i64 5944, i64 5946, i64 5947, i64 5948, i64 5949, i64 5950]
@__sancov_gen_cov_switch_values.168 = internal global [127 x i64] [i64 125, i64 32, i64 0, i64 16, i64 32, i64 34, i64 122, i64 124, i64 125, i64 244, i64 262, i64 512, i64 795, i64 796, i64 798, i64 799, i64 800, i64 801, i64 816, i64 1288, i64 1295, i64 1298, i64 1307, i64 1311, i64 1312, i64 1313, i64 1318, i64 1328, i64 1794, i64 1796, i64 1798, i64 1800, i64 1802, i64 4096, i64 4608, i64 4616, i64 4618, i64 4620, i64 4622, i64 5378, i64 5418, i64 5444, i64 5446, i64 5448, i64 5460, i64 5462, i64 5466, i64 5468, i64 5472, i64 5474, i64 5566, i64 5567, i64 5568, i64 5569, i64 5653, i64 5654, i64 5655, i64 5669, i64 5670, i64 5671, i64 5685, i64 5686, i64 5687, i64 5688, i64 5690, i64 5692, i64 5694, i64 5946, i64 6075, i64 6077, i64 6091, i64 6092, i64 6093, i64 6094, i64 6095, i64 6096, i64 6097, i64 6098, i64 6099, i64 6100, i64 6101, i64 6102, i64 6103, i64 6104, i64 6105, i64 6106, i64 6107, i64 6108, i64 6109, i64 6110, i64 6111, i64 6112, i64 6113, i64 6114, i64 6115, i64 6116, i64 6117, i64 6118, i64 6119, i64 6120, i64 6121, i64 6122, i64 6123, i64 6124, i64 6125, i64 6126, i64 6127, i64 6128, i64 6129, i64 6130, i64 6131, i64 6132, i64 6133, i64 6134, i64 6135, i64 6136, i64 6137, i64 6138, i64 6139, i64 6140, i64 6141, i64 6142, i64 6143, i64 6144, i64 6145, i64 6146, i64 6147]
@__sancov_gen_cov_switch_values.169 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.170 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.171 = internal global [10 x i64] [i64 8, i64 16, i64 0, i64 258, i64 263, i64 264, i64 270, i64 272, i64 768, i64 787]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 16, i64 814, i64 820]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.176 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.177 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.178 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.179 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 4, i64 6]
@___asan_gen_.180 = private unnamed_addr constant [18 x i8] c"rt1011_i2c_driver\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2482, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2484, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"rt1011_of_match\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2196, i32 34 }
@___asan_gen_.189 = private unnamed_addr constant [14 x i8] c"rt1011_i2c_id\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2211, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [14 x i8] c"rt1011_regmap\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2182, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2452, i32 19 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2455, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2462, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2467, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [25 x i8] c"soc_component_dev_rt1011\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2163, i32 46 }
@___asan_gen_.234 = private unnamed_addr constant [11 x i8] c"rt1011_dai\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2149, i32 34 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2425, i32 32 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2427, i32 32 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2430, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [11 x i8] c"rt1011_reg\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 64, i32 33 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2414, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2280, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2285, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2290, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2326, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2335, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant [10 x i8] c"init_list\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 37, i32 34 }
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c"rt1011_snd_controls\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1363, i32 38 }
@___asan_gen_.306 = private unnamed_addr constant [19 x i8] c"rt1011_dapm_routes\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1523, i32 40 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1365, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [23 x i8] c"rt1011_din_source_enum\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 986, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1368, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [24 x i8] c"rt1011_tdm1_l_dac1_enum\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 998, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1369, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [24 x i8] c"rt1011_tdm2_l_dac1_enum\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1000, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1372, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [26 x i8] c"rt1011_tdm1_adc1_dat_enum\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1003, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1373, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [26 x i8] c"rt1011_tdm1_adc1_loc_enum\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1005, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1374, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [23 x i8] c"rt1011_tdm_adc1_1_enum\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1026, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1375, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [23 x i8] c"rt1011_tdm_adc2_1_enum\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1028, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1378, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [26 x i8] c"rt1011_adc_dout_mode_enum\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1011, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1379, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [26 x i8] c"rt1011_tdm1_dout_len_enum\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1017, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1380, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [26 x i8] c"rt1011_tdm2_dout_len_enum\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1019, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1383, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1387, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1388, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1389, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1390, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1391, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1394, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1396, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1399, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1402, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c"rt1011_i2s_ref_enum\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1318, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant [25 x i8] c"rt1011_din_source_select\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 980, i32 27 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 981, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 982, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 983, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [28 x i8] c"rt1011_tdm_l_ch_data_select\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 995, i32 27 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 996, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 996, i32 11 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 996, i32 20 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 996, i32 29 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 996, i32 38 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 996, i32 47 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 996, i32 56 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 996, i32 65 }
@___asan_gen_.444 = private unnamed_addr constant [27 x i8] c"rt1011_tdm_data_out_select\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 989, i32 27 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 990, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 990, i32 14 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 990, i32 21 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 990, i32 29 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 990, i32 37 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 990, i32 44 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 990, i32 52 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 991, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 991, i32 14 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 991, i32 26 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 991, i32 41 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 991, i32 53 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 992, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 992, i32 16 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 992, i32 31 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 992, i32 42 }
@___asan_gen_.495 = private unnamed_addr constant [27 x i8] c"rt1011_tdm_adc_swap_select\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1022, i32 27 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1023, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1023, i32 9 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1023, i32 16 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1023, i32 23 }
@___asan_gen_.510 = private unnamed_addr constant [28 x i8] c"rt1011_adc_data_mode_select\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1008, i32 27 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1009, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1009, i32 12 }
@___asan_gen_.519 = private unnamed_addr constant [32 x i8] c"rt1011_tdm_adc_data_len_control\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1014, i32 27 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1015, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1015, i32 9 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1015, i32 16 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1015, i32 23 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1015, i32 30 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1015, i32 37 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1015, i32 44 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1015, i32 51 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1137, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1178, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1287, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1344, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant [15 x i8] c"rt1011_i2s_ref\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1314, i32 27 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1315, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1315, i32 10 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1315, i32 26 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1459, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1461, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1463, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1466, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1468, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1470, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1473, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1475, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1477, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1479, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1481, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1483, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1485, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1487, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1489, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1491, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1493, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1495, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1498, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1500, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1502, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1505, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1509, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1511, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1513, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1515, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1520, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant [20 x i8] c"rt1011_dapm_widgets\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1458, i32 41 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1761, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1769, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1788, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1817, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1823, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1828, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2151, i32 11 }
@___asan_gen_.714 = private unnamed_addr constant [19 x i8] c"rt1011_aif_dai_ops\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2143, i32 37 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1723, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1903, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1946, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1954, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 2027, i32 4 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1585, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1594, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1602, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1605, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.775 = private constant [29 x i8] c"../sound/soc/codecs/rt1011.c\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.775, i32 1656, i32 3 }
@___asan_gen_.777 = private unnamed_addr constant [32 x i8] c"switch.table.rt1011_set_dai_fmt\00", align 1
@___asan_gen_.778 = private unnamed_addr constant [33 x i8] c"switch.table.rt1011_set_tdm_slot\00", align 1
@___asan_gen_.779 = private unnamed_addr constant [30 x i8] c"switch.table.rt1011_hw_params\00", align 1
@___asan_gen_.780 = private unnamed_addr constant [34 x i8] c"switch.table.rt1011_hw_params.167\00", align 1
@llvm.compiler.used = appending global [234 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_rt1011_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_rt1011__302_2492_rt1011_i2c_driver_init6, ptr @rt1011_bq_drc_coeff_get._entry, ptr @rt1011_bq_drc_coeff_get._entry_ptr, ptr @rt1011_bq_drc_coeff_put._entry, ptr @rt1011_bq_drc_coeff_put._entry_ptr, ptr @rt1011_calibrate._entry, ptr @rt1011_calibrate._entry.21, ptr @rt1011_calibrate._entry.24, ptr @rt1011_calibrate._entry.27, ptr @rt1011_calibrate._entry.30, ptr @rt1011_calibrate._entry_ptr, ptr @rt1011_calibrate._entry_ptr.23, ptr @rt1011_calibrate._entry_ptr.26, ptr @rt1011_calibrate._entry_ptr.29, ptr @rt1011_calibrate._entry_ptr.32, ptr @rt1011_calibration_work._entry, ptr @rt1011_calibration_work._entry_ptr, ptr @rt1011_hw_params._entry, ptr @rt1011_hw_params._entry.160, ptr @rt1011_hw_params._entry.165, ptr @rt1011_hw_params._entry_ptr, ptr @rt1011_hw_params._entry_ptr.162, ptr @rt1011_hw_params._entry_ptr.166, ptr @rt1011_i2c_driver_exit, ptr @rt1011_i2c_probe._entry, ptr @rt1011_i2c_probe._entry.7, ptr @rt1011_i2c_probe._entry_ptr, ptr @rt1011_i2c_probe._entry_ptr.9, ptr @rt1011_i2s_ref_put._entry, ptr @rt1011_i2s_ref_put._entry_ptr, ptr @rt1011_r0_load_mode_put._entry, ptr @rt1011_r0_load_mode_put._entry_ptr, ptr @rt1011_set_component_pll._entry, ptr @rt1011_set_component_pll._entry.141, ptr @rt1011_set_component_pll._entry_ptr, ptr @rt1011_set_component_pll._entry_ptr.143, ptr @rt1011_set_component_sysclk._entry, ptr @rt1011_set_component_sysclk._entry_ptr, ptr @rt1011_set_dai_fmt._entry, ptr @rt1011_set_dai_fmt._entry_ptr, ptr @rt1011_set_tdm_slot._entry, ptr @rt1011_set_tdm_slot._entry.150, ptr @rt1011_set_tdm_slot._entry.153, ptr @rt1011_set_tdm_slot._entry_ptr, ptr @rt1011_set_tdm_slot._entry_ptr.152, ptr @rt1011_set_tdm_slot._entry_ptr.155, ptr @rt1011_i2c_driver, ptr @.str, ptr @rt1011_of_match, ptr @rt1011_i2c_id, ptr @rt1011_i2c_probe._key, ptr @rt1011_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @rt1011_i2c_probe.__key, ptr @.str.10, ptr @soc_component_dev_rt1011, ptr @rt1011_dai, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rt1011_reg, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @init_list, ptr @rt1011_snd_controls, ptr @rt1011_dapm_routes, ptr @.str.33, ptr @rt1011_din_source_enum, ptr @.str.34, ptr @rt1011_tdm1_l_dac1_enum, ptr @.str.35, ptr @rt1011_tdm2_l_dac1_enum, ptr @.str.36, ptr @rt1011_tdm1_adc1_dat_enum, ptr @.str.37, ptr @rt1011_tdm1_adc1_loc_enum, ptr @.str.38, ptr @rt1011_tdm_adc1_1_enum, ptr @.str.39, ptr @rt1011_tdm_adc2_1_enum, ptr @.str.40, ptr @rt1011_adc_dout_mode_enum, ptr @.str.41, ptr @rt1011_tdm1_dout_len_enum, ptr @.str.42, ptr @rt1011_tdm2_dout_len_enum, ptr @.str.43, ptr @.compoundliteral, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @rt1011_i2s_ref_enum, ptr @rt1011_din_source_select, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @rt1011_tdm_l_ch_data_select, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @rt1011_tdm_data_out_select, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @rt1011_tdm_adc_swap_select, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @rt1011_adc_data_mode_select, ptr @.str.86, ptr @.str.87, ptr @rt1011_tdm_adc_data_len_control, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @rt1011_i2s_ref, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @rt1011_dapm_widgets, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @rt1011_aif_dai_ops, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.164, ptr @switch.table.rt1011_set_dai_fmt, ptr @switch.table.rt1011_set_tdm_slot, ptr @switch.table.rt1011_hw_params, ptr @switch.table.rt1011_hw_params.167], section "llvm.metadata"
@0 = internal global [205 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_rt1011 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_reg to i32), i32 4912, i32 6144, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_calibration_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_calibrate._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_calibrate._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_calibrate._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_calibrate._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_list to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_snd_controls to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_dapm_routes to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_din_source_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_tdm1_l_dac1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_tdm2_l_dac1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_tdm1_adc1_dat_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_tdm1_adc1_loc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_tdm_adc1_1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_tdm_adc2_1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_adc_dout_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_tdm1_dout_len_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_tdm2_dout_len_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_i2s_ref_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_din_source_select to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_tdm_l_ch_data_select to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_tdm_data_out_select to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_tdm_adc_swap_select to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_adc_data_mode_select to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_tdm_adc_data_len_control to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_bq_drc_coeff_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_bq_drc_coeff_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_r0_load_mode_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_i2s_ref_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_i2s_ref to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_dapm_widgets to i32), i32 4860, i32 6048, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_set_component_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_set_component_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_set_component_pll._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_aif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_set_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_set_tdm_slot._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_set_tdm_slot._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_hw_params._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_hw_params._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt1011_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt1011_set_tdm_slot to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt1011_hw_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt1011_hw_params.167 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt1011_i2c_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt1011_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @rt1011_i2c_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !406
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %temperature_calib.i = getelementptr inbounds %struct.rt1011_priv, ptr %call.i, i32 0, i32 16
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %temperature_calib.i, i32 noundef 1) #11
  %r0_calib.i = getelementptr inbounds %struct.rt1011_priv, ptr %call.i, i32 0, i32 15
  %call.i1.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %r0_calib.i, i32 noundef 1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1011_parse_dp.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1011_i2c_probe, %if.then.i)) #11
          to label %rt1011_parse_dp.exit [label %if.then.i], !srcloc !407

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %r0_calib.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r0_calib.i, align 4
  %4 = ptrtoint ptr %temperature_calib.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %temperature_calib.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1011_parse_dp.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef %5) #11
  br label %rt1011_parse_dp.exit

rt1011_parse_dp.exit:                             ; preds = %if.then.i, %if.end
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt1011_regmap, ptr noundef nonnull @rt1011_i2c_probe._key, ptr noundef nonnull @.str.1) #11
  %regmap = getelementptr inbounds %struct.rt1011_priv, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %rt1011_parse_dp.exit
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %7) #14
  br label %cleanup

if.end10:                                         ; preds = %rt1011_parse_dp.exit
  %call12 = call i32 @regmap_read(ptr noundef %call3, i32 noundef 125, ptr noundef nonnull %val) #11
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4113, i32 %9)
  %cmp.not = icmp eq i32 %9, 4113
  br i1 %cmp.not, label %do.body19, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %9) #14
  br label %cleanup

do.body19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %cali_work = getelementptr inbounds %struct.rt1011_priv, ptr %call.i, i32 0, i32 2
  call void @__init_work(ptr noundef %cali_work, i32 noundef 0) #11
  %10 = ptrtoint ptr %cali_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %cali_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt1011_priv, ptr %call.i, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @rt1011_i2c_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry23 = getelementptr inbounds %struct.rt1011_priv, ptr %call.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.rt1011_priv, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry23, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt1011_priv, ptr %call.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rt1011_calibration_work, ptr %func, align 4
  %call28 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_rt1011, ptr noundef nonnull @rt1011_dai, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body19, %do.end16, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then6 ], [ -19, %do.end16 ], [ %call28, %do.body19 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt1011_i2c_shutdown(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.rt1011_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef 0) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt1011_calibration_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %r0_calib = getelementptr i8, ptr %work, i32 92
  %2 = ptrtoint ptr %r0_calib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r0_calib, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = zext i1 %tobool.not to i8
  tail call fastcc void @rt1011_calibrate(ptr noundef %add.ptr, i8 noundef zeroext %.)
  %cali_done = getelementptr i8, ptr %work, i32 88
  %4 = ptrtoint ptr %cali_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cali_done, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.rt1011_priv, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call1.i = tail call i32 @regmap_multi_reg_write(ptr noundef %10, ptr noundef nonnull @init_list, i32 noundef 16) #11
  %temperature_calib = getelementptr i8, ptr %work, i32 96
  %11 = ptrtoint ptr %temperature_calib to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %temperature_calib, align 4
  %13 = add i32 %12, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %13)
  %14 = icmp ult i32 %13, -255
  br i1 %14, label %entry.if.end9_crit_edge, label %if.then6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl nuw nsw i32 %12, 2
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5436, i32 noundef 1023, i32 noundef %shl) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %entry.if.end9_crit_edge
  %15 = ptrtoint ptr %r0_calib to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r0_calib, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %if.end9.if.end22_crit_edge, label %if.then12

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then12:                                        ; preds = %if.end9
  %r0_reg = getelementptr i8, ptr %work, i32 84
  %17 = ptrtoint ptr %r0_reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %r0_reg, align 4
  %div = udiv i32 -2147483648, %16
  %div1544 = lshr i32 %div, 7
  %mul = mul i32 %div, 100
  %div1845 = lshr i32 %mul, 7
  %mul19.neg = mul nsw i32 %div1544, -100
  %sub = add nsw i32 %mul19.neg, %div1845
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.16, i32 noundef %div1544, i32 noundef %sub, i32 noundef %16) #14
  %20 = ptrtoint ptr %r0_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %r0_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then12.if.end22_crit_edge, label %if.end.i

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %regmap.i46 = getelementptr i8, ptr %work, i32 -4
  %22 = ptrtoint ptr %regmap.i46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i46, align 4
  %shr.i = lshr i32 %21, 16
  %and.i = and i32 %shr.i, 511
  %call.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 5432, i32 noundef %and.i) #11
  %24 = ptrtoint ptr %regmap.i46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i46, align 4
  %26 = ptrtoint ptr %r0_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %r0_reg, align 4
  %and4.i = and i32 %27, 65535
  %call5.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 5433, i32 noundef %and4.i) #11
  %28 = ptrtoint ptr %regmap.i46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i46, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 1296, i32 noundef 16512) #11
  br label %if.end22

if.end22:                                         ; preds = %if.end.i, %if.then12.if.end22_crit_edge, %if.end9.if.end22_crit_edge
  %call23 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 264, i32 noundef 10533) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt1011_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.caserange38 [
    i32 0, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge40
    i32 4, label %entry.return_crit_edge41
    i32 6, label %entry.return_crit_edge42
    i32 8, label %entry.return_crit_edge43
    i32 10, label %entry.return_crit_edge44
    i32 12, label %entry.return_crit_edge45
    i32 14, label %entry.return_crit_edge46
    i32 16, label %entry.return_crit_edge47
    i32 18, label %entry.return_crit_edge48
    i32 32, label %entry.return_crit_edge49
    i32 34, label %entry.return_crit_edge50
    i32 106, label %entry.return_crit_edge51
    i32 108, label %entry.return_crit_edge52
    i32 118, label %entry.return_crit_edge53
    i32 120, label %entry.return_crit_edge54
    i32 122, label %entry.return_crit_edge55
    i32 124, label %entry.return_crit_edge56
    i32 125, label %entry.return_crit_edge57
    i32 240, label %entry.return_crit_edge58
    i32 242, label %entry.return_crit_edge59
    i32 243, label %entry.return_crit_edge60
    i32 244, label %entry.return_crit_edge61
    i32 256, label %entry.return_crit_edge62
    i32 258, label %entry.return_crit_edge63
    i32 260, label %entry.return_crit_edge64
    i32 262, label %entry.return_crit_edge65
    i32 263, label %entry.return_crit_edge66
    i32 264, label %entry.return_crit_edge67
    i32 266, label %entry.return_crit_edge68
    i32 268, label %entry.return_crit_edge69
    i32 270, label %entry.return_crit_edge70
    i32 272, label %entry.return_crit_edge71
    i32 273, label %entry.return_crit_edge72
    i32 274, label %entry.return_crit_edge73
    i32 276, label %entry.return_crit_edge74
    i32 278, label %entry.return_crit_edge75
    i32 280, label %entry.return_crit_edge76
    i32 282, label %entry.return_crit_edge77
    i32 284, label %entry.return_crit_edge78
    i32 286, label %entry.return_crit_edge79
    i32 288, label %entry.return_crit_edge80
    i32 290, label %entry.return_crit_edge81
    i32 292, label %entry.return_crit_edge82
    i32 294, label %entry.return_crit_edge83
    i32 512, label %entry.return_crit_edge84
    i32 768, label %entry.return_crit_edge85
    i32 770, label %entry.return_crit_edge86
    i32 784, label %entry.return_crit_edge87
    i32 785, label %entry.return_crit_edge88
    i32 787, label %entry.return_crit_edge89
    i32 788, label %entry.return_crit_edge90
    i32 790, label %entry.return_crit_edge91
    i32 793, label %entry.return_crit_edge92
    i32 794, label %entry.return_crit_edge93
    i32 795, label %entry.return_crit_edge94
    i32 796, label %entry.return_crit_edge95
    i32 797, label %entry.return_crit_edge96
    i32 798, label %entry.return_crit_edge97
    i32 799, label %entry.return_crit_edge98
    i32 800, label %entry.return_crit_edge99
    i32 801, label %entry.return_crit_edge100
    i32 802, label %entry.return_crit_edge101
    i32 804, label %entry.return_crit_edge102
    i32 806, label %entry.return_crit_edge103
    i32 808, label %entry.return_crit_edge104
    i32 809, label %entry.return_crit_edge105
    i32 810, label %entry.return_crit_edge106
    i32 811, label %entry.return_crit_edge107
    i32 812, label %entry.return_crit_edge108
    i32 813, label %entry.return_crit_edge109
    i32 814, label %entry.return_crit_edge110
    i32 816, label %entry.return_crit_edge111
    i32 818, label %entry.return_crit_edge112
    i32 820, label %entry.return_crit_edge113
    i32 832, label %entry.return_crit_edge114
    i32 1288, label %entry.return_crit_edge115
    i32 1290, label %entry.return_crit_edge116
    i32 1292, label %entry.return_crit_edge117
    i32 1293, label %entry.return_crit_edge118
    i32 1294, label %entry.return_crit_edge119
    i32 1295, label %entry.return_crit_edge120
    i32 1296, label %entry.return_crit_edge121
    i32 1297, label %entry.return_crit_edge122
    i32 1298, label %entry.return_crit_edge123
    i32 1302, label %entry.return_crit_edge124
    i32 1303, label %entry.return_crit_edge125
    i32 1304, label %entry.return_crit_edge126
    i32 1305, label %entry.return_crit_edge127
    i32 1306, label %entry.return_crit_edge128
    i32 1307, label %entry.return_crit_edge129
    i32 1308, label %entry.return_crit_edge130
    i32 1309, label %entry.return_crit_edge131
    i32 1310, label %entry.return_crit_edge132
    i32 1311, label %entry.return_crit_edge133
    i32 1312, label %entry.return_crit_edge134
    i32 1313, label %entry.return_crit_edge135
    i32 1314, label %entry.return_crit_edge136
    i32 1316, label %entry.return_crit_edge137
    i32 1318, label %entry.return_crit_edge138
    i32 1320, label %entry.return_crit_edge139
    i32 1322, label %entry.return_crit_edge140
    i32 1328, label %entry.return_crit_edge141
    i32 1330, label %entry.return_crit_edge142
    i32 1332, label %entry.return_crit_edge143
    i32 1333, label %entry.return_crit_edge144
    i32 1334, label %entry.return_crit_edge145
    i32 1336, label %entry.return_crit_edge146
    i32 1338, label %entry.return_crit_edge147
    i32 1340, label %entry.return_crit_edge148
    i32 1341, label %entry.return_crit_edge149
    i32 1342, label %entry.return_crit_edge150
    i32 1343, label %entry.return_crit_edge151
    i32 1344, label %entry.return_crit_edge152
    i32 1345, label %entry.return_crit_edge153
    i32 1346, label %entry.return_crit_edge154
    i32 1347, label %entry.return_crit_edge155
    i32 1348, label %entry.return_crit_edge156
    i32 1349, label %entry.return_crit_edge157
    i32 1350, label %entry.return_crit_edge158
    i32 1351, label %entry.return_crit_edge159
    i32 1352, label %entry.return_crit_edge160
    i32 1353, label %entry.return_crit_edge161
    i32 1354, label %entry.return_crit_edge162
    i32 1355, label %entry.return_crit_edge163
    i32 1356, label %entry.return_crit_edge164
    i32 1357, label %entry.return_crit_edge165
    i32 1358, label %entry.return_crit_edge166
    i32 1359, label %entry.return_crit_edge167
    i32 1384, label %entry.return_crit_edge168
    i32 1386, label %entry.return_crit_edge169
    i32 1536, label %entry.return_crit_edge170
    i32 1553, label %entry.return_crit_edge171
    i32 1554, label %entry.return_crit_edge172
    i32 1555, label %entry.return_crit_edge173
    i32 1556, label %entry.return_crit_edge174
    i32 1557, label %entry.return_crit_edge175
    i32 1558, label %entry.return_crit_edge176
    i32 1559, label %entry.return_crit_edge177
    i32 1560, label %entry.return_crit_edge178
    i32 1569, label %entry.return_crit_edge179
    i32 1570, label %entry.return_crit_edge180
    i32 1571, label %entry.return_crit_edge181
    i32 1572, label %entry.return_crit_edge182
    i32 1573, label %entry.return_crit_edge183
    i32 1574, label %entry.return_crit_edge184
    i32 1575, label %entry.return_crit_edge185
    i32 1576, label %entry.return_crit_edge186
    i32 1585, label %entry.return_crit_edge187
    i32 1586, label %entry.return_crit_edge188
    i32 1587, label %entry.return_crit_edge189
    i32 1588, label %entry.return_crit_edge190
    i32 1589, label %entry.return_crit_edge191
    i32 1590, label %entry.return_crit_edge192
    i32 1591, label %entry.return_crit_edge193
    i32 1592, label %entry.return_crit_edge194
    i32 1794, label %entry.return_crit_edge195
    i32 1796, label %entry.return_crit_edge196
    i32 1798, label %entry.return_crit_edge197
    i32 1800, label %entry.return_crit_edge198
    i32 1802, label %entry.return_crit_edge199
    i32 1808, label %entry.return_crit_edge200
    i32 1809, label %entry.return_crit_edge201
    i32 1810, label %entry.return_crit_edge202
    i32 1811, label %entry.return_crit_edge203
    i32 5946, label %entry.return_crit_edge204
    i32 5947, label %entry.return_crit_edge205
    i32 5948, label %entry.return_crit_edge206
    i32 5949, label %entry.return_crit_edge207
    i32 5950, label %entry.return_crit_edge208
    i32 5936, label %entry.return_crit_edge209
    i32 5937, label %entry.return_crit_edge210
    i32 5938, label %entry.return_crit_edge211
    i32 5939, label %entry.return_crit_edge212
    i32 5940, label %entry.return_crit_edge213
    i32 5941, label %entry.return_crit_edge214
    i32 5942, label %entry.return_crit_edge215
    i32 5943, label %entry.return_crit_edge216
    i32 5944, label %entry.return_crit_edge217
    i32 5920, label %entry.return_crit_edge218
    i32 5921, label %entry.return_crit_edge219
    i32 5922, label %entry.return_crit_edge220
    i32 5923, label %entry.return_crit_edge221
    i32 5924, label %entry.return_crit_edge222
    i32 5925, label %entry.return_crit_edge223
    i32 5926, label %entry.return_crit_edge224
    i32 5927, label %entry.return_crit_edge225
    i32 5928, label %entry.return_crit_edge226
    i32 5904, label %entry.return_crit_edge227
    i32 5905, label %entry.return_crit_edge228
    i32 5906, label %entry.return_crit_edge229
    i32 5907, label %entry.return_crit_edge230
    i32 5908, label %entry.return_crit_edge231
    i32 5909, label %entry.return_crit_edge232
    i32 5910, label %entry.return_crit_edge233
    i32 5911, label %entry.return_crit_edge234
    i32 5912, label %entry.return_crit_edge235
    i32 5888, label %entry.return_crit_edge236
    i32 5889, label %entry.return_crit_edge237
    i32 5890, label %entry.return_crit_edge238
    i32 5891, label %entry.return_crit_edge239
    i32 5892, label %entry.return_crit_edge240
    i32 5893, label %entry.return_crit_edge241
    i32 5894, label %entry.return_crit_edge242
    i32 5895, label %entry.return_crit_edge243
    i32 5896, label %entry.return_crit_edge244
    i32 5776, label %entry.return_crit_edge245
    i32 5777, label %entry.return_crit_edge246
    i32 5778, label %entry.return_crit_edge247
    i32 5779, label %entry.return_crit_edge248
    i32 5780, label %entry.return_crit_edge249
    i32 5781, label %entry.return_crit_edge250
    i32 5782, label %entry.return_crit_edge251
    i32 5783, label %entry.return_crit_edge252
    i32 5784, label %entry.return_crit_edge253
    i32 5760, label %entry.return_crit_edge254
    i32 5761, label %entry.return_crit_edge255
    i32 5762, label %entry.return_crit_edge256
    i32 5763, label %entry.return_crit_edge257
    i32 5764, label %entry.return_crit_edge258
    i32 5765, label %entry.return_crit_edge259
    i32 5766, label %entry.return_crit_edge260
    i32 5767, label %entry.return_crit_edge261
    i32 5768, label %entry.return_crit_edge262
    i32 5744, label %entry.return_crit_edge263
    i32 5745, label %entry.return_crit_edge264
    i32 5746, label %entry.return_crit_edge265
    i32 5747, label %entry.return_crit_edge266
    i32 5748, label %entry.return_crit_edge267
    i32 5749, label %entry.return_crit_edge268
    i32 5750, label %entry.return_crit_edge269
    i32 5751, label %entry.return_crit_edge270
    i32 5752, label %entry.return_crit_edge271
    i32 5728, label %entry.return_crit_edge272
    i32 5729, label %entry.return_crit_edge273
    i32 5730, label %entry.return_crit_edge274
    i32 5731, label %entry.return_crit_edge275
    i32 5732, label %entry.return_crit_edge276
    i32 5733, label %entry.return_crit_edge277
    i32 5734, label %entry.return_crit_edge278
    i32 5735, label %entry.return_crit_edge279
    i32 5736, label %entry.return_crit_edge280
    i32 5712, label %entry.return_crit_edge281
    i32 5713, label %entry.return_crit_edge282
    i32 5714, label %entry.return_crit_edge283
    i32 5715, label %entry.return_crit_edge284
    i32 5716, label %entry.return_crit_edge285
    i32 5717, label %entry.return_crit_edge286
    i32 5718, label %entry.return_crit_edge287
    i32 5719, label %entry.return_crit_edge288
    i32 5720, label %entry.return_crit_edge289
    i32 5690, label %entry.return_crit_edge290
    i32 5691, label %entry.return_crit_edge291
    i32 5692, label %entry.return_crit_edge292
    i32 5693, label %entry.return_crit_edge293
    i32 5694, label %entry.return_crit_edge294
    i32 5695, label %entry.return_crit_edge295
    i32 5696, label %entry.return_crit_edge296
    i32 5697, label %entry.return_crit_edge297
    i32 5698, label %entry.return_crit_edge298
    i32 5699, label %entry.return_crit_edge299
    i32 5700, label %entry.return_crit_edge300
    i32 5701, label %entry.return_crit_edge301
    i32 5702, label %entry.return_crit_edge302
    i32 5703, label %entry.return_crit_edge303
    i32 5704, label %entry.return_crit_edge304
    i32 5681, label %entry.return_crit_edge305
    i32 5682, label %entry.return_crit_edge306
    i32 5683, label %entry.return_crit_edge307
    i32 5684, label %entry.return_crit_edge308
    i32 5685, label %entry.return_crit_edge309
    i32 5686, label %entry.return_crit_edge310
    i32 5687, label %entry.return_crit_edge311
    i32 5688, label %entry.return_crit_edge312
    i32 5665, label %entry.return_crit_edge313
    i32 5666, label %entry.return_crit_edge314
    i32 5667, label %entry.return_crit_edge315
    i32 5668, label %entry.return_crit_edge316
    i32 5669, label %entry.return_crit_edge317
    i32 5670, label %entry.return_crit_edge318
    i32 5671, label %entry.return_crit_edge319
    i32 5649, label %entry.return_crit_edge320
    i32 5650, label %entry.return_crit_edge321
    i32 5651, label %entry.return_crit_edge322
    i32 5652, label %entry.return_crit_edge323
    i32 5653, label %entry.return_crit_edge324
    i32 5654, label %entry.return_crit_edge325
    i32 5655, label %entry.return_crit_edge326
    i32 5632, label %entry.return_crit_edge327
    i32 5633, label %entry.return_crit_edge328
    i32 5634, label %entry.return_crit_edge329
    i32 5635, label %entry.return_crit_edge330
    i32 5636, label %entry.return_crit_edge331
    i32 5637, label %entry.return_crit_edge332
    i32 5638, label %entry.return_crit_edge333
    i32 5639, label %entry.return_crit_edge334
    i32 5640, label %entry.return_crit_edge335
    i32 5641, label %entry.return_crit_edge336
    i32 5642, label %entry.return_crit_edge337
    i32 5643, label %entry.return_crit_edge338
    i32 5488, label %entry.return_crit_edge339
    i32 5489, label %entry.return_crit_edge340
    i32 5490, label %entry.return_crit_edge341
    i32 5491, label %entry.return_crit_edge342
    i32 5492, label %entry.return_crit_edge343
    i32 5493, label %entry.return_crit_edge344
    i32 5494, label %entry.return_crit_edge345
    i32 5495, label %entry.return_crit_edge346
    i32 5496, label %entry.return_crit_edge347
    i32 5497, label %entry.return_crit_edge348
    i32 5498, label %entry.return_crit_edge349
    i32 5499, label %entry.return_crit_edge350
    i32 5500, label %entry.return_crit_edge351
    i32 5501, label %entry.return_crit_edge352
    i32 5502, label %entry.return_crit_edge353
    i32 5503, label %entry.return_crit_edge354
    i32 5504, label %entry.return_crit_edge355
    i32 5505, label %entry.return_crit_edge356
    i32 5506, label %entry.return_crit_edge357
    i32 5507, label %entry.return_crit_edge358
    i32 5458, label %entry.return_crit_edge359
    i32 5459, label %entry.return_crit_edge360
    i32 5460, label %entry.return_crit_edge361
    i32 5461, label %entry.return_crit_edge362
    i32 5462, label %entry.return_crit_edge363
    i32 5463, label %entry.return_crit_edge364
    i32 5464, label %entry.return_crit_edge365
    i32 5465, label %entry.return_crit_edge366
    i32 5466, label %entry.return_crit_edge367
    i32 5467, label %entry.return_crit_edge368
    i32 5468, label %entry.return_crit_edge369
    i32 5469, label %entry.return_crit_edge370
    i32 5470, label %entry.return_crit_edge371
    i32 5471, label %entry.return_crit_edge372
    i32 5472, label %entry.return_crit_edge373
    i32 5473, label %entry.return_crit_edge374
    i32 5474, label %entry.return_crit_edge375
    i32 5392, label %entry.return_crit_edge376
    i32 5393, label %entry.return_crit_edge377
    i32 5394, label %entry.return_crit_edge378
    i32 5395, label %entry.return_crit_edge379
    i32 5396, label %entry.return_crit_edge380
    i32 5397, label %entry.return_crit_edge381
    i32 5398, label %entry.return_crit_edge382
    i32 5399, label %entry.return_crit_edge383
    i32 5400, label %entry.return_crit_edge384
    i32 5401, label %entry.return_crit_edge385
    i32 5402, label %entry.return_crit_edge386
    i32 5403, label %entry.return_crit_edge387
    i32 5404, label %entry.return_crit_edge388
    i32 5405, label %entry.return_crit_edge389
    i32 5406, label %entry.return_crit_edge390
    i32 5407, label %entry.return_crit_edge391
    i32 5408, label %entry.return_crit_edge392
    i32 5409, label %entry.return_crit_edge393
    i32 5410, label %entry.return_crit_edge394
    i32 5411, label %entry.return_crit_edge395
    i32 5412, label %entry.return_crit_edge396
    i32 5413, label %entry.return_crit_edge397
    i32 5414, label %entry.return_crit_edge398
    i32 5415, label %entry.return_crit_edge399
    i32 5416, label %entry.return_crit_edge400
    i32 5417, label %entry.return_crit_edge401
    i32 5418, label %entry.return_crit_edge402
    i32 5419, label %entry.return_crit_edge403
    i32 5420, label %entry.return_crit_edge404
    i32 5421, label %entry.return_crit_edge405
    i32 5422, label %entry.return_crit_edge406
    i32 5423, label %entry.return_crit_edge407
    i32 5424, label %entry.return_crit_edge408
    i32 5425, label %entry.return_crit_edge409
    i32 5426, label %entry.return_crit_edge410
    i32 5427, label %entry.return_crit_edge411
    i32 5428, label %entry.return_crit_edge412
    i32 5429, label %entry.return_crit_edge413
    i32 5430, label %entry.return_crit_edge414
    i32 5431, label %entry.return_crit_edge415
    i32 5432, label %entry.return_crit_edge416
    i32 5433, label %entry.return_crit_edge417
    i32 5434, label %entry.return_crit_edge418
    i32 5435, label %entry.return_crit_edge419
    i32 5436, label %entry.return_crit_edge420
    i32 5437, label %entry.return_crit_edge421
    i32 5438, label %entry.return_crit_edge422
    i32 5439, label %entry.return_crit_edge423
    i32 5440, label %entry.return_crit_edge424
    i32 5441, label %entry.return_crit_edge425
    i32 5442, label %entry.return_crit_edge426
    i32 5443, label %entry.return_crit_edge427
    i32 5444, label %entry.return_crit_edge428
    i32 5445, label %entry.return_crit_edge429
    i32 5446, label %entry.return_crit_edge430
    i32 5447, label %entry.return_crit_edge431
    i32 5448, label %entry.return_crit_edge432
    i32 5376, label %entry.return_crit_edge433
    i32 5377, label %entry.return_crit_edge434
    i32 5378, label %entry.return_crit_edge435
    i32 5379, label %entry.return_crit_edge436
    i32 5380, label %entry.return_crit_edge437
    i32 4898, label %entry.return_crit_edge438
    i32 4899, label %entry.return_crit_edge439
    i32 4900, label %entry.return_crit_edge440
    i32 4901, label %entry.return_crit_edge441
    i32 4902, label %entry.return_crit_edge442
    i32 4903, label %entry.return_crit_edge443
    i32 4904, label %entry.return_crit_edge444
    i32 4905, label %entry.return_crit_edge445
    i32 4906, label %entry.return_crit_edge446
    i32 4907, label %entry.return_crit_edge447
    i32 4908, label %entry.return_crit_edge448
    i32 4909, label %entry.return_crit_edge449
    i32 4910, label %entry.return_crit_edge450
    i32 4911, label %entry.return_crit_edge451
    i32 4912, label %entry.return_crit_edge452
    i32 4913, label %entry.return_crit_edge453
    i32 4914, label %entry.return_crit_edge454
    i32 4915, label %entry.return_crit_edge455
    i32 4916, label %entry.return_crit_edge456
    i32 4917, label %entry.return_crit_edge457
    i32 4918, label %entry.return_crit_edge458
    i32 4919, label %entry.return_crit_edge459
    i32 4920, label %entry.return_crit_edge460
    i32 4921, label %entry.return_crit_edge461
    i32 4922, label %entry.return_crit_edge462
    i32 4923, label %entry.return_crit_edge463
    i32 4924, label %entry.return_crit_edge464
    i32 4925, label %entry.return_crit_edge465
    i32 4926, label %entry.return_crit_edge466
    i32 4927, label %entry.return_crit_edge467
    i32 4928, label %entry.return_crit_edge468
    i32 4929, label %entry.return_crit_edge469
    i32 4930, label %entry.return_crit_edge470
    i32 4931, label %entry.return_crit_edge471
    i32 4932, label %entry.return_crit_edge472
    i32 4933, label %entry.return_crit_edge473
    i32 4934, label %entry.return_crit_edge474
    i32 4935, label %entry.return_crit_edge475
    i32 4936, label %entry.return_crit_edge476
    i32 4937, label %entry.return_crit_edge477
    i32 4864, label %entry.return_crit_edge478
    i32 4865, label %entry.return_crit_edge479
    i32 4866, label %entry.return_crit_edge480
    i32 4867, label %entry.return_crit_edge481
    i32 4868, label %entry.return_crit_edge482
    i32 4869, label %entry.return_crit_edge483
    i32 4870, label %entry.return_crit_edge484
    i32 4871, label %entry.return_crit_edge485
    i32 4872, label %entry.return_crit_edge486
    i32 4873, label %entry.return_crit_edge487
    i32 4874, label %entry.return_crit_edge488
    i32 4875, label %entry.return_crit_edge489
    i32 4876, label %entry.return_crit_edge490
    i32 4877, label %entry.return_crit_edge491
    i32 4878, label %entry.return_crit_edge492
    i32 4879, label %entry.return_crit_edge493
    i32 4880, label %entry.return_crit_edge494
    i32 4881, label %entry.return_crit_edge495
    i32 4882, label %entry.return_crit_edge496
    i32 4883, label %entry.return_crit_edge497
    i32 4884, label %entry.return_crit_edge498
    i32 4885, label %entry.return_crit_edge499
    i32 4886, label %entry.return_crit_edge500
    i32 4887, label %entry.return_crit_edge501
    i32 4888, label %entry.return_crit_edge502
    i32 4889, label %entry.return_crit_edge503
    i32 4890, label %entry.return_crit_edge504
    i32 4608, label %entry.return_crit_edge505
    i32 4609, label %entry.return_crit_edge506
    i32 4610, label %entry.return_crit_edge507
    i32 4611, label %entry.return_crit_edge508
    i32 4612, label %entry.return_crit_edge509
    i32 4613, label %entry.return_crit_edge510
    i32 4614, label %entry.return_crit_edge511
    i32 4615, label %entry.return_crit_edge512
    i32 4616, label %entry.return_crit_edge513
    i32 4617, label %entry.return_crit_edge514
    i32 4618, label %entry.return_crit_edge515
    i32 4619, label %entry.return_crit_edge516
    i32 4620, label %entry.return_crit_edge517
    i32 4621, label %entry.return_crit_edge518
    i32 4622, label %entry.return_crit_edge519
    i32 4623, label %entry.return_crit_edge520
    i32 4624, label %entry.return_crit_edge521
    i32 4625, label %entry.return_crit_edge522
    i32 4626, label %entry.return_crit_edge523
    i32 4128, label %entry.return_crit_edge524
    i32 4129, label %entry.return_crit_edge525
    i32 4130, label %entry.return_crit_edge526
    i32 4131, label %entry.return_crit_edge527
    i32 4132, label %entry.return_crit_edge528
    i32 4096, label %entry.return_crit_edge529
    i32 4097, label %entry.return_crit_edge530
    i32 4098, label %entry.return_crit_edge531
    i32 4099, label %entry.return_crit_edge532
    i32 4100, label %entry.return_crit_edge533
    i32 4101, label %entry.return_crit_edge534
    i32 4102, label %entry.return_crit_edge535
    i32 4103, label %entry.return_crit_edge536
    i32 4104, label %entry.return_crit_edge537
    i32 4105, label %entry.return_crit_edge538
    i32 4106, label %entry.return_crit_edge539
    i32 4107, label %entry.return_crit_edge540
    i32 4108, label %entry.return_crit_edge541
    i32 4109, label %entry.return_crit_edge542
    i32 4110, label %entry.return_crit_edge543
    i32 4111, label %entry.return_crit_edge544
    i32 4112, label %entry.return_crit_edge545
    i32 1984, label %entry.return_crit_edge546
    i32 1985, label %entry.return_crit_edge547
    i32 1986, label %entry.return_crit_edge548
    i32 1987, label %entry.return_crit_edge549
    i32 1988, label %entry.return_crit_edge550
    i32 1989, label %entry.return_crit_edge551
    i32 1990, label %entry.return_crit_edge552
    i32 1991, label %entry.return_crit_edge553
    i32 1992, label %entry.return_crit_edge554
    i32 1993, label %entry.return_crit_edge555
    i32 1968, label %entry.return_crit_edge556
    i32 1969, label %entry.return_crit_edge557
    i32 1970, label %entry.return_crit_edge558
    i32 1971, label %entry.return_crit_edge559
    i32 1972, label %entry.return_crit_edge560
    i32 1973, label %entry.return_crit_edge561
    i32 1974, label %entry.return_crit_edge562
    i32 1975, label %entry.return_crit_edge563
    i32 1976, label %entry.return_crit_edge564
    i32 1977, label %entry.return_crit_edge565
    i32 1952, label %entry.return_crit_edge566
    i32 1953, label %entry.return_crit_edge567
    i32 1954, label %entry.return_crit_edge568
    i32 1955, label %entry.return_crit_edge569
    i32 1956, label %entry.return_crit_edge570
    i32 1957, label %entry.return_crit_edge571
    i32 1958, label %entry.return_crit_edge572
    i32 1959, label %entry.return_crit_edge573
    i32 1960, label %entry.return_crit_edge574
    i32 1961, label %entry.return_crit_edge575
    i32 1936, label %entry.return_crit_edge576
    i32 1937, label %entry.return_crit_edge577
    i32 1938, label %entry.return_crit_edge578
    i32 1939, label %entry.return_crit_edge579
    i32 1940, label %entry.return_crit_edge580
    i32 1941, label %entry.return_crit_edge581
    i32 1942, label %entry.return_crit_edge582
    i32 1943, label %entry.return_crit_edge583
    i32 1944, label %entry.return_crit_edge584
    i32 1945, label %entry.return_crit_edge585
    i32 1920, label %entry.return_crit_edge586
    i32 1921, label %entry.return_crit_edge587
    i32 1922, label %entry.return_crit_edge588
    i32 1923, label %entry.return_crit_edge589
    i32 1924, label %entry.return_crit_edge590
    i32 1925, label %entry.return_crit_edge591
    i32 1926, label %entry.return_crit_edge592
    i32 1927, label %entry.return_crit_edge593
    i32 1928, label %entry.return_crit_edge594
    i32 1929, label %entry.return_crit_edge595
    i32 1904, label %entry.return_crit_edge596
    i32 1905, label %entry.return_crit_edge597
    i32 1906, label %entry.return_crit_edge598
    i32 1907, label %entry.return_crit_edge599
    i32 1908, label %entry.return_crit_edge600
    i32 1909, label %entry.return_crit_edge601
    i32 1910, label %entry.return_crit_edge602
    i32 1911, label %entry.return_crit_edge603
    i32 1912, label %entry.return_crit_edge604
    i32 1913, label %entry.return_crit_edge605
    i32 1888, label %entry.return_crit_edge606
    i32 1889, label %entry.return_crit_edge607
    i32 1890, label %entry.return_crit_edge608
    i32 1891, label %entry.return_crit_edge609
    i32 1892, label %entry.return_crit_edge610
    i32 1893, label %entry.return_crit_edge611
    i32 1894, label %entry.return_crit_edge612
    i32 1895, label %entry.return_crit_edge613
    i32 1896, label %entry.return_crit_edge614
    i32 1897, label %entry.return_crit_edge615
    i32 1872, label %entry.return_crit_edge616
    i32 1873, label %entry.return_crit_edge617
    i32 1874, label %entry.return_crit_edge618
    i32 1875, label %entry.return_crit_edge619
    i32 1876, label %entry.return_crit_edge620
    i32 1877, label %entry.return_crit_edge621
    i32 1878, label %entry.return_crit_edge622
    i32 1879, label %entry.return_crit_edge623
    i32 1880, label %entry.return_crit_edge624
    i32 1881, label %entry.return_crit_edge625
    i32 1856, label %entry.return_crit_edge626
    i32 1857, label %entry.return_crit_edge627
    i32 1858, label %entry.return_crit_edge628
    i32 1859, label %entry.return_crit_edge629
    i32 1860, label %entry.return_crit_edge630
    i32 1861, label %entry.return_crit_edge631
    i32 1862, label %entry.return_crit_edge632
    i32 1863, label %entry.return_crit_edge633
    i32 1864, label %entry.return_crit_edge634
    i32 1865, label %entry.return_crit_edge635
    i32 1840, label %entry.return_crit_edge636
    i32 1841, label %entry.return_crit_edge637
    i32 1842, label %entry.return_crit_edge638
    i32 1843, label %entry.return_crit_edge639
    i32 1844, label %entry.return_crit_edge640
    i32 1845, label %entry.return_crit_edge641
    i32 1846, label %entry.return_crit_edge642
    i32 1847, label %entry.return_crit_edge643
    i32 1848, label %entry.return_crit_edge644
    i32 1849, label %entry.return_crit_edge645
    i32 1824, label %entry.return_crit_edge646
    i32 1825, label %entry.return_crit_edge647
    i32 1826, label %entry.return_crit_edge648
    i32 1827, label %entry.return_crit_edge649
    i32 1828, label %entry.return_crit_edge650
    i32 1829, label %entry.return_crit_edge651
    i32 1830, label %entry.return_crit_edge652
    i32 1831, label %entry.return_crit_edge653
    i32 1832, label %entry.return_crit_edge654
    i32 1833, label %entry.return_crit_edge655
  ]

entry.return_crit_edge655:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge654:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge653:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge652:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge651:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge650:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge649:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge648:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge647:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge646:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge645:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge644:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge643:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge642:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge641:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge640:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge639:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge638:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge637:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge636:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge635:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge634:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge633:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge632:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge631:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge630:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge629:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge628:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge627:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge626:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge625:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge624:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge623:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge622:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge621:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge620:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge619:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge618:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge617:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge616:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge615:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge614:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge613:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge612:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge611:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge610:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge609:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge608:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge607:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge606:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge605:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge604:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge603:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge602:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge601:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge600:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge599:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge598:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge597:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge596:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge595:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge594:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge593:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge592:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge591:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge590:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge589:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge588:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge587:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge586:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge585:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge584:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge583:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge582:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge581:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge580:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge579:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge578:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge577:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge576:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge575:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge574:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge573:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge572:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge571:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge570:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge569:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge568:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge567:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge566:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge565:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge564:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge563:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge562:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge561:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge560:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge559:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge558:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge557:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge556:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge555:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge554:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge553:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge552:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge551:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge550:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge549:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge548:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge547:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge546:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge545:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge544:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge543:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge542:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge541:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge540:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge539:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge538:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge537:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge536:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge535:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge534:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge533:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge532:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge531:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge530:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge529:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge528:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge527:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge526:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge525:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge524:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge523:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge522:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge521:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge520:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge519:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge518:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge517:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge516:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge515:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge514:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge513:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge512:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge511:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge510:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge509:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge508:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge507:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge506:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge505:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge504:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge503:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge502:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge501:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge500:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge499:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge498:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge497:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge496:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge495:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge494:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge493:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge492:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge491:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge490:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge489:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge488:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge487:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge486:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge485:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge484:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge483:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge482:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge481:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge480:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge479:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge478:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge477:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge476:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge475:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge474:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge473:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge472:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge471:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge470:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge469:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge468:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge467:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge466:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge465:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge464:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge463:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge462:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge461:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge460:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge459:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge458:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge457:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge456:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge455:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge454:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge453:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge452:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge451:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge450:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge449:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge448:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge447:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge446:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge445:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge444:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge443:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge442:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge441:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge440:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge439:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge438:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge437:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge436:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge435:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge434:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge433:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge432:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge431:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge430:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge429:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge428:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge427:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge426:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge425:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge424:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge423:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge422:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge421:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge420:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge419:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge418:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge417:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge416:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge415:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge414:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge413:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge412:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge411:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge410:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge409:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge408:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge407:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge406:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge405:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge404:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge403:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge402:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge401:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge400:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge399:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge398:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge397:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge396:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge395:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge394:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge393:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge392:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge391:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge390:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge389:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge388:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge387:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge386:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge385:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge384:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge383:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge382:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge381:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge380:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge379:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge378:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge377:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge376:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge375:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge374:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge373:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge372:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge371:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge370:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge369:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge368:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge367:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge366:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge365:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge364:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge363:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge362:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge361:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge360:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge359:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge358:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge357:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge356:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge355:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge354:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge353:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge352:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge351:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge350:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge349:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge348:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge347:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge346:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge345:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge344:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge343:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge342:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge341:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge340:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge339:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge338:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge337:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge336:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge335:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge334:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge333:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge332:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge331:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge330:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge329:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge328:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge327:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge326:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge325:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge324:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge323:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge322:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge321:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge320:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge319:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge318:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge317:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge316:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge315:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge314:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge313:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge312:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge311:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge310:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge309:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge308:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge307:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge306:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge305:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge304:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge303:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge302:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge301:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge300:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge299:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge298:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge297:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge296:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge295:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge294:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge293:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge292:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge291:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge290:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge289:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge288:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge287:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge286:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge285:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge284:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge283:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge282:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge281:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge280:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge279:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge278:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge277:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge276:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge275:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge274:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge273:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge272:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge271:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge270:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge269:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge268:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge267:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge266:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge265:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge264:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge263:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge262:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge261:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge260:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge259:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge258:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge257:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge256:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge255:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge254:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge253:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge252:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge251:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge250:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge249:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge248:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge247:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge246:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge245:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge244:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge243:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge242:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge241:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge240:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge239:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge238:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge237:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge236:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge233:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge232:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge231:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge230:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge229:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge228:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge226:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge224:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge223:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge221:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge220:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge219:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge218:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge217:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge216:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge215:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge214:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.caserange38:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = add i32 %reg, -5520
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %1)
  %inbounds39 = icmp ult i32 %1, 106
  %2 = add i32 %reg, -6075
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %2)
  %inbounds = icmp ult i32 %2, 73
  %or.cond = or i1 %inbounds39, %inbounds
  br label %return

return:                                           ; preds = %sw.caserange38, %entry.return_crit_edge, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209, %entry.return_crit_edge210, %entry.return_crit_edge211, %entry.return_crit_edge212, %entry.return_crit_edge213, %entry.return_crit_edge214, %entry.return_crit_edge215, %entry.return_crit_edge216, %entry.return_crit_edge217, %entry.return_crit_edge218, %entry.return_crit_edge219, %entry.return_crit_edge220, %entry.return_crit_edge221, %entry.return_crit_edge222, %entry.return_crit_edge223, %entry.return_crit_edge224, %entry.return_crit_edge225, %entry.return_crit_edge226, %entry.return_crit_edge227, %entry.return_crit_edge228, %entry.return_crit_edge229, %entry.return_crit_edge230, %entry.return_crit_edge231, %entry.return_crit_edge232, %entry.return_crit_edge233, %entry.return_crit_edge234, %entry.return_crit_edge235, %entry.return_crit_edge236, %entry.return_crit_edge237, %entry.return_crit_edge238, %entry.return_crit_edge239, %entry.return_crit_edge240, %entry.return_crit_edge241, %entry.return_crit_edge242, %entry.return_crit_edge243, %entry.return_crit_edge244, %entry.return_crit_edge245, %entry.return_crit_edge246, %entry.return_crit_edge247, %entry.return_crit_edge248, %entry.return_crit_edge249, %entry.return_crit_edge250, %entry.return_crit_edge251, %entry.return_crit_edge252, %entry.return_crit_edge253, %entry.return_crit_edge254, %entry.return_crit_edge255, %entry.return_crit_edge256, %entry.return_crit_edge257, %entry.return_crit_edge258, %entry.return_crit_edge259, %entry.return_crit_edge260, %entry.return_crit_edge261, %entry.return_crit_edge262, %entry.return_crit_edge263, %entry.return_crit_edge264, %entry.return_crit_edge265, %entry.return_crit_edge266, %entry.return_crit_edge267, %entry.return_crit_edge268, %entry.return_crit_edge269, %entry.return_crit_edge270, %entry.return_crit_edge271, %entry.return_crit_edge272, %entry.return_crit_edge273, %entry.return_crit_edge274, %entry.return_crit_edge275, %entry.return_crit_edge276, %entry.return_crit_edge277, %entry.return_crit_edge278, %entry.return_crit_edge279, %entry.return_crit_edge280, %entry.return_crit_edge281, %entry.return_crit_edge282, %entry.return_crit_edge283, %entry.return_crit_edge284, %entry.return_crit_edge285, %entry.return_crit_edge286, %entry.return_crit_edge287, %entry.return_crit_edge288, %entry.return_crit_edge289, %entry.return_crit_edge290, %entry.return_crit_edge291, %entry.return_crit_edge292, %entry.return_crit_edge293, %entry.return_crit_edge294, %entry.return_crit_edge295, %entry.return_crit_edge296, %entry.return_crit_edge297, %entry.return_crit_edge298, %entry.return_crit_edge299, %entry.return_crit_edge300, %entry.return_crit_edge301, %entry.return_crit_edge302, %entry.return_crit_edge303, %entry.return_crit_edge304, %entry.return_crit_edge305, %entry.return_crit_edge306, %entry.return_crit_edge307, %entry.return_crit_edge308, %entry.return_crit_edge309, %entry.return_crit_edge310, %entry.return_crit_edge311, %entry.return_crit_edge312, %entry.return_crit_edge313, %entry.return_crit_edge314, %entry.return_crit_edge315, %entry.return_crit_edge316, %entry.return_crit_edge317, %entry.return_crit_edge318, %entry.return_crit_edge319, %entry.return_crit_edge320, %entry.return_crit_edge321, %entry.return_crit_edge322, %entry.return_crit_edge323, %entry.return_crit_edge324, %entry.return_crit_edge325, %entry.return_crit_edge326, %entry.return_crit_edge327, %entry.return_crit_edge328, %entry.return_crit_edge329, %entry.return_crit_edge330, %entry.return_crit_edge331, %entry.return_crit_edge332, %entry.return_crit_edge333, %entry.return_crit_edge334, %entry.return_crit_edge335, %entry.return_crit_edge336, %entry.return_crit_edge337, %entry.return_crit_edge338, %entry.return_crit_edge339, %entry.return_crit_edge340, %entry.return_crit_edge341, %entry.return_crit_edge342, %entry.return_crit_edge343, %entry.return_crit_edge344, %entry.return_crit_edge345, %entry.return_crit_edge346, %entry.return_crit_edge347, %entry.return_crit_edge348, %entry.return_crit_edge349, %entry.return_crit_edge350, %entry.return_crit_edge351, %entry.return_crit_edge352, %entry.return_crit_edge353, %entry.return_crit_edge354, %entry.return_crit_edge355, %entry.return_crit_edge356, %entry.return_crit_edge357, %entry.return_crit_edge358, %entry.return_crit_edge359, %entry.return_crit_edge360, %entry.return_crit_edge361, %entry.return_crit_edge362, %entry.return_crit_edge363, %entry.return_crit_edge364, %entry.return_crit_edge365, %entry.return_crit_edge366, %entry.return_crit_edge367, %entry.return_crit_edge368, %entry.return_crit_edge369, %entry.return_crit_edge370, %entry.return_crit_edge371, %entry.return_crit_edge372, %entry.return_crit_edge373, %entry.return_crit_edge374, %entry.return_crit_edge375, %entry.return_crit_edge376, %entry.return_crit_edge377, %entry.return_crit_edge378, %entry.return_crit_edge379, %entry.return_crit_edge380, %entry.return_crit_edge381, %entry.return_crit_edge382, %entry.return_crit_edge383, %entry.return_crit_edge384, %entry.return_crit_edge385, %entry.return_crit_edge386, %entry.return_crit_edge387, %entry.return_crit_edge388, %entry.return_crit_edge389, %entry.return_crit_edge390, %entry.return_crit_edge391, %entry.return_crit_edge392, %entry.return_crit_edge393, %entry.return_crit_edge394, %entry.return_crit_edge395, %entry.return_crit_edge396, %entry.return_crit_edge397, %entry.return_crit_edge398, %entry.return_crit_edge399, %entry.return_crit_edge400, %entry.return_crit_edge401, %entry.return_crit_edge402, %entry.return_crit_edge403, %entry.return_crit_edge404, %entry.return_crit_edge405, %entry.return_crit_edge406, %entry.return_crit_edge407, %entry.return_crit_edge408, %entry.return_crit_edge409, %entry.return_crit_edge410, %entry.return_crit_edge411, %entry.return_crit_edge412, %entry.return_crit_edge413, %entry.return_crit_edge414, %entry.return_crit_edge415, %entry.return_crit_edge416, %entry.return_crit_edge417, %entry.return_crit_edge418, %entry.return_crit_edge419, %entry.return_crit_edge420, %entry.return_crit_edge421, %entry.return_crit_edge422, %entry.return_crit_edge423, %entry.return_crit_edge424, %entry.return_crit_edge425, %entry.return_crit_edge426, %entry.return_crit_edge427, %entry.return_crit_edge428, %entry.return_crit_edge429, %entry.return_crit_edge430, %entry.return_crit_edge431, %entry.return_crit_edge432, %entry.return_crit_edge433, %entry.return_crit_edge434, %entry.return_crit_edge435, %entry.return_crit_edge436, %entry.return_crit_edge437, %entry.return_crit_edge438, %entry.return_crit_edge439, %entry.return_crit_edge440, %entry.return_crit_edge441, %entry.return_crit_edge442, %entry.return_crit_edge443, %entry.return_crit_edge444, %entry.return_crit_edge445, %entry.return_crit_edge446, %entry.return_crit_edge447, %entry.return_crit_edge448, %entry.return_crit_edge449, %entry.return_crit_edge450, %entry.return_crit_edge451, %entry.return_crit_edge452, %entry.return_crit_edge453, %entry.return_crit_edge454, %entry.return_crit_edge455, %entry.return_crit_edge456, %entry.return_crit_edge457, %entry.return_crit_edge458, %entry.return_crit_edge459, %entry.return_crit_edge460, %entry.return_crit_edge461, %entry.return_crit_edge462, %entry.return_crit_edge463, %entry.return_crit_edge464, %entry.return_crit_edge465, %entry.return_crit_edge466, %entry.return_crit_edge467, %entry.return_crit_edge468, %entry.return_crit_edge469, %entry.return_crit_edge470, %entry.return_crit_edge471, %entry.return_crit_edge472, %entry.return_crit_edge473, %entry.return_crit_edge474, %entry.return_crit_edge475, %entry.return_crit_edge476, %entry.return_crit_edge477, %entry.return_crit_edge478, %entry.return_crit_edge479, %entry.return_crit_edge480, %entry.return_crit_edge481, %entry.return_crit_edge482, %entry.return_crit_edge483, %entry.return_crit_edge484, %entry.return_crit_edge485, %entry.return_crit_edge486, %entry.return_crit_edge487, %entry.return_crit_edge488, %entry.return_crit_edge489, %entry.return_crit_edge490, %entry.return_crit_edge491, %entry.return_crit_edge492, %entry.return_crit_edge493, %entry.return_crit_edge494, %entry.return_crit_edge495, %entry.return_crit_edge496, %entry.return_crit_edge497, %entry.return_crit_edge498, %entry.return_crit_edge499, %entry.return_crit_edge500, %entry.return_crit_edge501, %entry.return_crit_edge502, %entry.return_crit_edge503, %entry.return_crit_edge504, %entry.return_crit_edge505, %entry.return_crit_edge506, %entry.return_crit_edge507, %entry.return_crit_edge508, %entry.return_crit_edge509, %entry.return_crit_edge510, %entry.return_crit_edge511, %entry.return_crit_edge512, %entry.return_crit_edge513, %entry.return_crit_edge514, %entry.return_crit_edge515, %entry.return_crit_edge516, %entry.return_crit_edge517, %entry.return_crit_edge518, %entry.return_crit_edge519, %entry.return_crit_edge520, %entry.return_crit_edge521, %entry.return_crit_edge522, %entry.return_crit_edge523, %entry.return_crit_edge524, %entry.return_crit_edge525, %entry.return_crit_edge526, %entry.return_crit_edge527, %entry.return_crit_edge528, %entry.return_crit_edge529, %entry.return_crit_edge530, %entry.return_crit_edge531, %entry.return_crit_edge532, %entry.return_crit_edge533, %entry.return_crit_edge534, %entry.return_crit_edge535, %entry.return_crit_edge536, %entry.return_crit_edge537, %entry.return_crit_edge538, %entry.return_crit_edge539, %entry.return_crit_edge540, %entry.return_crit_edge541, %entry.return_crit_edge542, %entry.return_crit_edge543, %entry.return_crit_edge544, %entry.return_crit_edge545, %entry.return_crit_edge546, %entry.return_crit_edge547, %entry.return_crit_edge548, %entry.return_crit_edge549, %entry.return_crit_edge550, %entry.return_crit_edge551, %entry.return_crit_edge552, %entry.return_crit_edge553, %entry.return_crit_edge554, %entry.return_crit_edge555, %entry.return_crit_edge556, %entry.return_crit_edge557, %entry.return_crit_edge558, %entry.return_crit_edge559, %entry.return_crit_edge560, %entry.return_crit_edge561, %entry.return_crit_edge562, %entry.return_crit_edge563, %entry.return_crit_edge564, %entry.return_crit_edge565, %entry.return_crit_edge566, %entry.return_crit_edge567, %entry.return_crit_edge568, %entry.return_crit_edge569, %entry.return_crit_edge570, %entry.return_crit_edge571, %entry.return_crit_edge572, %entry.return_crit_edge573, %entry.return_crit_edge574, %entry.return_crit_edge575, %entry.return_crit_edge576, %entry.return_crit_edge577, %entry.return_crit_edge578, %entry.return_crit_edge579, %entry.return_crit_edge580, %entry.return_crit_edge581, %entry.return_crit_edge582, %entry.return_crit_edge583, %entry.return_crit_edge584, %entry.return_crit_edge585, %entry.return_crit_edge586, %entry.return_crit_edge587, %entry.return_crit_edge588, %entry.return_crit_edge589, %entry.return_crit_edge590, %entry.return_crit_edge591, %entry.return_crit_edge592, %entry.return_crit_edge593, %entry.return_crit_edge594, %entry.return_crit_edge595, %entry.return_crit_edge596, %entry.return_crit_edge597, %entry.return_crit_edge598, %entry.return_crit_edge599, %entry.return_crit_edge600, %entry.return_crit_edge601, %entry.return_crit_edge602, %entry.return_crit_edge603, %entry.return_crit_edge604, %entry.return_crit_edge605, %entry.return_crit_edge606, %entry.return_crit_edge607, %entry.return_crit_edge608, %entry.return_crit_edge609, %entry.return_crit_edge610, %entry.return_crit_edge611, %entry.return_crit_edge612, %entry.return_crit_edge613, %entry.return_crit_edge614, %entry.return_crit_edge615, %entry.return_crit_edge616, %entry.return_crit_edge617, %entry.return_crit_edge618, %entry.return_crit_edge619, %entry.return_crit_edge620, %entry.return_crit_edge621, %entry.return_crit_edge622, %entry.return_crit_edge623, %entry.return_crit_edge624, %entry.return_crit_edge625, %entry.return_crit_edge626, %entry.return_crit_edge627, %entry.return_crit_edge628, %entry.return_crit_edge629, %entry.return_crit_edge630, %entry.return_crit_edge631, %entry.return_crit_edge632, %entry.return_crit_edge633, %entry.return_crit_edge634, %entry.return_crit_edge635, %entry.return_crit_edge636, %entry.return_crit_edge637, %entry.return_crit_edge638, %entry.return_crit_edge639, %entry.return_crit_edge640, %entry.return_crit_edge641, %entry.return_crit_edge642, %entry.return_crit_edge643, %entry.return_crit_edge644, %entry.return_crit_edge645, %entry.return_crit_edge646, %entry.return_crit_edge647, %entry.return_crit_edge648, %entry.return_crit_edge649, %entry.return_crit_edge650, %entry.return_crit_edge651, %entry.return_crit_edge652, %entry.return_crit_edge653, %entry.return_crit_edge654, %entry.return_crit_edge655
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ], [ true, %entry.return_crit_edge210 ], [ true, %entry.return_crit_edge211 ], [ true, %entry.return_crit_edge212 ], [ true, %entry.return_crit_edge213 ], [ true, %entry.return_crit_edge214 ], [ true, %entry.return_crit_edge215 ], [ true, %entry.return_crit_edge216 ], [ true, %entry.return_crit_edge217 ], [ true, %entry.return_crit_edge218 ], [ true, %entry.return_crit_edge219 ], [ true, %entry.return_crit_edge220 ], [ true, %entry.return_crit_edge221 ], [ true, %entry.return_crit_edge222 ], [ true, %entry.return_crit_edge223 ], [ true, %entry.return_crit_edge224 ], [ true, %entry.return_crit_edge225 ], [ true, %entry.return_crit_edge226 ], [ true, %entry.return_crit_edge227 ], [ true, %entry.return_crit_edge228 ], [ true, %entry.return_crit_edge229 ], [ true, %entry.return_crit_edge230 ], [ true, %entry.return_crit_edge231 ], [ true, %entry.return_crit_edge232 ], [ true, %entry.return_crit_edge233 ], [ true, %entry.return_crit_edge234 ], [ true, %entry.return_crit_edge235 ], [ true, %entry.return_crit_edge236 ], [ true, %entry.return_crit_edge237 ], [ true, %entry.return_crit_edge238 ], [ true, %entry.return_crit_edge239 ], [ true, %entry.return_crit_edge240 ], [ true, %entry.return_crit_edge241 ], [ true, %entry.return_crit_edge242 ], [ true, %entry.return_crit_edge243 ], [ true, %entry.return_crit_edge244 ], [ true, %entry.return_crit_edge245 ], [ true, %entry.return_crit_edge246 ], [ true, %entry.return_crit_edge247 ], [ true, %entry.return_crit_edge248 ], [ true, %entry.return_crit_edge249 ], [ true, %entry.return_crit_edge250 ], [ true, %entry.return_crit_edge251 ], [ true, %entry.return_crit_edge252 ], [ true, %entry.return_crit_edge253 ], [ true, %entry.return_crit_edge254 ], [ true, %entry.return_crit_edge255 ], [ true, %entry.return_crit_edge256 ], [ true, %entry.return_crit_edge257 ], [ true, %entry.return_crit_edge258 ], [ true, %entry.return_crit_edge259 ], [ true, %entry.return_crit_edge260 ], [ true, %entry.return_crit_edge261 ], [ true, %entry.return_crit_edge262 ], [ true, %entry.return_crit_edge263 ], [ true, %entry.return_crit_edge264 ], [ true, %entry.return_crit_edge265 ], [ true, %entry.return_crit_edge266 ], [ true, %entry.return_crit_edge267 ], [ true, %entry.return_crit_edge268 ], [ true, %entry.return_crit_edge269 ], [ true, %entry.return_crit_edge270 ], [ true, %entry.return_crit_edge271 ], [ true, %entry.return_crit_edge272 ], [ true, %entry.return_crit_edge273 ], [ true, %entry.return_crit_edge274 ], [ true, %entry.return_crit_edge275 ], [ true, %entry.return_crit_edge276 ], [ true, %entry.return_crit_edge277 ], [ true, %entry.return_crit_edge278 ], [ true, %entry.return_crit_edge279 ], [ true, %entry.return_crit_edge280 ], [ true, %entry.return_crit_edge281 ], [ true, %entry.return_crit_edge282 ], [ true, %entry.return_crit_edge283 ], [ true, %entry.return_crit_edge284 ], [ true, %entry.return_crit_edge285 ], [ true, %entry.return_crit_edge286 ], [ true, %entry.return_crit_edge287 ], [ true, %entry.return_crit_edge288 ], [ true, %entry.return_crit_edge289 ], [ true, %entry.return_crit_edge290 ], [ true, %entry.return_crit_edge291 ], [ true, %entry.return_crit_edge292 ], [ true, %entry.return_crit_edge293 ], [ true, %entry.return_crit_edge294 ], [ true, %entry.return_crit_edge295 ], [ true, %entry.return_crit_edge296 ], [ true, %entry.return_crit_edge297 ], [ true, %entry.return_crit_edge298 ], [ true, %entry.return_crit_edge299 ], [ true, %entry.return_crit_edge300 ], [ true, %entry.return_crit_edge301 ], [ true, %entry.return_crit_edge302 ], [ true, %entry.return_crit_edge303 ], [ true, %entry.return_crit_edge304 ], [ true, %entry.return_crit_edge305 ], [ true, %entry.return_crit_edge306 ], [ true, %entry.return_crit_edge307 ], [ true, %entry.return_crit_edge308 ], [ true, %entry.return_crit_edge309 ], [ true, %entry.return_crit_edge310 ], [ true, %entry.return_crit_edge311 ], [ true, %entry.return_crit_edge312 ], [ true, %entry.return_crit_edge313 ], [ true, %entry.return_crit_edge314 ], [ true, %entry.return_crit_edge315 ], [ true, %entry.return_crit_edge316 ], [ true, %entry.return_crit_edge317 ], [ true, %entry.return_crit_edge318 ], [ true, %entry.return_crit_edge319 ], [ true, %entry.return_crit_edge320 ], [ true, %entry.return_crit_edge321 ], [ true, %entry.return_crit_edge322 ], [ true, %entry.return_crit_edge323 ], [ true, %entry.return_crit_edge324 ], [ true, %entry.return_crit_edge325 ], [ true, %entry.return_crit_edge326 ], [ true, %entry.return_crit_edge327 ], [ true, %entry.return_crit_edge328 ], [ true, %entry.return_crit_edge329 ], [ true, %entry.return_crit_edge330 ], [ true, %entry.return_crit_edge331 ], [ true, %entry.return_crit_edge332 ], [ true, %entry.return_crit_edge333 ], [ true, %entry.return_crit_edge334 ], [ true, %entry.return_crit_edge335 ], [ true, %entry.return_crit_edge336 ], [ true, %entry.return_crit_edge337 ], [ true, %entry.return_crit_edge338 ], [ true, %entry.return_crit_edge339 ], [ true, %entry.return_crit_edge340 ], [ true, %entry.return_crit_edge341 ], [ true, %entry.return_crit_edge342 ], [ true, %entry.return_crit_edge343 ], [ true, %entry.return_crit_edge344 ], [ true, %entry.return_crit_edge345 ], [ true, %entry.return_crit_edge346 ], [ true, %entry.return_crit_edge347 ], [ true, %entry.return_crit_edge348 ], [ true, %entry.return_crit_edge349 ], [ true, %entry.return_crit_edge350 ], [ true, %entry.return_crit_edge351 ], [ true, %entry.return_crit_edge352 ], [ true, %entry.return_crit_edge353 ], [ true, %entry.return_crit_edge354 ], [ true, %entry.return_crit_edge355 ], [ true, %entry.return_crit_edge356 ], [ true, %entry.return_crit_edge357 ], [ true, %entry.return_crit_edge358 ], [ true, %entry.return_crit_edge359 ], [ true, %entry.return_crit_edge360 ], [ true, %entry.return_crit_edge361 ], [ true, %entry.return_crit_edge362 ], [ true, %entry.return_crit_edge363 ], [ true, %entry.return_crit_edge364 ], [ true, %entry.return_crit_edge365 ], [ true, %entry.return_crit_edge366 ], [ true, %entry.return_crit_edge367 ], [ true, %entry.return_crit_edge368 ], [ true, %entry.return_crit_edge369 ], [ true, %entry.return_crit_edge370 ], [ true, %entry.return_crit_edge371 ], [ true, %entry.return_crit_edge372 ], [ true, %entry.return_crit_edge373 ], [ true, %entry.return_crit_edge374 ], [ true, %entry.return_crit_edge375 ], [ true, %entry.return_crit_edge376 ], [ true, %entry.return_crit_edge377 ], [ true, %entry.return_crit_edge378 ], [ true, %entry.return_crit_edge379 ], [ true, %entry.return_crit_edge380 ], [ true, %entry.return_crit_edge381 ], [ true, %entry.return_crit_edge382 ], [ true, %entry.return_crit_edge383 ], [ true, %entry.return_crit_edge384 ], [ true, %entry.return_crit_edge385 ], [ true, %entry.return_crit_edge386 ], [ true, %entry.return_crit_edge387 ], [ true, %entry.return_crit_edge388 ], [ true, %entry.return_crit_edge389 ], [ true, %entry.return_crit_edge390 ], [ true, %entry.return_crit_edge391 ], [ true, %entry.return_crit_edge392 ], [ true, %entry.return_crit_edge393 ], [ true, %entry.return_crit_edge394 ], [ true, %entry.return_crit_edge395 ], [ true, %entry.return_crit_edge396 ], [ true, %entry.return_crit_edge397 ], [ true, %entry.return_crit_edge398 ], [ true, %entry.return_crit_edge399 ], [ true, %entry.return_crit_edge400 ], [ true, %entry.return_crit_edge401 ], [ true, %entry.return_crit_edge402 ], [ true, %entry.return_crit_edge403 ], [ true, %entry.return_crit_edge404 ], [ true, %entry.return_crit_edge405 ], [ true, %entry.return_crit_edge406 ], [ true, %entry.return_crit_edge407 ], [ true, %entry.return_crit_edge408 ], [ true, %entry.return_crit_edge409 ], [ true, %entry.return_crit_edge410 ], [ true, %entry.return_crit_edge411 ], [ true, %entry.return_crit_edge412 ], [ true, %entry.return_crit_edge413 ], [ true, %entry.return_crit_edge414 ], [ true, %entry.return_crit_edge415 ], [ true, %entry.return_crit_edge416 ], [ true, %entry.return_crit_edge417 ], [ true, %entry.return_crit_edge418 ], [ true, %entry.return_crit_edge419 ], [ true, %entry.return_crit_edge420 ], [ true, %entry.return_crit_edge421 ], [ true, %entry.return_crit_edge422 ], [ true, %entry.return_crit_edge423 ], [ true, %entry.return_crit_edge424 ], [ true, %entry.return_crit_edge425 ], [ true, %entry.return_crit_edge426 ], [ true, %entry.return_crit_edge427 ], [ true, %entry.return_crit_edge428 ], [ true, %entry.return_crit_edge429 ], [ true, %entry.return_crit_edge430 ], [ true, %entry.return_crit_edge431 ], [ true, %entry.return_crit_edge432 ], [ true, %entry.return_crit_edge433 ], [ true, %entry.return_crit_edge434 ], [ true, %entry.return_crit_edge435 ], [ true, %entry.return_crit_edge436 ], [ true, %entry.return_crit_edge437 ], [ true, %entry.return_crit_edge438 ], [ true, %entry.return_crit_edge439 ], [ true, %entry.return_crit_edge440 ], [ true, %entry.return_crit_edge441 ], [ true, %entry.return_crit_edge442 ], [ true, %entry.return_crit_edge443 ], [ true, %entry.return_crit_edge444 ], [ true, %entry.return_crit_edge445 ], [ true, %entry.return_crit_edge446 ], [ true, %entry.return_crit_edge447 ], [ true, %entry.return_crit_edge448 ], [ true, %entry.return_crit_edge449 ], [ true, %entry.return_crit_edge450 ], [ true, %entry.return_crit_edge451 ], [ true, %entry.return_crit_edge452 ], [ true, %entry.return_crit_edge453 ], [ true, %entry.return_crit_edge454 ], [ true, %entry.return_crit_edge455 ], [ true, %entry.return_crit_edge456 ], [ true, %entry.return_crit_edge457 ], [ true, %entry.return_crit_edge458 ], [ true, %entry.return_crit_edge459 ], [ true, %entry.return_crit_edge460 ], [ true, %entry.return_crit_edge461 ], [ true, %entry.return_crit_edge462 ], [ true, %entry.return_crit_edge463 ], [ true, %entry.return_crit_edge464 ], [ true, %entry.return_crit_edge465 ], [ true, %entry.return_crit_edge466 ], [ true, %entry.return_crit_edge467 ], [ true, %entry.return_crit_edge468 ], [ true, %entry.return_crit_edge469 ], [ true, %entry.return_crit_edge470 ], [ true, %entry.return_crit_edge471 ], [ true, %entry.return_crit_edge472 ], [ true, %entry.return_crit_edge473 ], [ true, %entry.return_crit_edge474 ], [ true, %entry.return_crit_edge475 ], [ true, %entry.return_crit_edge476 ], [ true, %entry.return_crit_edge477 ], [ true, %entry.return_crit_edge478 ], [ true, %entry.return_crit_edge479 ], [ true, %entry.return_crit_edge480 ], [ true, %entry.return_crit_edge481 ], [ true, %entry.return_crit_edge482 ], [ true, %entry.return_crit_edge483 ], [ true, %entry.return_crit_edge484 ], [ true, %entry.return_crit_edge485 ], [ true, %entry.return_crit_edge486 ], [ true, %entry.return_crit_edge487 ], [ true, %entry.return_crit_edge488 ], [ true, %entry.return_crit_edge489 ], [ true, %entry.return_crit_edge490 ], [ true, %entry.return_crit_edge491 ], [ true, %entry.return_crit_edge492 ], [ true, %entry.return_crit_edge493 ], [ true, %entry.return_crit_edge494 ], [ true, %entry.return_crit_edge495 ], [ true, %entry.return_crit_edge496 ], [ true, %entry.return_crit_edge497 ], [ true, %entry.return_crit_edge498 ], [ true, %entry.return_crit_edge499 ], [ true, %entry.return_crit_edge500 ], [ true, %entry.return_crit_edge501 ], [ true, %entry.return_crit_edge502 ], [ true, %entry.return_crit_edge503 ], [ true, %entry.return_crit_edge504 ], [ true, %entry.return_crit_edge505 ], [ true, %entry.return_crit_edge506 ], [ true, %entry.return_crit_edge507 ], [ true, %entry.return_crit_edge508 ], [ true, %entry.return_crit_edge509 ], [ true, %entry.return_crit_edge510 ], [ true, %entry.return_crit_edge511 ], [ true, %entry.return_crit_edge512 ], [ true, %entry.return_crit_edge513 ], [ true, %entry.return_crit_edge514 ], [ true, %entry.return_crit_edge515 ], [ true, %entry.return_crit_edge516 ], [ true, %entry.return_crit_edge517 ], [ true, %entry.return_crit_edge518 ], [ true, %entry.return_crit_edge519 ], [ true, %entry.return_crit_edge520 ], [ true, %entry.return_crit_edge521 ], [ true, %entry.return_crit_edge522 ], [ true, %entry.return_crit_edge523 ], [ true, %entry.return_crit_edge524 ], [ true, %entry.return_crit_edge525 ], [ true, %entry.return_crit_edge526 ], [ true, %entry.return_crit_edge527 ], [ true, %entry.return_crit_edge528 ], [ true, %entry.return_crit_edge529 ], [ true, %entry.return_crit_edge530 ], [ true, %entry.return_crit_edge531 ], [ true, %entry.return_crit_edge532 ], [ true, %entry.return_crit_edge533 ], [ true, %entry.return_crit_edge534 ], [ true, %entry.return_crit_edge535 ], [ true, %entry.return_crit_edge536 ], [ true, %entry.return_crit_edge537 ], [ true, %entry.return_crit_edge538 ], [ true, %entry.return_crit_edge539 ], [ true, %entry.return_crit_edge540 ], [ true, %entry.return_crit_edge541 ], [ true, %entry.return_crit_edge542 ], [ true, %entry.return_crit_edge543 ], [ true, %entry.return_crit_edge544 ], [ true, %entry.return_crit_edge545 ], [ true, %entry.return_crit_edge546 ], [ true, %entry.return_crit_edge547 ], [ true, %entry.return_crit_edge548 ], [ true, %entry.return_crit_edge549 ], [ true, %entry.return_crit_edge550 ], [ true, %entry.return_crit_edge551 ], [ true, %entry.return_crit_edge552 ], [ true, %entry.return_crit_edge553 ], [ true, %entry.return_crit_edge554 ], [ true, %entry.return_crit_edge555 ], [ true, %entry.return_crit_edge556 ], [ true, %entry.return_crit_edge557 ], [ true, %entry.return_crit_edge558 ], [ true, %entry.return_crit_edge559 ], [ true, %entry.return_crit_edge560 ], [ true, %entry.return_crit_edge561 ], [ true, %entry.return_crit_edge562 ], [ true, %entry.return_crit_edge563 ], [ true, %entry.return_crit_edge564 ], [ true, %entry.return_crit_edge565 ], [ true, %entry.return_crit_edge566 ], [ true, %entry.return_crit_edge567 ], [ true, %entry.return_crit_edge568 ], [ true, %entry.return_crit_edge569 ], [ true, %entry.return_crit_edge570 ], [ true, %entry.return_crit_edge571 ], [ true, %entry.return_crit_edge572 ], [ true, %entry.return_crit_edge573 ], [ true, %entry.return_crit_edge574 ], [ true, %entry.return_crit_edge575 ], [ true, %entry.return_crit_edge576 ], [ true, %entry.return_crit_edge577 ], [ true, %entry.return_crit_edge578 ], [ true, %entry.return_crit_edge579 ], [ true, %entry.return_crit_edge580 ], [ true, %entry.return_crit_edge581 ], [ true, %entry.return_crit_edge582 ], [ true, %entry.return_crit_edge583 ], [ true, %entry.return_crit_edge584 ], [ true, %entry.return_crit_edge585 ], [ true, %entry.return_crit_edge586 ], [ true, %entry.return_crit_edge587 ], [ true, %entry.return_crit_edge588 ], [ true, %entry.return_crit_edge589 ], [ true, %entry.return_crit_edge590 ], [ true, %entry.return_crit_edge591 ], [ true, %entry.return_crit_edge592 ], [ true, %entry.return_crit_edge593 ], [ true, %entry.return_crit_edge594 ], [ true, %entry.return_crit_edge595 ], [ true, %entry.return_crit_edge596 ], [ true, %entry.return_crit_edge597 ], [ true, %entry.return_crit_edge598 ], [ true, %entry.return_crit_edge599 ], [ true, %entry.return_crit_edge600 ], [ true, %entry.return_crit_edge601 ], [ true, %entry.return_crit_edge602 ], [ true, %entry.return_crit_edge603 ], [ true, %entry.return_crit_edge604 ], [ true, %entry.return_crit_edge605 ], [ true, %entry.return_crit_edge606 ], [ true, %entry.return_crit_edge607 ], [ true, %entry.return_crit_edge608 ], [ true, %entry.return_crit_edge609 ], [ true, %entry.return_crit_edge610 ], [ true, %entry.return_crit_edge611 ], [ true, %entry.return_crit_edge612 ], [ true, %entry.return_crit_edge613 ], [ true, %entry.return_crit_edge614 ], [ true, %entry.return_crit_edge615 ], [ true, %entry.return_crit_edge616 ], [ true, %entry.return_crit_edge617 ], [ true, %entry.return_crit_edge618 ], [ true, %entry.return_crit_edge619 ], [ true, %entry.return_crit_edge620 ], [ true, %entry.return_crit_edge621 ], [ true, %entry.return_crit_edge622 ], [ true, %entry.return_crit_edge623 ], [ true, %entry.return_crit_edge624 ], [ true, %entry.return_crit_edge625 ], [ true, %entry.return_crit_edge626 ], [ true, %entry.return_crit_edge627 ], [ true, %entry.return_crit_edge628 ], [ true, %entry.return_crit_edge629 ], [ true, %entry.return_crit_edge630 ], [ true, %entry.return_crit_edge631 ], [ true, %entry.return_crit_edge632 ], [ true, %entry.return_crit_edge633 ], [ true, %entry.return_crit_edge634 ], [ true, %entry.return_crit_edge635 ], [ true, %entry.return_crit_edge636 ], [ true, %entry.return_crit_edge637 ], [ true, %entry.return_crit_edge638 ], [ true, %entry.return_crit_edge639 ], [ true, %entry.return_crit_edge640 ], [ true, %entry.return_crit_edge641 ], [ true, %entry.return_crit_edge642 ], [ true, %entry.return_crit_edge643 ], [ true, %entry.return_crit_edge644 ], [ true, %entry.return_crit_edge645 ], [ true, %entry.return_crit_edge646 ], [ true, %entry.return_crit_edge647 ], [ true, %entry.return_crit_edge648 ], [ true, %entry.return_crit_edge649 ], [ true, %entry.return_crit_edge650 ], [ true, %entry.return_crit_edge651 ], [ true, %entry.return_crit_edge652 ], [ true, %entry.return_crit_edge653 ], [ true, %entry.return_crit_edge654 ], [ true, %entry.return_crit_edge655 ], [ %or.cond, %sw.caserange38 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt1011_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 16, label %entry.return_crit_edge2
    i32 32, label %entry.return_crit_edge3
    i32 34, label %entry.return_crit_edge4
    i32 122, label %entry.return_crit_edge5
    i32 124, label %entry.return_crit_edge6
    i32 125, label %entry.return_crit_edge7
    i32 244, label %entry.return_crit_edge8
    i32 262, label %entry.return_crit_edge9
    i32 512, label %entry.return_crit_edge10
    i32 795, label %entry.return_crit_edge11
    i32 796, label %entry.return_crit_edge12
    i32 798, label %entry.return_crit_edge13
    i32 799, label %entry.return_crit_edge14
    i32 800, label %entry.return_crit_edge15
    i32 801, label %entry.return_crit_edge16
    i32 816, label %entry.return_crit_edge17
    i32 1288, label %entry.return_crit_edge18
    i32 1295, label %entry.return_crit_edge19
    i32 1298, label %entry.return_crit_edge20
    i32 1307, label %entry.return_crit_edge21
    i32 1311, label %entry.return_crit_edge22
    i32 1312, label %entry.return_crit_edge23
    i32 1313, label %entry.return_crit_edge24
    i32 1318, label %entry.return_crit_edge25
    i32 1328, label %entry.return_crit_edge26
    i32 1794, label %entry.return_crit_edge27
    i32 1796, label %entry.return_crit_edge28
    i32 1798, label %entry.return_crit_edge29
    i32 1800, label %entry.return_crit_edge30
    i32 1802, label %entry.return_crit_edge31
    i32 4096, label %entry.return_crit_edge32
    i32 4608, label %entry.return_crit_edge33
    i32 4616, label %entry.return_crit_edge34
    i32 4618, label %entry.return_crit_edge35
    i32 4620, label %entry.return_crit_edge36
    i32 4622, label %entry.return_crit_edge37
    i32 5378, label %entry.return_crit_edge38
    i32 5418, label %entry.return_crit_edge39
    i32 5444, label %entry.return_crit_edge40
    i32 5446, label %entry.return_crit_edge41
    i32 5448, label %entry.return_crit_edge42
    i32 5460, label %entry.return_crit_edge43
    i32 5462, label %entry.return_crit_edge44
    i32 5466, label %entry.return_crit_edge45
    i32 5468, label %entry.return_crit_edge46
    i32 5472, label %entry.return_crit_edge47
    i32 5474, label %entry.return_crit_edge48
    i32 5566, label %entry.return_crit_edge49
    i32 5567, label %entry.return_crit_edge50
    i32 5568, label %entry.return_crit_edge51
    i32 5569, label %entry.return_crit_edge52
    i32 5653, label %entry.return_crit_edge53
    i32 5654, label %entry.return_crit_edge54
    i32 5655, label %entry.return_crit_edge55
    i32 5669, label %entry.return_crit_edge56
    i32 5670, label %entry.return_crit_edge57
    i32 5671, label %entry.return_crit_edge58
    i32 5685, label %entry.return_crit_edge59
    i32 5686, label %entry.return_crit_edge60
    i32 5687, label %entry.return_crit_edge61
    i32 5688, label %entry.return_crit_edge62
    i32 5690, label %entry.return_crit_edge63
    i32 5692, label %entry.return_crit_edge64
    i32 5694, label %entry.return_crit_edge65
    i32 5946, label %entry.return_crit_edge66
    i32 6075, label %entry.return_crit_edge67
    i32 6077, label %entry.return_crit_edge68
    i32 6091, label %entry.return_crit_edge69
    i32 6092, label %entry.return_crit_edge70
    i32 6093, label %entry.return_crit_edge71
    i32 6094, label %entry.return_crit_edge72
    i32 6095, label %entry.return_crit_edge73
    i32 6096, label %entry.return_crit_edge74
    i32 6097, label %entry.return_crit_edge75
    i32 6098, label %entry.return_crit_edge76
    i32 6099, label %entry.return_crit_edge77
    i32 6100, label %entry.return_crit_edge78
    i32 6101, label %entry.return_crit_edge79
    i32 6102, label %entry.return_crit_edge80
    i32 6103, label %entry.return_crit_edge81
    i32 6104, label %entry.return_crit_edge82
    i32 6105, label %entry.return_crit_edge83
    i32 6106, label %entry.return_crit_edge84
    i32 6107, label %entry.return_crit_edge85
    i32 6108, label %entry.return_crit_edge86
    i32 6109, label %entry.return_crit_edge87
    i32 6110, label %entry.return_crit_edge88
    i32 6111, label %entry.return_crit_edge89
    i32 6112, label %entry.return_crit_edge90
    i32 6113, label %entry.return_crit_edge91
    i32 6114, label %entry.return_crit_edge92
    i32 6115, label %entry.return_crit_edge93
    i32 6116, label %entry.return_crit_edge94
    i32 6117, label %entry.return_crit_edge95
    i32 6118, label %entry.return_crit_edge96
    i32 6119, label %entry.return_crit_edge97
    i32 6120, label %entry.return_crit_edge98
    i32 6121, label %entry.return_crit_edge99
    i32 6122, label %entry.return_crit_edge100
    i32 6123, label %entry.return_crit_edge101
    i32 6124, label %entry.return_crit_edge102
    i32 6125, label %entry.return_crit_edge103
    i32 6126, label %entry.return_crit_edge104
    i32 6127, label %entry.return_crit_edge105
    i32 6128, label %entry.return_crit_edge106
    i32 6129, label %entry.return_crit_edge107
    i32 6130, label %entry.return_crit_edge108
    i32 6131, label %entry.return_crit_edge109
    i32 6132, label %entry.return_crit_edge110
    i32 6133, label %entry.return_crit_edge111
    i32 6134, label %entry.return_crit_edge112
    i32 6135, label %entry.return_crit_edge113
    i32 6136, label %entry.return_crit_edge114
    i32 6137, label %entry.return_crit_edge115
    i32 6138, label %entry.return_crit_edge116
    i32 6139, label %entry.return_crit_edge117
    i32 6140, label %entry.return_crit_edge118
    i32 6141, label %entry.return_crit_edge119
    i32 6142, label %entry.return_crit_edge120
    i32 6143, label %entry.return_crit_edge121
    i32 6144, label %entry.return_crit_edge122
    i32 6145, label %entry.return_crit_edge123
    i32 6146, label %entry.return_crit_edge124
    i32 6147, label %entry.return_crit_edge125
  ]

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt1011_calibrate(ptr noundef %rt1011, i8 noundef zeroext %cali_flag) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  %r0 = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !406
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %r0) #11
  %1 = ptrtoint ptr %r0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %r0, align 4, !annotation !406
  %2 = getelementptr inbounds [3 x i32], ptr %r0, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !406
  %4 = getelementptr inbounds [3 x i32], ptr %r0, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !406
  %regmap = getelementptr inbounds %struct.rt1011_priv, ptr %rt1011, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %7) #11
  %8 = ptrtoint ptr %rt1011 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rt1011, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %9, i32 0, i32 17, i32 4
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #11
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_bypass(ptr noundef %13, i1 noundef zeroext true) #11
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 0, i32 noundef 0) #11
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 4105, i32 noundef 29711) #11
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 4105, i32 noundef 30479) #11
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 4, i32 noundef 37888) #11
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 10, i32 noundef 2048) #11
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 12, i32 noundef 32) #11
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 32, i32 noundef 2048) #11
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 272, i32 noundef 2592) #11
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 260, i32 noundef 57906) #11
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call22 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 270, i32 noundef 49152) #11
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 1305, i32 noundef 45068) #11
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call26 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 1306, i32 noundef 52428) #11
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call28 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 802, i32 noundef 57568) #11
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call30 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 806, i32 noundef 20483) #11
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call32 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 813, i32 noundef 43104) #11
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call34 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 260, i32 noundef 41010) #11
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call36 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 804, i32 noundef 7) #11
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call38 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 806, i32 noundef 24567) #11
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call40 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 790, i32 noundef 32580) #11
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call42 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 787, i32 noundef 16468) #11
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call44 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 1334, i32 noundef 12444) #11
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call46 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 4612, i32 noundef 51968) #11
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call48 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 816, i32 noundef 57472) #11
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call50 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 808, i32 noundef 5874) #11
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call52 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 810, i32 noundef 13997) #11
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %call54 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 768, i32 noundef 16157) #11
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call56 = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 6075, i32 noundef 3338) #11
  tail call void @msleep(i32 noundef 30) #11
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %call58 = call i32 @regmap_read(ptr noundef %69, i32 noundef 6117, ptr noundef nonnull %value) #11
  %70 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %value, align 4
  %shl = shl i32 %71, 16
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call60 = call i32 @regmap_read(ptr noundef %73, i32 noundef 6119, ptr noundef nonnull %value) #11
  %74 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %value, align 4
  %and = and i32 %75, 65535
  %or = or i32 %and, %shl
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %call, ptr noundef nonnull @.str.19, i32 noundef %or) #14
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call62 = call i32 @regmap_read(ptr noundef %77, i32 noundef 6121, ptr noundef nonnull %value) #11
  %78 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %value, align 4
  %shl63 = shl i32 %79, 16
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %call65 = call i32 @regmap_read(ptr noundef %81, i32 noundef 6123, ptr noundef nonnull %value) #11
  %82 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %value, align 4
  %and66 = and i32 %83, 65535
  %or67 = or i32 %and66, %shl63
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %call, ptr noundef nonnull @.str.22, i32 noundef %or67) #14
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call72 = call i32 @regmap_read(ptr noundef %85, i32 noundef 6125, ptr noundef nonnull %value) #11
  %86 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %value, align 4
  %shl73 = shl i32 %87, 16
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 4
  %call75 = call i32 @regmap_read(ptr noundef %89, i32 noundef 6127, ptr noundef nonnull %value) #11
  %90 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %value, align 4
  %and76 = and i32 %91, 65535
  %or77 = or i32 %and76, %shl73
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %call, ptr noundef nonnull @.str.25, i32 noundef %or77) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cali_flag)
  %tobool.not = icmp eq i8 %cali_flag, 0
  br i1 %tobool.not, label %entry.if.end137_crit_edge, label %if.then

entry.if.end137_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

if.then:                                          ; preds = %entry
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 4
  %call82 = call i32 @regmap_write(ptr noundef %93, i32 noundef 264, i32 noundef 10533) #11
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %call84 = call i32 @regmap_write(ptr noundef %95, i32 noundef 814, i32 noundef 270) #11
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 4
  %call86 = call i32 @regmap_write(ptr noundef %97, i32 noundef 4864, i32 noundef 5889) #11
  %98 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap, align 4
  %call88 = call i32 @regmap_write(ptr noundef %99, i32 noundef 1292, i32 noundef 32768) #11
  %100 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap, align 4
  %call90 = call i32 @regmap_write(ptr noundef %101, i32 noundef 1302, i32 noundef 61440) #11
  %102 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap, align 4
  %call92 = call i32 @regmap_write(ptr noundef %103, i32 noundef 1296, i32 noundef 16448) #11
  %104 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap, align 4
  %call94 = call i32 @regmap_write(ptr noundef %105, i32 noundef 1292, i32 noundef 49152) #11
  %106 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap, align 4
  %call96 = call i32 @regmap_write(ptr noundef %107, i32 noundef 1298, i32 noundef 1986) #11
  %108 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %4, align 4
  %109 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %2, align 4
  %110 = ptrtoint ptr %r0 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %r0, align 4
  br label %while.cond.outer.split

while.cond.outer.split:                           ; preds = %if.end119.while.cond.outer.split_crit_edge, %if.then
  %arrayidx10211 = phi ptr [ %r0, %if.then ], [ %arrayidx102, %if.end119.while.cond.outer.split_crit_edge ]
  %count.0.ph10 = phi i32 [ 0, %if.then ], [ %inc, %if.end119.while.cond.outer.split_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.outer.split
  call void @msleep(i32 noundef 100) #11
  %111 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap, align 4
  %call100 = call i32 @regmap_read(ptr noundef %112, i32 noundef 5472, ptr noundef nonnull %value) #11
  %113 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %value, align 4
  %shl101 = shl i32 %114, 16
  %115 = ptrtoint ptr %arrayidx10211 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %shl101, ptr %arrayidx10211, align 4
  %116 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap, align 4
  %call104 = call i32 @regmap_read(ptr noundef %117, i32 noundef 5474, ptr noundef nonnull %value) #11
  %118 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %value, align 4
  %or107 = or i32 %119, %shl101
  %120 = ptrtoint ptr %arrayidx10211 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %or107, ptr %arrayidx10211, align 4
  %cmp110 = icmp eq i32 %or107, 0
  br i1 %cmp110, label %while.cond.while.cond_crit_edge, label %if.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end:                                           ; preds = %while.cond
  %inc = add nuw nsw i32 %count.0.ph10, 1
  %121 = ptrtoint ptr %r0 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %r0, align 4
  %123 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %124)
  %cmp114 = icmp eq i32 %122, %124
  br i1 %cmp114, label %land.lhs.true, label %if.end.if.end119_crit_edge

if.end.if.end119_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

land.lhs.true:                                    ; preds = %if.end
  %125 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %126)
  %cmp117 = icmp eq i32 %122, %126
  br i1 %cmp117, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end119_crit_edge

land.lhs.true.if.end119_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end119:                                        ; preds = %land.lhs.true.if.end119_crit_edge, %if.end.if.end119_crit_edge
  %rem.lhs.trunc = trunc i32 %inc to i8
  %rem8 = urem i8 %rem.lhs.trunc, 3
  %rem.zext = zext i8 %rem8 to i32
  %arrayidx102 = getelementptr [3 x i32], ptr %r0, i32 0, i32 %rem.zext
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %if.end119.if.else_crit_edge, label %if.end119.while.cond.outer.split_crit_edge

if.end119.while.cond.outer.split_crit_edge:       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.outer.split

if.end119.if.else_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %if.end119.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %count.17 = phi i32 [ 50, %if.end119.if.else_crit_edge ], [ %inc, %land.lhs.true.if.else_crit_edge ]
  %127 = ptrtoint ptr %r0 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %r0, align 4
  %div = udiv i32 -2147483648, %128
  %div1261 = lshr i32 %div, 7
  %mul = mul i32 %div, 100
  %div1292 = lshr i32 %mul, 7
  %mul130.neg = mul nsw i32 %div1261, -100
  %sub = add nsw i32 %mul130.neg, %div1292
  %r0_reg = getelementptr inbounds %struct.rt1011_priv, ptr %rt1011, i32 0, i32 13
  %129 = ptrtoint ptr %r0_reg to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %r0_reg, align 4
  %cali_done = getelementptr inbounds %struct.rt1011_priv, ptr %rt1011, i32 0, i32 14
  %130 = ptrtoint ptr %cali_done to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %cali_done, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %call, ptr noundef nonnull @.str.31, i32 noundef %div1261, i32 noundef %sub, i32 noundef %128) #14
  br label %if.end137

if.end137:                                        ; preds = %if.else, %entry.if.end137_crit_edge
  %count.2 = phi i32 [ %count.17, %if.else ], [ 0, %entry.if.end137_crit_edge ]
  %131 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap, align 4
  %call139 = call i32 @regmap_write(ptr noundef %132, i32 noundef 1292, i32 noundef 0) #11
  call void @msleep(i32 noundef 400) #11
  %133 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regmap, align 4
  %call141 = call i32 @regmap_write(ptr noundef %134, i32 noundef 813, i32 noundef 43072) #11
  %135 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regmap, align 4
  %call143 = call i32 @regmap_write(ptr noundef %136, i32 noundef 1298, i32 noundef 1794) #11
  %137 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regmap, align 4
  %call145 = call i32 @regmap_write(ptr noundef %138, i32 noundef 768, i32 noundef 65501) #11
  %139 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap, align 4
  %call147 = call i32 @regmap_write(ptr noundef %140, i32 noundef 4864, i32 noundef 1793) #11
  %141 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regmap, align 4
  %call149 = call i32 @regmap_write(ptr noundef %142, i32 noundef 262, i32 noundef 57348) #11
  %143 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regmap, align 4
  %call151 = call i32 @regmap_write(ptr noundef %144, i32 noundef 790, i32 noundef 32576) #11
  %145 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regmap, align 4
  %call153 = call i32 @regmap_write(ptr noundef %146, i32 noundef 802, i32 noundef 0) #11
  %147 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regmap, align 4
  %call155 = call i32 @regmap_write(ptr noundef %148, i32 noundef 804, i32 noundef 0) #11
  %149 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap, align 4
  %call157 = call i32 @regmap_write(ptr noundef %150, i32 noundef 806, i32 noundef 2) #11
  %151 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regmap, align 4
  %call159 = call i32 @regmap_write(ptr noundef %152, i32 noundef 808, i32 noundef 242) #11
  %153 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regmap, align 4
  %call161 = call i32 @regmap_write(ptr noundef %154, i32 noundef 0, i32 noundef 0) #11
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %count.2)
  %cmp164 = icmp ult i32 %count.2, 51
  %or.cond = select i1 %tobool.not.not, i1 %cmp164, i1 false
  br i1 %or.cond, label %if.then165, label %if.end137.if.end177_crit_edge

if.end137.if.end177_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

if.then165:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  %155 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regmap, align 4
  %157 = ptrtoint ptr %r0 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %r0, align 4
  %shr = lshr i32 %158, 16
  %and168 = and i32 %shr, 511
  %call169 = call i32 @regmap_write(ptr noundef %156, i32 noundef 5432, i32 noundef %and168) #11
  %159 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regmap, align 4
  %and172 = and i32 %158, 65535
  %call173 = call i32 @regmap_write(ptr noundef %160, i32 noundef 5433, i32 noundef %and172) #11
  %161 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regmap, align 4
  %call175 = call i32 @regmap_write(ptr noundef %162, i32 noundef 1296, i32 noundef 16512) #11
  br label %if.end177

if.end177:                                        ; preds = %if.then165, %if.end137.if.end177_crit_edge
  %163 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_bypass(ptr noundef %164, i1 noundef zeroext false) #11
  %165 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regmap, align 4
  call void @regcache_mark_dirty(ptr noundef %166) #11
  %167 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regmap, align 4
  %call181 = call i32 @regcache_sync(ptr noundef %168) #11
  %169 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i4 = getelementptr inbounds %struct.snd_soc_card, ptr %170, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %dapm_mutex.i4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %r0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt1011_r0_load(ptr nocapture noundef readonly %rt1011) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %r0_reg = getelementptr inbounds %struct.rt1011_priv, ptr %rt1011, i32 0, i32 13
  %0 = ptrtoint ptr %r0_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r0_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %regmap = getelementptr inbounds %struct.rt1011_priv, ptr %rt1011, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %shr = lshr i32 %1, 16
  %and = and i32 %shr, 511
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 5432, i32 noundef %and) #11
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = ptrtoint ptr %r0_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r0_reg, align 4
  %and4 = and i32 %7, 65535
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 5433, i32 noundef %and4) #11
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 1296, i32 noundef 16512) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_probe(ptr noundef %component) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %3, align 4
  %cali_work = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %cali_work) #11
  %i2s_ref = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %i2s_ref to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %i2s_ref, align 4
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 20, i32 noundef 3520) #11
  %bq_drc_params = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %bq_drc_params to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %bq_drc_params, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %call5.i.i26 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 512, i32 noundef 3520) #11
  %12 = ptrtoint ptr %bq_drc_params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bq_drc_params, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i26, ptr %13, align 4
  %15 = load ptr, ptr %bq_drc_params, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %for.body.preheader.cleanup_crit_edge, label %for.cond

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %call5.i.i26.1 = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 512, i32 noundef 3520) #11
  %20 = ptrtoint ptr %bq_drc_params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bq_drc_params, align 4
  %arrayidx.1 = getelementptr ptr, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i26.1, ptr %arrayidx.1, align 4
  %23 = load ptr, ptr %bq_drc_params, align 4
  %arrayidx9.1 = getelementptr ptr, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx9.1, align 4
  %tobool10.not.1 = icmp eq ptr %25, null
  br i1 %tobool10.not.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %call5.i.i26.2 = tail call noalias ptr @devm_kmalloc(ptr noundef %27, i32 noundef 512, i32 noundef 3520) #11
  %28 = ptrtoint ptr %bq_drc_params to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bq_drc_params, align 4
  %arrayidx.2 = getelementptr ptr, ptr %29, i32 2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i.i26.2, ptr %arrayidx.2, align 4
  %31 = load ptr, ptr %bq_drc_params, align 4
  %arrayidx9.2 = getelementptr ptr, ptr %31, i32 2
  %32 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx9.2, align 4
  %tobool10.not.2 = icmp eq ptr %33, null
  br i1 %tobool10.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %call5.i.i26.3 = tail call noalias ptr @devm_kmalloc(ptr noundef %35, i32 noundef 512, i32 noundef 3520) #11
  %36 = ptrtoint ptr %bq_drc_params to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bq_drc_params, align 4
  %arrayidx.3 = getelementptr ptr, ptr %37, i32 3
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call5.i.i26.3, ptr %arrayidx.3, align 4
  %39 = load ptr, ptr %bq_drc_params, align 4
  %arrayidx9.3 = getelementptr ptr, ptr %39, i32 3
  %40 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx9.3, align 4
  %tobool10.not.3 = icmp eq ptr %41, null
  br i1 %tobool10.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %call5.i.i26.4 = tail call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef 512, i32 noundef 3520) #11
  %44 = ptrtoint ptr %bq_drc_params to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bq_drc_params, align 4
  %arrayidx.4 = getelementptr ptr, ptr %45, i32 4
  %46 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call5.i.i26.4, ptr %arrayidx.4, align 4
  %47 = load ptr, ptr %bq_drc_params, align 4
  %arrayidx9.4 = getelementptr ptr, ptr %47, i32 4
  %48 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx9.4, align 4
  %tobool10.not.4 = icmp eq ptr %49, null
  %spec.select = select i1 %tobool10.not.4, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.cond.3, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %for.body.preheader.cleanup_crit_edge ], [ -12, %for.cond.cleanup_crit_edge ], [ -12, %for.cond.1.cleanup_crit_edge ], [ -12, %for.cond.2.cleanup_crit_edge ], [ %spec.select, %for.cond.3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt1011_remove(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %cali_work = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %cali_work) #11
  %regmap = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #11
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_resume(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #11
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_set_component_sysclk(ptr noundef %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %sysclk = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %freq)
  %cmp = icmp eq i32 %5, %freq
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sysclk_src = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %clk_id)
  %cmp1 = icmp eq i32 %7, %clk_id
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 32, i32 noundef 32768, i32 noundef 0) #11
  %8 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %clk_id, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb6
    i32 3, label %sw.bb8
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 32, i32 noundef 32768, i32 noundef 32768) #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.135, i32 noundef %clk_id) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb, %if.end.sw.epilog_crit_edge
  %reg_val.0 = phi i32 [ 49152, %sw.bb8 ], [ 32768, %sw.bb6 ], [ 0, %sw.bb ], [ 16384, %if.end.sw.epilog_crit_edge ]
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 49152, i32 noundef %reg_val.0) #11
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %freq, ptr %sysclk, align 4
  %sysclk_src12 = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %sysclk_src12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %clk_id, ptr %sysclk_src12, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1011_set_component_sysclk.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1011_set_component_sysclk, %if.then17)) #11
          to label %cleanup [label %if.then17], !srcloc !407

if.then17:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1011_set_component_sysclk.__UNIQUE_ID_ddebug296, ptr noundef %14, ptr noundef nonnull @.str.137, i32 noundef %freq, i32 noundef %clk_id) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %sw.epilog, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_set_component_pll(ptr noundef %component, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  %pll_code = alloca %struct.rl6231_pll_code, align 4
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pll_code) #11
  %4 = call ptr @memset(ptr %pll_code, i32 255, i32 16)
  %pll_src = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %pll_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pll_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %source)
  %cmp = icmp eq i32 %6, %source
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pll_in = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %pll_in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pll_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %freq_in)
  %cmp1 = icmp eq i32 %8, %freq_in
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %pll_out = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %pll_out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pll_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %freq_out)
  %cmp3 = icmp eq i32 %10, %freq_out
  br i1 %cmp3, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_in)
  %tobool.not = icmp eq i32 %freq_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool4.not = icmp eq i32 %freq_out, 0
  %or.cond = or i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1011_set_component_pll.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1011_set_component_pll, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !407

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1011_set_component_pll.__UNIQUE_ID_ddebug297, ptr noundef %12, ptr noundef nonnull @.str.139) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %pll_in12 = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %pll_in12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pll_in12, align 4
  %pll_out13 = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %pll_out13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %pll_out13, align 4
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 49152, i32 noundef 16384) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %15 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %source, label %do.end26 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb19
    i32 2, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 4096, i32 noundef 0) #11
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 8192, i32 noundef 0) #11
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 32, i32 noundef 32768, i32 noundef 32768) #11
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 8192, i32 noundef 8192) #11
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 4096, i32 noundef 4096) #11
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 8192, i32 noundef 0) #11
  br label %sw.epilog

do.end26:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.140, i32 noundef %source) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb19, %sw.bb
  %call28 = call i32 @rl6231_pll_calc(i32 noundef %freq_in, i32 noundef %freq_out, ptr noundef nonnull %pll_code) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %do.body36

do.end33:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.142, i32 noundef %freq_in) #14
  br label %cleanup

do.body36:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1011_set_component_pll.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1011_set_component_pll, %if.then48)) #11
          to label %do.end56 [label %if.then48], !srcloc !407

if.then48:                                        ; preds = %do.body36
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pll_code, align 4, !range !408
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool50.not = icmp eq i8 %21, 0
  %22 = zext i8 %21 to i32
  br i1 %tobool50.not, label %cond.false, label %if.then48.cond.end_crit_edge

if.then48.cond.end_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %m_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %23 = ptrtoint ptr %m_code to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %m_code, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then48.cond.end_crit_edge
  %cond = phi i32 [ %24, %cond.false ], [ 0, %if.then48.cond.end_crit_edge ]
  %n_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %25 = ptrtoint ptr %n_code to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_code, align 4
  %k_code = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %27 = ptrtoint ptr %k_code to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %k_code, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1011_set_component_pll.__UNIQUE_ID_ddebug298, ptr noundef %19, ptr noundef nonnull @.str.144, i32 noundef %22, i32 noundef %cond, i32 noundef %26, i32 noundef %28) #11
  br label %do.end56

do.end56:                                         ; preds = %cond.end, %do.body36
  %29 = ptrtoint ptr %pll_code to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pll_code, align 4, !range !408
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool58.not = icmp eq i8 %30, 0
  br i1 %tobool58.not, label %cond.false61, label %do.end56.cond.end63_crit_edge

do.end56.cond.end63_crit_edge:                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end63

cond.false61:                                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #13
  %m_code62 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 2
  %31 = ptrtoint ptr %m_code62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %m_code62, align 4
  %phi.bo = shl i32 %32, 12
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false61, %do.end56.cond.end63_crit_edge
  %cond64 = phi i32 [ %phi.bo, %cond.false61 ], [ 0, %do.end56.cond.end63_crit_edge ]
  %33 = zext i8 %30 to i32
  %shl68 = shl nuw nsw i32 %33, 11
  %or = or i32 %cond64, %shl68
  %n_code69 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 3
  %34 = ptrtoint ptr %n_code69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_code69, align 4
  %or70 = or i32 %or, %35
  %call71 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 10, i32 noundef %or70) #11
  %k_code72 = getelementptr inbounds %struct.rl6231_pll_code, ptr %pll_code, i32 0, i32 4
  %36 = ptrtoint ptr %k_code72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %k_code72, align 4
  %call73 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 12, i32 noundef %37) #11
  %pll_in74 = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 10
  %38 = ptrtoint ptr %pll_in74 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %freq_in, ptr %pll_in74, align 4
  %pll_out75 = getelementptr inbounds %struct.rt1011_priv, ptr %3, i32 0, i32 11
  %39 = ptrtoint ptr %pll_out75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %freq_out, ptr %pll_out75, align 4
  %40 = ptrtoint ptr %pll_src to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %source, ptr %pll_src, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end63, %do.end33, %do.end26, %do.end, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end26 ], [ %call28, %do.end33 ], [ 0, %cond.end63 ], [ 0, %do.end ], [ 0, %land.lhs.true2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pll_code) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cond = icmp eq i32 %level, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 4103, i32 noundef 0) #11
  %call1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 4104, i32 noundef 0) #11
  %call2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 4105, i32 noundef 1) #11
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 4103, i32 noundef 63) #11
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 4104, i32 noundef 32727) #11
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 4105, i32 noundef 30479) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt1011_recv_spk_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %recv_spk_mode = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %recv_spk_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %recv_spk_mode, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_recv_spk_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %recv_spk_mode = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 17
  %8 = ptrtoint ptr %recv_spk_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %recv_spk_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %recv_spk_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %recv_spk_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %. = select i1 %tobool.not, i32 12288, i32 0
  %.26 = select i1 %tobool.not, i32 0, i32 32
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4868, i32 noundef 28672, i32 noundef %.) #11
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4864, i32 noundef 32, i32 noundef %.26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rt1011_bq_drc_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 128, ptr %count, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 402653183, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_bq_drc_coeff_get(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #2 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %name = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 4
  %call3 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.44)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.else, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.else:                                          ; preds = %entry
  %call7 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.45)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else10, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.else10:                                        ; preds = %if.else
  %call14 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.46)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.else17, label %if.else10.do.end_crit_edge

if.else10.do.end_crit_edge:                       ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.else17:                                        ; preds = %if.else10
  %call21 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.47)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.else24, label %if.else17.do.end_crit_edge

if.else17.do.end_crit_edge:                       ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.else24:                                        ; preds = %if.else17
  %call28 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.48)
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.else24.cleanup_crit_edge, label %if.else24.do.end_crit_edge

if.else24.do.end_crit_edge:                       ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.else24.do.end_crit_edge, %if.else17.do.end_crit_edge, %if.else10.do.end_crit_edge, %if.else.do.end_crit_edge, %entry.do.end_crit_edge
  %mode_idx.0 = phi i32 [ 0, %entry.do.end_crit_edge ], [ 1, %if.else.do.end_crit_edge ], [ 2, %if.else10.do.end_crit_edge ], [ 3, %if.else17.do.end_crit_edge ], [ 4, %if.else24.do.end_crit_edge ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, ptr noundef %name, i32 noundef %mode_idx.0) #14
  %bq_drc_params = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bq_drc_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bq_drc_params, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %mode_idx.0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end
  %i.065 = phi i32 [ 0, %do.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx40 = getelementptr %struct.rt1011_bq_drc_params, ptr %9, i32 %i.065
  %reg = getelementptr %struct.rt1011_bq_drc_params, ptr %9, i32 %i.065, i32 1
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %reg, align 2
  %arrayidx41 = getelementptr %struct.rt1011_bq_drc_params, ptr %value, i32 %i.065
  %reg42 = getelementptr %struct.rt1011_bq_drc_params, ptr %value, i32 %i.065, i32 1
  %12 = ptrtoint ptr %reg42 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %reg42, align 2
  %13 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx40, align 2
  %15 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx41, align 2
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.else24.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else24.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_bq_drc_coeff_put(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #2 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %name = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 4
  %call3 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.44)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.else, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.else:                                          ; preds = %entry
  %call7 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.45)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else10, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.else10:                                        ; preds = %if.else
  %call14 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.46)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.else17, label %if.else10.if.end35_crit_edge

if.else10.if.end35_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.else17:                                        ; preds = %if.else10
  %call21 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.47)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.else24, label %if.else17.if.end35_crit_edge

if.else17.if.end35_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.else24:                                        ; preds = %if.else17
  %call28 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.48)
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.else24.cleanup_crit_edge, label %if.else24.if.end35_crit_edge

if.else24.if.end35_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %if.else24.if.end35_crit_edge, %if.else17.if.end35_crit_edge, %if.else10.if.end35_crit_edge, %if.else.if.end35_crit_edge, %entry.if.end35_crit_edge
  %mode_idx.0 = phi i32 [ 0, %entry.if.end35_crit_edge ], [ 1, %if.else.if.end35_crit_edge ], [ 2, %if.else10.if.end35_crit_edge ], [ 3, %if.else17.if.end35_crit_edge ], [ 4, %if.else24.if.end35_crit_edge ]
  %bq_drc_params = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bq_drc_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bq_drc_params, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %mode_idx.0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 512)
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.98, ptr noundef %name, i32 noundef %mode_idx.0) #14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end35
  %i.0104 = phi i32 [ 0, %if.end35 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx40 = getelementptr %struct.rt1011_bq_drc_params, ptr %value, i32 %i.0104
  %reg = getelementptr %struct.rt1011_bq_drc_params, ptr %value, i32 %i.0104, i32 1
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg, align 2
  %arrayidx41 = getelementptr %struct.rt1011_bq_drc_params, ptr %9, i32 %i.0104
  %reg42 = getelementptr %struct.rt1011_bq_drc_params, ptr %9, i32 %i.0104, i32 1
  %13 = ptrtoint ptr %reg42 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %reg42, align 2
  %14 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx40, align 2
  %16 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx41, align 2
  %inc = add nuw nsw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.body.for.body48_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.body48_crit_edge:                    ; preds = %for.body
  br label %for.body48

for.body48:                                       ; preds = %for.inc68.for.body48_crit_edge, %for.body.for.body48_crit_edge
  %i.1105 = phi i32 [ %inc69, %for.inc68.for.body48_crit_edge ], [ 0, %for.body.for.body48_crit_edge ]
  %arrayidx49 = getelementptr %struct.rt1011_bq_drc_params, ptr %9, i32 %i.1105
  %reg50 = getelementptr %struct.rt1011_bq_drc_params, ptr %9, i32 %i.1105, i32 1
  %17 = ptrtoint ptr %reg50 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %reg50, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.171)
  switch i16 %18, label %lor.lhs.false24.i [
    i16 0, label %for.body48.cleanup_crit_edge
    i16 264, label %for.body48.if.then58_crit_edge
    i16 263, label %for.body48.if.then58_crit_edge107
    i16 258, label %for.body48.if.then58_crit_edge108
    i16 787, label %for.body48.if.then58_crit_edge109
    i16 768, label %for.body48.if.then58_crit_edge110
    i16 272, label %for.body48.if.then58_crit_edge111
    i16 270, label %for.body48.if.then58_crit_edge112
  ]

for.body48.if.then58_crit_edge112:                ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

for.body48.if.then58_crit_edge111:                ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

for.body48.if.then58_crit_edge110:                ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

for.body48.if.then58_crit_edge109:                ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

for.body48.if.then58_crit_edge108:                ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

for.body48.if.then58_crit_edge107:                ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

for.body48.if.then58_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

for.body48.cleanup_crit_edge:                     ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false24.i:                                ; preds = %for.body48
  %20 = add i16 %18, -811
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %20)
  %21 = icmp ult i16 %20, 2
  br i1 %21, label %lor.lhs.false24.i.if.then58_crit_edge, label %switch.early.test140.i

lor.lhs.false24.i.if.then58_crit_edge:            ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

switch.early.test140.i:                           ; preds = %lor.lhs.false24.i
  %22 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.172)
  switch i16 %18, label %lor.lhs.false40.i [
    i16 820, label %switch.early.test140.i.if.then58_crit_edge
    i16 814, label %switch.early.test140.i.if.then58_crit_edge113
  ]

switch.early.test140.i.if.then58_crit_edge113:    ; preds = %switch.early.test140.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

switch.early.test140.i.if.then58_crit_edge:       ; preds = %switch.early.test140.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

lor.lhs.false40.i:                                ; preds = %switch.early.test140.i
  %23 = add i16 %18, -1292
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %23)
  %24 = icmp ult i16 %23, 7
  %25 = add i16 %18, -1309
  call void @__sanitizer_cov_trace_const_cmp2(i16 26, i16 %25)
  %26 = icmp ult i16 %25, 26
  %or.cond143.i = or i1 %24, %26
  %27 = add i16 %18, -1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 57, i16 %27)
  %28 = icmp ult i16 %27, 57
  %or.cond145.i = or i1 %28, %or.cond143.i
  %29 = add i16 %18, -1794
  call void @__sanitizer_cov_trace_const_cmp2(i16 200, i16 %29)
  %30 = icmp ult i16 %29, 200
  %or.cond147.i = or i1 %30, %or.cond145.i
  br i1 %or.cond147.i, label %lor.lhs.false40.i.if.then58_crit_edge, label %lor.lhs.false72.i

lor.lhs.false40.i.if.then58_crit_edge:            ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

lor.lhs.false72.i:                                ; preds = %lor.lhs.false40.i
  %31 = add i16 %18, -4898
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %31)
  %32 = icmp ult i16 %31, 40
  call void @__sanitizer_cov_trace_const_cmp2(i16 5376, i16 %18)
  %cmp82.i = icmp eq i16 %18, 5376
  %or.cond137.i = or i1 %cmp82.i, %32
  %33 = add i16 %18, -5438
  call void @__sanitizer_cov_trace_const_cmp2(i16 347, i16 %33)
  %34 = icmp ult i16 %33, 347
  %or.cond149.i = or i1 %34, %or.cond137.i
  %35 = add i16 %18, -5888
  call void @__sanitizer_cov_trace_const_cmp2(i16 57, i16 %35)
  %36 = icmp ult i16 %35, 57
  %or.cond = select i1 %or.cond149.i, i1 true, i1 %36
  br i1 %or.cond, label %lor.lhs.false72.i.if.then58_crit_edge, label %lor.lhs.false72.i.for.inc68_crit_edge

lor.lhs.false72.i.for.inc68_crit_edge:            ; preds = %lor.lhs.false72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68

lor.lhs.false72.i.if.then58_crit_edge:            ; preds = %lor.lhs.false72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false72.i.if.then58_crit_edge, %lor.lhs.false40.i.if.then58_crit_edge, %switch.early.test140.i.if.then58_crit_edge, %switch.early.test140.i.if.then58_crit_edge113, %lor.lhs.false24.i.if.then58_crit_edge, %for.body48.if.then58_crit_edge, %for.body48.if.then58_crit_edge107, %for.body48.if.then58_crit_edge108, %for.body48.if.then58_crit_edge109, %for.body48.if.then58_crit_edge110, %for.body48.if.then58_crit_edge111, %for.body48.if.then58_crit_edge112
  %conv61 = zext i16 %18 to i32
  %37 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx49, align 2
  %conv64 = zext i16 %38 to i32
  %call65 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %conv61, i32 noundef %conv64) #11
  br label %for.inc68

for.inc68:                                        ; preds = %if.then58, %lor.lhs.false72.i.for.inc68_crit_edge
  %inc69 = add nuw nsw i32 %i.1105, 1
  %exitcond106.not = icmp eq i32 %inc69, 128
  br i1 %exitcond106.not, label %for.inc68.cleanup_crit_edge, label %for.inc68.for.body48_crit_edge

for.inc68.for.body48_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body48

for.inc68.cleanup_crit_edge:                      ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc68.cleanup_crit_edge, %for.body48.cleanup_crit_edge, %if.else24.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else24.cleanup_crit_edge ], [ 0, %for.inc68.cleanup_crit_edge ], [ 0, %for.body48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt1011_r0_cali_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cali_done = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %cali_done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cali_done, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_r0_cali_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %cali_done = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %cali_done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cali_done, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rt1011_calibrate(ptr noundef %5, i8 noundef zeroext 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rt1011_r0_load_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33554431, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt1011_r0_load_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %r0_reg = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %r0_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r0_reg, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_r0_load_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
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
  %r0_reg = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %r0_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %r0_reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call6 = tail call ptr @regmap_get_device(ptr noundef %11) #11
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  %16 = ptrtoint ptr %r0_reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %r0_reg, align 4
  %div = udiv i32 -2147483648, %15
  %div1442 = lshr i32 %div, 7
  %mul = mul i32 %div, 100
  %div1743 = lshr i32 %mul, 7
  %mul18.neg = mul nsw i32 %div1442, -100
  %sub = add nsw i32 %mul18.neg, %div1743
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %call6, ptr noundef nonnull @.str.99, i32 noundef %div1442, i32 noundef %sub, i32 noundef %15) #14
  %17 = ptrtoint ptr %r0_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r0_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.then9.cleanup_crit_edge, label %if.then21

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rt1011_r0_load(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.then9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt1011_i2s_ref_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %i2s_ref = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %i2s_ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i2s_ref, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_i2s_ref_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %i2s_ref = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %i2s_ref to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %i2s_ref, align 4
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %7, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %regmap = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 273, i32 noundef 576) #11
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 278, i32 noundef 8) #11
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 276, i32 noundef 4130) #11
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 4109, i32 noundef 4) #11
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %regmap11 = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap11, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 273, i32 noundef 576) #11
  %20 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap11, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 278, i32 noundef 8) #11
  %22 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap11, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 276, i32 noundef 4258) #11
  %24 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap11, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 4109, i32 noundef 4) #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.101) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb10, %sw.bb
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1292, i32 noundef 49152, i32 noundef 49152) #11
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 813, i32 noundef 32, i32 noundef 32) #11
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 813, i32 noundef 32, i32 noundef 0) #11
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1292, i32 noundef 49152, i32 noundef 0) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb4, %sw.bb
  %.sink13 = phi i32 [ 50, %sw.bb ], [ 200, %sw.bb4 ]
  %.sink = phi i32 [ 4096, %sw.bb ], [ 0, %sw.bb4 ]
  tail call void @msleep(i32 noundef %.sink13) #11
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 4864, i32 noundef 4096, i32 noundef %.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt1011_is_sys_clk_from_pll(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %sysclk_src = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rl6231_pll_calc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17, i32 4
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #11
  %and = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cond = icmp eq i32 %and, 16384
  br i1 %cond, label %sw.bb, label %entry._set_fmt_err__crit_edge

entry._set_fmt_err__crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_set_fmt_err_

sw.bb:                                            ; preds = %entry
  %and2 = and i32 %fmt, 3840
  %4 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %and2, label %sw.bb._set_fmt_err__crit_edge [
    i32 0, label %sw.bb.sw.epilog6_crit_edge
    i32 768, label %sw.bb3
  ]

sw.bb.sw.epilog6_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog6

sw.bb._set_fmt_err__crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %_set_fmt_err_

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog6

sw.epilog6:                                       ; preds = %sw.bb3, %sw.bb.sw.epilog6_crit_edge
  %reg_bclk_inv.0 = phi i32 [ 32768, %sw.bb3 ], [ %and2, %sw.bb.sw.epilog6_crit_edge ]
  %and7 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 5
  br i1 %5, label %switch.hole_check, label %sw.epilog6._set_fmt_err__crit_edge

sw.epilog6._set_fmt_err__crit_edge:               ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #13
  br label %_set_fmt_err_

switch.hole_check:                                ; preds = %sw.epilog6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %6 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.lobit.not = icmp eq i8 %6, 0
  br i1 %switch.lobit.not, label %switch.hole_check._set_fmt_err__crit_edge, label %switch.lookup

switch.hole_check._set_fmt_err__crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %_set_fmt_err_

switch.lookup:                                    ; preds = %switch.hole_check
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cond23 = icmp eq i32 %8, 0
  br i1 %cond23, label %sw.bb16, label %do.end

sw.bb16:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rt1011_set_dai_fmt, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 273, i32 noundef 16391, i32 noundef %switch.load) #11
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 276, i32 noundef 32768, i32 noundef %reg_bclk_inv.0) #11
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 286, i32 noundef 32768, i32 noundef %reg_bclk_inv.0) #11
  br label %_set_fmt_err_

do.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.146, i32 noundef %8) #14
  br label %_set_fmt_err_

_set_fmt_err_:                                    ; preds = %do.end, %sw.bb16, %switch.hole_check._set_fmt_err__crit_edge, %sw.epilog6._set_fmt_err__crit_edge, %sw.bb._set_fmt_err__crit_edge, %entry._set_fmt_err__crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb16 ], [ -22, %do.end ], [ -22, %entry._set_fmt_err__crit_edge ], [ -22, %sw.bb._set_fmt_err__crit_edge ], [ -22, %sw.epilog6._set_fmt_err__crit_edge ], [ -22, %switch.hole_check._set_fmt_err__crit_edge ]
  %12 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i40 = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i40) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17, i32 4
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #11
  %4 = or i32 %rx_mask, %tx_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  %tdm_en.0 = select i1 %5, i32 0, i32 8
  %switch.tableidx = add i32 %slots, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 7
  br i1 %6, label %switch.hole_check, label %entry._set_tdm_err__crit_edge

entry._set_tdm_err__crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_set_tdm_err_

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 85, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check._set_tdm_err__crit_edge, label %switch.lookup

switch.hole_check._set_tdm_err__crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %_set_tdm_err_

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.rt1011_set_tdm_slot, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %9 = add i32 %slot_width, -16
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 30)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %10, label %switch.lookup._set_tdm_err__crit_edge [
    i32 1, label %sw.bb10
    i32 2, label %sw.bb13
    i32 4, label %sw.bb16
    i32 0, label %switch.lookup.cond.false.i_crit_edge
  ]

switch.lookup.cond.false.i_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

switch.lookup._set_tdm_err__crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %_set_tdm_err_

sw.bb10:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %or12 = or i32 %switch.load, 17
  br label %cond.false.i

sw.bb13:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %or15 = or i32 %switch.load, 34
  br label %cond.false.i

sw.bb16:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %or18 = or i32 %switch.load, 51
  br label %cond.false.i

cond.false.i:                                     ; preds = %sw.bb16, %sw.bb13, %sw.bb10, %switch.lookup.cond.false.i_crit_edge
  %val.1 = phi i32 [ %switch.load, %switch.lookup.cond.false.i_crit_edge ], [ %or18, %sw.bb16 ], [ %or15, %sw.bb13 ], [ %or12, %sw.bb10 ]
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %rx_mask) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %.not = icmp eq i32 %call.i.i, 1
  br i1 %.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.148) #14
  br label %_set_tdm_err_

if.end25:                                         ; preds = %cond.false.i
  %14 = tail call i32 @llvm.cttz.i32(i32 %rx_mask, i1 false) #11, !range !409
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %14, label %if.end25._set_tdm_err__crit_edge [
    i32 0, label %if.end25.sw.bb27_crit_edge
    i32 2, label %if.end25.sw.bb27_crit_edge283
    i32 4, label %if.end25.sw.bb27_crit_edge284
    i32 6, label %if.end25.sw.bb27_crit_edge285
    i32 1, label %if.end25.sw.bb32_crit_edge
    i32 3, label %if.end25.sw.bb32_crit_edge286
    i32 5, label %if.end25.sw.bb32_crit_edge287
    i32 7, label %if.end25.sw.bb32_crit_edge288
  ]

if.end25.sw.bb32_crit_edge288:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

if.end25.sw.bb32_crit_edge287:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

if.end25.sw.bb32_crit_edge286:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

if.end25.sw.bb32_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

if.end25.sw.bb27_crit_edge285:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

if.end25.sw.bb27_crit_edge284:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

if.end25.sw.bb27_crit_edge283:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

if.end25.sw.bb27_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

if.end25._set_tdm_err__crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %_set_tdm_err_

sw.bb27:                                          ; preds = %if.end25.sw.bb27_crit_edge, %if.end25.sw.bb27_crit_edge283, %if.end25.sw.bb27_crit_edge284, %if.end25.sw.bb27_crit_edge285
  %call28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1794, i32 noundef 96, i32 noundef 0) #11
  %shl = shl nuw nsw i32 %14, 12
  %add = shl nuw nsw i32 %14, 8
  %shl29 = add nuw nsw i32 %add, 256
  %or30 = or i32 %shl29, %shl
  br label %sw.epilog39

sw.bb32:                                          ; preds = %if.end25.sw.bb32_crit_edge, %if.end25.sw.bb32_crit_edge286, %if.end25.sw.bb32_crit_edge287, %if.end25.sw.bb32_crit_edge288
  %call33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1794, i32 noundef 96, i32 noundef 32) #11
  %sub = shl nuw nsw i32 %14, 12
  %shl34 = add nsw i32 %sub, -4096
  %shl35 = shl nuw nsw i32 %14, 8
  %or36 = or i32 %shl34, %shl35
  br label %sw.epilog39

sw.epilog39:                                      ; preds = %sw.bb32, %sw.bb27
  %or36.sink = phi i32 [ %or36, %sw.bb32 ], [ %or30, %sw.bb27 ]
  %call37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 282, i32 noundef 30464, i32 noundef %or36.sink) #11
  %call.i.i272 = tail call i32 @__sw_hweight32(i32 noundef %tx_mask) #11
  %16 = add i32 %call.i.i272, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %16)
  %17 = icmp ult i32 %16, -2
  br i1 %17, label %if.then44, label %if.end49

if.then44:                                        ; preds = %sw.epilog39
  call void @__sanitizer_cov_trace_pc() #13
  %dev48 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.151) #14
  br label %_set_tdm_err_

if.end49:                                         ; preds = %sw.epilog39
  %20 = tail call i32 @llvm.cttz.i32(i32 %tx_mask, i1 false) #11, !range !409
  %21 = tail call i32 @llvm.ctlz.i32(i32 %tx_mask, i1 false) #11, !range !409
  %22 = add nuw nsw i32 %21, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %22)
  %cmp53 = icmp ult i32 %22, 30
  br i1 %cmp53, label %if.then54, label %if.end59

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %dev58 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.154) #14
  br label %_set_tdm_err_

if.end59:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i272)
  %cmp60 = icmp eq i32 %call.i.i272, 1
  br i1 %cmp60, label %if.then61, label %if.then92

if.then61:                                        ; preds = %if.end59
  %call62 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 278, i32 noundef 57351, i32 noundef %20) #11
  %25 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %20, label %sw.default79 [
    i32 1, label %sw.bb63
    i32 3, label %sw.bb65
    i32 5, label %sw.bb67
    i32 7, label %sw.bb69
    i32 0, label %sw.bb71
    i32 2, label %sw.bb73
    i32 4, label %sw.bb75
    i32 6, label %sw.bb77
  ]

sw.bb63:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %call64 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 280, i32 noundef 192, i32 noundef 128) #11
  br label %if.end116

sw.bb65:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %call66 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 280, i32 noundef 48, i32 noundef 32) #11
  br label %if.end116

sw.bb67:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %call68 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 280, i32 noundef 12, i32 noundef 8) #11
  br label %if.end116

sw.bb69:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %call70 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 280, i32 noundef 3, i32 noundef 2) #11
  br label %if.end116

sw.bb71:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %call72 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 280, i32 noundef 192, i32 noundef 0) #11
  br label %if.end116

sw.bb73:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %call74 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 280, i32 noundef 48, i32 noundef 0) #11
  br label %if.end116

sw.bb75:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %call76 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 280, i32 noundef 12, i32 noundef 0) #11
  br label %if.end116

sw.bb77:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %call78 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 280, i32 noundef 3, i32 noundef 0) #11
  br label %if.end116

sw.default79:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1011_set_tdm_slot.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1011_set_tdm_slot, %if.then85)) #11
          to label %_set_tdm_err_ [label %if.then85], !srcloc !407

if.then85:                                        ; preds = %sw.default79
  call void @__sanitizer_cov_trace_pc() #13
  %dev86 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev86, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1011_set_tdm_slot.__UNIQUE_ID_ddebug299, ptr noundef %27, ptr noundef nonnull @.str.154) #11
  br label %_set_tdm_err_

if.then92:                                        ; preds = %if.end59
  %28 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %20, label %sw.default96 [
    i32 0, label %if.then92.sw.bb93_crit_edge
    i32 2, label %if.then92.sw.bb93_crit_edge289
    i32 4, label %if.then92.sw.bb93_crit_edge290
    i32 6, label %if.then92.sw.bb93_crit_edge291
  ]

if.then92.sw.bb93_crit_edge291:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb93

if.then92.sw.bb93_crit_edge290:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb93

if.then92.sw.bb93_crit_edge289:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb93

if.then92.sw.bb93_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb93

sw.bb93:                                          ; preds = %if.then92.sw.bb93_crit_edge, %if.then92.sw.bb93_crit_edge289, %if.then92.sw.bb93_crit_edge290, %if.then92.sw.bb93_crit_edge291
  %or94 = or i32 %20, 8192
  %call95 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 278, i32 noundef 57351, i32 noundef %or94) #11
  br label %if.end116

sw.default96:                                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1011_set_tdm_slot.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1011_set_tdm_slot, %if.then109)) #11
          to label %_set_tdm_err_ [label %if.then109], !srcloc !407

if.then109:                                       ; preds = %sw.default96
  call void @__sanitizer_cov_trace_pc() #13
  %dev110 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev110, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1011_set_tdm_slot.__UNIQUE_ID_ddebug300, ptr noundef %30, ptr noundef nonnull @.str.156) #11
  br label %_set_tdm_err_

if.end116:                                        ; preds = %sw.bb93, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb69, %sw.bb67, %sw.bb65, %sw.bb63
  %call117 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 276, i32 noundef 3959, i32 noundef %val.1) #11
  %call118 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 286, i32 noundef 3959, i32 noundef %val.1) #11
  %call119 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 278, i32 noundef 8, i32 noundef %tdm_en.0) #11
  %call120 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 288, i32 noundef 8, i32 noundef %tdm_en.0) #11
  %call121 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 273, i32 noundef 24, i32 noundef 0) #11
  br label %_set_tdm_err_

_set_tdm_err_:                                    ; preds = %if.end116, %if.then109, %sw.default96, %if.then85, %sw.default79, %if.then54, %if.then44, %if.end25._set_tdm_err__crit_edge, %if.then24, %switch.lookup._set_tdm_err__crit_edge, %switch.hole_check._set_tdm_err__crit_edge, %entry._set_tdm_err__crit_edge
  %ret.0 = phi i32 [ -22, %if.then24 ], [ -22, %if.then44 ], [ -22, %if.then54 ], [ -22, %if.then85 ], [ 0, %if.end116 ], [ -22, %if.then109 ], [ -22, %entry._set_tdm_err__crit_edge ], [ -22, %switch.lookup._set_tdm_err__crit_edge ], [ -22, %if.end25._set_tdm_err__crit_edge ], [ -22, %sw.default79 ], [ -22, %sw.default96 ], [ -22, %switch.hole_check._set_tdm_err__crit_edge ]
  %31 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i280 = getelementptr inbounds %struct.snd_soc_card, ptr %32, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i280) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt1011_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr noundef %dai) #2 align 64 {
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
  %lrck = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %lrck to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lrck, align 4
  %sysclk = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 4
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %shl.i = shl i32 %7, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %10)
  %cmp3.i = icmp eq i32 %shl.i, %10
  br i1 %cmp3.i, label %if.end.i.if.end_crit_edge, label %for.inc.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %if.end.i
  %mul.1.i = shl i32 %7, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1.i, i32 %10)
  %cmp3.1.i = icmp eq i32 %mul.1.i, %10
  br i1 %cmp3.1.i, label %for.inc.i.if.end_crit_edge, label %for.inc.1.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  %mul.2.i = mul i32 %7, 768
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2.i, i32 %10)
  %cmp3.2.i = icmp eq i32 %mul.2.i, %10
  br i1 %cmp3.2.i, label %for.inc.1.i.if.end_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %mul.3.i = shl i32 %7, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3.i, i32 %10)
  %cmp3.3.i = icmp eq i32 %mul.3.i, %10
  br i1 %cmp3.3.i, label %for.inc.2.i.if.end_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %mul.4.i = mul i32 %7, 1536
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.4.i, i32 %10)
  %cmp3.4.i = icmp eq i32 %mul.4.i, %10
  br i1 %cmp3.4.i, label %for.inc.3.i.if.end_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %mul.5.i = shl i32 %7, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.5.i, i32 %10)
  %cmp3.5.i = icmp eq i32 %mul.5.i, %10
  br i1 %cmp3.5.i, label %for.inc.4.i.if.end_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end_crit_edge:                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %mul.6.i = mul i32 %7, 3072
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.6.i, i32 %10)
  %cmp3.6.i = icmp eq i32 %mul.6.i, %10
  br i1 %cmp3.6.i, label %for.inc.5.i.if.end_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end_crit_edge:                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %mul.7.i = shl i32 %7, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.7.i, i32 %10)
  %cmp3.7.i = icmp eq i32 %mul.7.i, %10
  br i1 %cmp3.7.i, label %for.inc.6.i.if.end_crit_edge, label %for.inc.6.i.do.end_crit_edge

for.inc.6.i.do.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.inc.6.i.if.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %for.inc.6.i.do.end_crit_edge, %entry.do.end_crit_edge
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.157) #14
  %13 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lrck, align 4
  %mul = shl i32 %14, 6
  %mul7 = shl i32 %14, 8
  %call8 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %dai, i32 noundef 0, i32 noundef 0, i32 noundef %mul, i32 noundef %mul7) #11
  %15 = ptrtoint ptr %lrck to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lrck, align 4
  %mul10 = shl i32 %16, 8
  %call11 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %dai, i32 noundef 2, i32 noundef %mul10, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %for.inc.6.i.if.end_crit_edge, %for.inc.5.i.if.end_crit_edge, %for.inc.4.i.if.end_crit_edge, %for.inc.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %pre_div.0 = phi i32 [ 0, %do.end ], [ 6, %for.inc.5.i.if.end_crit_edge ], [ 5, %for.inc.4.i.if.end_crit_edge ], [ 4, %for.inc.3.i.if.end_crit_edge ], [ 3, %for.inc.2.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge ], [ 7, %for.inc.6.i.if.end_crit_edge ]
  %call12 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.161, i32 noundef %call12) #14
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
  %bclk = getelementptr inbounds %struct.rt1011_priv, ptr %5, i32 0, i32 7
  %21 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul22, ptr %bclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1011_hw_params.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1011_hw_params, %if.then27)) #11
          to label %do.body32 [label %if.then27], !srcloc !407

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1011_hw_params.__UNIQUE_ID_ddebug294, ptr noundef %23, ptr noundef nonnull @.str.163, i32 noundef %conv, i32 noundef %pre_div.0, i32 noundef %25) #11
  br label %do.body32

do.body32:                                        ; preds = %if.then27, %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt1011_hw_params.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt1011_hw_params, %if.then44)) #11
          to label %do.end50 [label %if.then44], !srcloc !407

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt1011_hw_params.__UNIQUE_ID_ddebug295, ptr noundef %27, ptr noundef nonnull @.str.164, i32 noundef %29, i32 noundef %pre_div.0, i32 noundef %31) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %do.end50.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %do.end50.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %33, %do.end50.if.then.i.i.i_crit_edge ], [ %36, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %34 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #11, !range !409
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #11
  %37 = add i32 %call1.i, -8
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %38)
  %39 = icmp ult i32 %38, 7
  br i1 %39, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %38 to i8
  %switch.shifted = lshr i8 93, %switch.maskindex
  %40 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %switch.lobit.not = icmp eq i8 %40, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %id75 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %41 = ptrtoint ptr %id75 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cond = icmp eq i32 %42, 0
  br i1 %cond, label %sw.bb76, label %do.end83

sw.bb76:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep154 = getelementptr inbounds [7 x i32], ptr @switch.table.rt1011_hw_params.167, i32 0, i32 %38
  %43 = ptrtoint ptr %switch.gep154 to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load155 = load i32, ptr %switch.gep154, align 4
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.rt1011_hw_params, i32 0, i32 %38
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load = load i32, ptr %switch.gep, align 4
  %shl77 = shl nuw nsw i32 %pre_div.0, 4
  %call78 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 273, i32 noundef 2016, i32 noundef %switch.load155) #11
  %call79 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 276, i32 noundef 119, i32 noundef %switch.load) #11
  %call87 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 112, i32 noundef %shl77) #11
  br label %cleanup

do.end83:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.146, i32 noundef %42) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %sw.bb76, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ -22, %do.end17 ], [ 0, %sw.bb76 ], [ -22, %do.end83 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

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
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 205)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 205)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !308, !310, !312, !314, !316, !318, !320, !322, !323, !324, !325, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !345, !347, !349, !351, !352, !353, !354, !356, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !371, !372, !374, !375, !376, !377, !378, !380, !381, !382, !384, !385, !387, !388, !390, !391, !393, !395}
!llvm.module.flags = !{!397, !398, !399, !400, !401, !402, !403, !404}
!llvm.ident = !{!405}

!0 = !{ptr @__initcall__kmod_snd_soc_rt1011__302_2492_rt1011_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_rt1011__302_2492_rt1011_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt1011.c", i32 2492, i32 1}
!2 = !{ptr @__exitcall_rt1011_i2c_driver_exit, !1, !"__exitcall_rt1011_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description303, !4, !"__UNIQUE_ID_description303", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/rt1011.c", i32 2494, i32 1}
!5 = !{ptr @__UNIQUE_ID_author304, !6, !"__UNIQUE_ID_author304", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt1011.c", i32 2495, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt1011.c", i32 2496, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rt1011.c", i32 2484, i32 11}
!12 = !{ptr @rt1011_i2c_driver, !13, !"rt1011_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rt1011.c", i32 2482, i32 26}
!14 = !{ptr @rt1011_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt1011.c", i32 2452, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/rt1011.c", i32 2455, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rt1011_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rt1011_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/rt1011.c", i32 2462, i32 3}
!27 = !{ptr @rt1011_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rt1011_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @rt1011_i2c_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/rt1011.c", i32 2467, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/rt1011.c", i32 2425, i32 32}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/rt1011.c", i32 2427, i32 32}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/rt1011.c", i32 2430, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rt1011_parse_dp.__UNIQUE_ID_ddebug301, !37, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!41 = !{ptr @rt1011_regmap, !42, !"rt1011_regmap", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/rt1011.c", i32 2182, i32 35}
!43 = !{ptr @rt1011_reg, !44, !"rt1011_reg", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/rt1011.c", i32 64, i32 33}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/rt1011.c", i32 2414, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rt1011_calibration_work._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @rt1011_calibration_work._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/rt1011.c", i32 2280, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rt1011_calibrate._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @rt1011_calibrate._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/rt1011.c", i32 2285, i32 2}
!58 = !{ptr @rt1011_calibrate._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rt1011_calibrate._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/rt1011.c", i32 2290, i32 2}
!62 = !{ptr @rt1011_calibrate._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rt1011_calibrate._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/rt1011.c", i32 2326, i32 4}
!66 = !{ptr @rt1011_calibrate._entry.27, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rt1011_calibrate._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/rt1011.c", i32 2335, i32 4}
!70 = !{ptr @rt1011_calibrate._entry.30, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rt1011_calibrate._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @init_list, !73, !"init_list", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/rt1011.c", i32 37, i32 34}
!74 = !{ptr @soc_component_dev_rt1011, !75, !"soc_component_dev_rt1011", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/rt1011.c", i32 2163, i32 46}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/rt1011.c", i32 1365, i32 2}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/rt1011.c", i32 1368, i32 2}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/rt1011.c", i32 1369, i32 2}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/rt1011.c", i32 1372, i32 2}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/rt1011.c", i32 1373, i32 2}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/rt1011.c", i32 1374, i32 2}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/rt1011.c", i32 1375, i32 2}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/rt1011.c", i32 1378, i32 2}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/rt1011.c", i32 1379, i32 2}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/rt1011.c", i32 1380, i32 2}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/rt1011.c", i32 1383, i32 2}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/rt1011.c", i32 1387, i32 2}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/rt1011.c", i32 1388, i32 2}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/rt1011.c", i32 1389, i32 2}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/rt1011.c", i32 1390, i32 2}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/rt1011.c", i32 1391, i32 2}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/rt1011.c", i32 1394, i32 2}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/rt1011.c", i32 1396, i32 2}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/rt1011.c", i32 1399, i32 2}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/rt1011.c", i32 1402, i32 2}
!116 = !{ptr @rt1011_snd_controls, !117, !"rt1011_snd_controls", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/rt1011.c", i32 1363, i32 38}
!118 = !{ptr @rt1011_din_source_enum, !119, !"rt1011_din_source_enum", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/rt1011.c", i32 986, i32 8}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/rt1011.c", i32 981, i32 2}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/rt1011.c", i32 982, i32 2}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/rt1011.c", i32 983, i32 2}
!126 = !{ptr @rt1011_din_source_select, !127, !"rt1011_din_source_select", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/rt1011.c", i32 980, i32 27}
!128 = !{ptr @rt1011_tdm1_l_dac1_enum, !129, !"rt1011_tdm1_l_dac1_enum", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/rt1011.c", i32 998, i32 8}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/rt1011.c", i32 996, i32 2}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/rt1011.c", i32 996, i32 11}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/rt1011.c", i32 996, i32 20}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/rt1011.c", i32 996, i32 29}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/rt1011.c", i32 996, i32 38}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/rt1011.c", i32 996, i32 47}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/rt1011.c", i32 996, i32 56}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/rt1011.c", i32 996, i32 65}
!146 = !{ptr @rt1011_tdm_l_ch_data_select, !147, !"rt1011_tdm_l_ch_data_select", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/rt1011.c", i32 995, i32 27}
!148 = !{ptr @rt1011_tdm2_l_dac1_enum, !149, !"rt1011_tdm2_l_dac1_enum", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/rt1011.c", i32 1000, i32 8}
!150 = !{ptr @rt1011_tdm1_adc1_dat_enum, !151, !"rt1011_tdm1_adc1_dat_enum", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/rt1011.c", i32 1003, i32 8}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/rt1011.c", i32 990, i32 2}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/rt1011.c", i32 990, i32 14}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/rt1011.c", i32 990, i32 21}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/rt1011.c", i32 990, i32 29}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/rt1011.c", i32 990, i32 37}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/rt1011.c", i32 990, i32 44}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/rt1011.c", i32 990, i32 52}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/rt1011.c", i32 991, i32 2}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/rt1011.c", i32 991, i32 14}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/rt1011.c", i32 991, i32 26}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/rt1011.c", i32 991, i32 41}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/rt1011.c", i32 991, i32 53}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/rt1011.c", i32 992, i32 2}
!178 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/rt1011.c", i32 992, i32 16}
!180 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/rt1011.c", i32 992, i32 31}
!182 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/rt1011.c", i32 992, i32 42}
!184 = !{ptr @rt1011_tdm_data_out_select, !185, !"rt1011_tdm_data_out_select", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/rt1011.c", i32 989, i32 27}
!186 = !{ptr @rt1011_tdm1_adc1_loc_enum, !187, !"rt1011_tdm1_adc1_loc_enum", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/rt1011.c", i32 1005, i32 8}
!188 = !{ptr @rt1011_tdm_adc1_1_enum, !189, !"rt1011_tdm_adc1_1_enum", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/rt1011.c", i32 1026, i32 8}
!190 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/rt1011.c", i32 1023, i32 2}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/rt1011.c", i32 1023, i32 9}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/rt1011.c", i32 1023, i32 16}
!196 = !{ptr @.str.85, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/rt1011.c", i32 1023, i32 23}
!198 = !{ptr @rt1011_tdm_adc_swap_select, !199, !"rt1011_tdm_adc_swap_select", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/rt1011.c", i32 1022, i32 27}
!200 = !{ptr @rt1011_tdm_adc2_1_enum, !201, !"rt1011_tdm_adc2_1_enum", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/rt1011.c", i32 1028, i32 8}
!202 = !{ptr @rt1011_adc_dout_mode_enum, !203, !"rt1011_adc_dout_mode_enum", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/rt1011.c", i32 1011, i32 8}
!204 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/rt1011.c", i32 1009, i32 2}
!206 = !{ptr @.str.87, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/rt1011.c", i32 1009, i32 12}
!208 = !{ptr @rt1011_adc_data_mode_select, !209, !"rt1011_adc_data_mode_select", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/rt1011.c", i32 1008, i32 27}
!210 = !{ptr @rt1011_tdm1_dout_len_enum, !211, !"rt1011_tdm1_dout_len_enum", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/rt1011.c", i32 1017, i32 8}
!212 = !{ptr @.str.88, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/rt1011.c", i32 1015, i32 2}
!214 = !{ptr @.str.89, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/rt1011.c", i32 1015, i32 9}
!216 = !{ptr @.str.90, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/rt1011.c", i32 1015, i32 16}
!218 = !{ptr @.str.91, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/rt1011.c", i32 1015, i32 23}
!220 = !{ptr @.str.92, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/rt1011.c", i32 1015, i32 30}
!222 = !{ptr @.str.93, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/rt1011.c", i32 1015, i32 37}
!224 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/rt1011.c", i32 1015, i32 44}
!226 = !{ptr @.str.95, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/rt1011.c", i32 1015, i32 51}
!228 = !{ptr @rt1011_tdm_adc_data_len_control, !229, !"rt1011_tdm_adc_data_len_control", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/rt1011.c", i32 1014, i32 27}
!230 = !{ptr @rt1011_tdm2_dout_len_enum, !231, !"rt1011_tdm2_dout_len_enum", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/rt1011.c", i32 1019, i32 8}
!232 = !{ptr @.str.96, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/rt1011.c", i32 1137, i32 2}
!234 = !{ptr @.str.97, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @rt1011_bq_drc_coeff_get._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @rt1011_bq_drc_coeff_get._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.98, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/rt1011.c", i32 1178, i32 2}
!239 = !{ptr @rt1011_bq_drc_coeff_put._entry, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @rt1011_bq_drc_coeff_put._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.99, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/rt1011.c", i32 1287, i32 3}
!243 = !{ptr @.str.100, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @rt1011_r0_load_mode_put._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @rt1011_r0_load_mode_put._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.101, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/rt1011.c", i32 1344, i32 3}
!248 = !{ptr @.str.102, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @rt1011_i2s_ref_put._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @rt1011_i2s_ref_put._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @rt1011_i2s_ref_enum, !252, !"rt1011_i2s_ref_enum", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/rt1011.c", i32 1318, i32 8}
!253 = !{ptr @.str.103, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/rt1011.c", i32 1315, i32 2}
!255 = !{ptr @.str.104, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/rt1011.c", i32 1315, i32 10}
!257 = !{ptr @.str.105, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/rt1011.c", i32 1315, i32 26}
!259 = !{ptr @rt1011_i2s_ref, !260, !"rt1011_i2s_ref", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/rt1011.c", i32 1314, i32 27}
!261 = !{ptr @.str.106, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/rt1011.c", i32 1459, i32 2}
!263 = !{ptr @.str.107, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/rt1011.c", i32 1461, i32 2}
!265 = !{ptr @.str.108, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/rt1011.c", i32 1463, i32 2}
!267 = !{ptr @.str.109, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/rt1011.c", i32 1466, i32 2}
!269 = !{ptr @.str.110, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/rt1011.c", i32 1468, i32 2}
!271 = !{ptr @.str.111, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/rt1011.c", i32 1470, i32 2}
!273 = !{ptr @.str.112, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/rt1011.c", i32 1473, i32 2}
!275 = !{ptr @.str.113, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/rt1011.c", i32 1475, i32 2}
!277 = !{ptr @.str.114, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/rt1011.c", i32 1477, i32 2}
!279 = !{ptr @.str.115, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/rt1011.c", i32 1479, i32 2}
!281 = !{ptr @.str.116, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/rt1011.c", i32 1481, i32 2}
!283 = !{ptr @.str.117, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/rt1011.c", i32 1483, i32 2}
!285 = !{ptr @.str.118, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/rt1011.c", i32 1485, i32 2}
!287 = !{ptr @.str.119, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/rt1011.c", i32 1487, i32 2}
!289 = !{ptr @.str.120, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/rt1011.c", i32 1489, i32 2}
!291 = !{ptr @.str.121, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/rt1011.c", i32 1491, i32 2}
!293 = !{ptr @.str.122, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/rt1011.c", i32 1493, i32 2}
!295 = !{ptr @.str.123, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/rt1011.c", i32 1495, i32 2}
!297 = !{ptr @.str.124, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/rt1011.c", i32 1498, i32 2}
!299 = !{ptr @.str.125, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/rt1011.c", i32 1500, i32 2}
!301 = !{ptr @.str.126, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/rt1011.c", i32 1502, i32 2}
!303 = !{ptr @.str.127, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/rt1011.c", i32 1505, i32 2}
!305 = !{ptr @.str.128, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/rt1011.c", i32 1509, i32 2}
!307 = !{ptr @.str.129, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.130, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/rt1011.c", i32 1511, i32 2}
!310 = !{ptr @.str.131, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/rt1011.c", i32 1513, i32 2}
!312 = !{ptr @.str.132, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/rt1011.c", i32 1515, i32 2}
!314 = !{ptr @.str.133, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/rt1011.c", i32 1520, i32 2}
!316 = !{ptr @rt1011_dapm_widgets, !317, !"rt1011_dapm_widgets", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/rt1011.c", i32 1458, i32 41}
!318 = !{ptr @rt1011_dapm_routes, !319, !"rt1011_dapm_routes", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/rt1011.c", i32 1523, i32 40}
!320 = !{ptr @.str.135, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/rt1011.c", i32 1761, i32 3}
!322 = !{ptr @.str.136, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @rt1011_set_component_sysclk._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @rt1011_set_component_sysclk._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.137, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/rt1011.c", i32 1769, i32 2}
!327 = !{ptr @rt1011_set_component_sysclk.__UNIQUE_ID_ddebug296, !326, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!328 = !{ptr @.str.138, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/rt1011.c", i32 1788, i32 3}
!330 = !{ptr @.str.139, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @rt1011_set_component_pll.__UNIQUE_ID_ddebug297, !329, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!332 = !{ptr @.str.140, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/rt1011.c", i32 1817, i32 3}
!334 = !{ptr @rt1011_set_component_pll._entry, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @rt1011_set_component_pll._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.142, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/rt1011.c", i32 1823, i32 3}
!338 = !{ptr @rt1011_set_component_pll._entry.141, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @rt1011_set_component_pll._entry_ptr.143, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.144, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/rt1011.c", i32 1828, i32 2}
!342 = !{ptr @rt1011_set_component_pll.__UNIQUE_ID_ddebug298, !341, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!343 = !{ptr @.str.145, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/rt1011.c", i32 2151, i32 11}
!345 = !{ptr @rt1011_dai, !346, !"rt1011_dai", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/rt1011.c", i32 2149, i32 34}
!347 = !{ptr @rt1011_aif_dai_ops, !348, !"rt1011_aif_dai_ops", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/rt1011.c", i32 2143, i32 37}
!349 = !{ptr @.str.146, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/rt1011.c", i32 1723, i32 3}
!351 = !{ptr @.str.147, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @rt1011_set_dai_fmt._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @rt1011_set_dai_fmt._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.148, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/rt1011.c", i32 1903, i32 3}
!356 = !{ptr @.str.149, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @rt1011_set_tdm_slot._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @rt1011_set_tdm_slot._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.151, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/rt1011.c", i32 1946, i32 3}
!361 = !{ptr @rt1011_set_tdm_slot._entry.150, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @rt1011_set_tdm_slot._entry_ptr.152, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.154, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/rt1011.c", i32 1954, i32 3}
!365 = !{ptr @rt1011_set_tdm_slot._entry.153, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @rt1011_set_tdm_slot._entry_ptr.155, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @rt1011_set_tdm_slot.__UNIQUE_ID_ddebug299, !368, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/rt1011.c", i32 2009, i32 4}
!369 = !{ptr @.str.156, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/rt1011.c", i32 2027, i32 4}
!371 = !{ptr @rt1011_set_tdm_slot.__UNIQUE_ID_ddebug300, !370, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!372 = !{ptr @.str.157, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/rt1011.c", i32 1585, i32 3}
!374 = !{ptr @.str.158, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @.str.159, !373, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @rt1011_hw_params._entry, !373, !"_entry", i1 false, i1 false}
!377 = !{ptr @rt1011_hw_params._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.161, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/rt1011.c", i32 1594, i32 3}
!380 = !{ptr @rt1011_hw_params._entry.160, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @rt1011_hw_params._entry_ptr.162, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.163, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/rt1011.c", i32 1602, i32 2}
!384 = !{ptr @rt1011_hw_params.__UNIQUE_ID_ddebug294, !383, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!385 = !{ptr @.str.164, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/rt1011.c", i32 1605, i32 2}
!387 = !{ptr @rt1011_hw_params.__UNIQUE_ID_ddebug295, !386, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!388 = !{ptr @rt1011_hw_params._entry.165, !389, !"_entry", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/rt1011.c", i32 1656, i32 3}
!390 = !{ptr @rt1011_hw_params._entry_ptr.166, !389, !"_entry_ptr", i1 false, i1 false}
!391 = distinct !{null, !392, !"pd", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/rt1011.c", i32 1561, i32 19}
!393 = !{ptr @rt1011_of_match, !394, !"rt1011_of_match", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/rt1011.c", i32 2196, i32 34}
!395 = !{ptr @rt1011_i2c_id, !396, !"rt1011_i2c_id", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/rt1011.c", i32 2211, i32 35}
!397 = !{i32 1, !"wchar_size", i32 2}
!398 = !{i32 1, !"min_enum_size", i32 4}
!399 = !{i32 8, !"branch-target-enforcement", i32 0}
!400 = !{i32 8, !"sign-return-address", i32 0}
!401 = !{i32 8, !"sign-return-address-all", i32 0}
!402 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!403 = !{i32 7, !"uwtable", i32 1}
!404 = !{i32 7, !"frame-pointer", i32 2}
!405 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!406 = !{!"auto-init"}
!407 = !{i64 2149018175, i64 2149018180, i64 2149018193, i64 2149018237, i64 2149018271, i64 2149018292}
!408 = !{i8 0, i8 2}
!409 = !{i32 0, i32 33}
